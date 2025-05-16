import mongoose from 'mongoose';
import { Knex, knex } from 'knex';
import { TransferAggregator } from '../../../src/domain/TransferAggregator';
import { TransactionModel, StateModel, SettlementModel } from '../../../src/schemas';
import { logger } from '../../../src/utils';
import { IAggDeps } from '../../../src/types';
import mysql from 'mysql2/promise';
import { exec } from 'child_process';
import { promisify } from 'util';
import { testData } from '../data/testData';

// Test configuration
const mysqlConfig = {
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'test_central_ledger',
  timezone: 'Z',
};

const mongoConfig = {
  host: 'localhost',
  port: 27017,
  user: 'root',
  password: 'root',
  database: 'admin',
};
const execPromise = promisify(exec);

async function importSqlDump(dumpFile: string) {
  try {
    const { stdout, stderr } = await execPromise(
      `docker exec -i integration-mysql-1 mysql -u root test_central_ledger < ./data/${dumpFile}`,
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
  });

  test('should process transferStateChange records from dump and insert 6 transfers into transaction collection', async () => {
    // Import SQL dump
    await importSqlDump('transfer_dump.sql');

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

  test('should process transferStateChange records from dump and insert 1 transfer into transaction collection', async () => {
    // Import SQL dump
    await importSqlDump('1_transfer_dump.sql');

    // Start aggregator
    aggregator.start();

    // Wait for processing (batchSize=2, allow enough time for 40 records)
    await new Promise((resolve) => setTimeout(resolve, 5000));

    // Stop aggregator
    await aggregator.stop();

    // Verify MongoDB transaction collection
    const transactions = await TransactionModel.find({ transferId: 'ab1c283a-760e-4bdd-b2c0-6d84a409f339' }).lean();
    expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

    // Compare the retrieved transaction with testData, excluding _id
    const retrievedTransaction = transactions[0];
    // Only use data without _id, as _id will differ
    // Not sure why retrievedTransaction doesn't have _id when spread but have _id when compared as it is
    const { ...transactionWithoutId } = retrievedTransaction;
    expect(transactionWithoutId).toMatchObject(testData);

    // Verify state collection
    const state = await StateModel.findOne({ process: 'transactions_process' }).lean();
    expect(state).toBeTruthy();
    expect(state!.lastId).toBeGreaterThanOrEqual(20); // Ensure all 40 transferStateChange records were processed
  }, 15000);

  test('should process transferStateChange records from dump and insert 0 transfers into transaction collection', async () => {
    // Import SQL dump
    await importSqlDump('no_transfer_dump.sql');

    // Start aggregator
    aggregator.start();

    // Wait for processing (batchSize=2, allow enough time for 40 records)
    await new Promise((resolve) => setTimeout(resolve, 5000));

    // Stop aggregator
    await aggregator.stop();

    // Verify MongoDB transaction collection
    const transactions = await TransactionModel.find().lean();
    expect(transactions).toHaveLength(0); // Expect exactly 0 transfers

    // Verify state collection
    const state = await StateModel.findOne({ process: 'transactions_process' }).lean();
    expect(state).toBeTruthy();
    expect(state!.lastId).toBeGreaterThanOrEqual(16); // Ensure all 40 transferStateChange records were processed
  }, 15000);
});
