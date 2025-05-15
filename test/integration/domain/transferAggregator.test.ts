import mongoose from 'mongoose';
import { Knex, knex } from 'knex';
import { TransferAggregator } from '../../../src/domain/TransferAggregator';
import { TransactionModel, StateModel, SettlementModel } from '../../../src/schemas';
import { logger } from '../../../src/utils';
import { IAggDeps } from '../../../src/types';
import mysql from 'mysql2/promise';
import { exec } from 'child_process';
import { promisify } from 'util';

// Test configuration
const mysqlConfig = {
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'test_central_ledger',
};

const mongoConfig = {
  host: 'localhost',
  port: 27017,
  user: 'root',
  password: 'root',
  database: 'admin',
};
const execPromise = promisify(exec);

async function importSqlDump() {
  try {
    const { stdout, stderr } = await execPromise(
      'docker exec -i integration-mysql-1 mysql -u root test_central_ledger < ./data/transfer_dump.sql'
    );
    logger.info('SQL dump imported successfully:', stdout);
    if (stderr) logger.warn('Warnings:', stderr);
  } catch (err) {
    logger.error('Error importing SQL dump:', err);
  }
}

describe('TransferAggregator Integration Tests with Dockerized Databases', () => {
  let mysqlConnection: mysql.Pool;
  let knexClient: Knex;
  let deps: IAggDeps;
  let aggregator: TransferAggregator;

  beforeAll(async () => {
    // Connect to MongoDB
    const mongoUri = `mongodb://${mongoConfig.user}:${mongoConfig.password}@${mongoConfig.host}:${mongoConfig.port}/${mongoConfig.database}`;
    await mongoose.connect(mongoUri, {
      dbName: mongoConfig.database,
      autoIndex: false,
    });

    // Initialize Knex
    knexClient = knex({
      client: 'mysql2',
      connection: mysqlConfig,
      pool: { min: 10, max: 10 },
    });

    mysqlConnection = mysql.createPool({ ...mysqlConfig, multipleStatements: true });

    // Mock config
    const mockConfig = { batchSize: 20, timeout: 1000 };

    // Setup dependencies
    deps = {
      knexClient,
      transactionModel: TransactionModel,
      stateModel: StateModel,
      settlementModel: SettlementModel,
      batchSize: mockConfig.batchSize,
      timeout: mockConfig.timeout,
      logger,
    };

    aggregator = new TransferAggregator(deps);
  });

  afterAll(async () => {
    // Cleanup
    await mongoose.disconnect();
    await knexClient.destroy();
    await mysqlConnection.end();
  });

  beforeEach(async () => {
    // Clear MongoDB
    await TransactionModel.deleteMany({});
    await StateModel.deleteMany({});
    await SettlementModel.deleteMany({});

    // Reset MySQL database
    const rootConnection = mysql.createPool({
      host: mysqlConfig.host,
      port: mysqlConfig.port,
      user: 'root',
      password: '',
    });
    await rootConnection.query(`DROP DATABASE IF EXISTS ${mysqlConfig.database}`);
    await rootConnection.query(`CREATE DATABASE ${mysqlConfig.database}`);
    await rootConnection.end();

    // Import SQL dump
    await importSqlDump();
  });

  test('should process transferStateChange records from dump and insert 6 transfers into transaction collection', async () => {
    // Start aggregator
    aggregator.start();

    // Wait for processing (batchSize=2, allow enough time for 40 records)
    await new Promise((resolve) => setTimeout(resolve, 5000));

    // Stop aggregator
    await aggregator.stop();

    // Verify MongoDB transaction collection
    const transactions = await TransactionModel.find().lean();
    expect(transactions).toHaveLength(6); // Expect exactly 6 transfers

    // Verify state collection
    const state = await StateModel.findOne({ process: 'transactions_process' }).lean();
    expect(state).toBeTruthy();
    expect(state!.lastId).toBeGreaterThanOrEqual(40); // Ensure all 40 transferStateChange records were processed
  }, 15000);
});
