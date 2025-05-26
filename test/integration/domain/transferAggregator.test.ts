import mongoose from 'mongoose';
import { Knex, knex } from 'knex';
import { TransferAggregator } from '../../../src/domain/TransferAggregator';
import { FxTransferAggregator } from '../../../src/domain/FxTransferAggregator';
import { SettlementAggregator } from '../../../src/domain/SettlementAggregator';
import { TransactionModel, StateModel, SettlementModel } from '../../../src/schemas';
import { logger } from '../../../src/utils';
import { IAggDeps } from '../../../src/types';
import mysql from 'mysql2/promise';
import { exec } from 'child_process';
import { promisify } from 'util';
import { happyTestData } from '../data/happy_path_test_data.js';
import { unhappyTestData } from '../data/unhappy_path_test_data.js';

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

describe('Aggregator Service Integration Tests with Dockerized Databases', () => {
  let mysqlConnection: mysql.Pool;
  let knexClient: Knex;
  let deps: IAggDeps;
  let aggregator: TransferAggregator;
  let fxAggregator: FxTransferAggregator;
  let settlementAggregator: SettlementAggregator;

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
    const mockConfig = { batchSize: 1000, timeout: 1000 };

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
    settlementAggregator = new SettlementAggregator(deps);
    fxAggregator = new FxTransferAggregator(deps);
  }, 5000);

  afterAll(async () => {
    // Cleanup
    await mongoose.disconnect();
    await knexClient.destroy();
    await mysqlConnection.end();
  });

  // Compare the retrieved transaction with testData, excluding _id
  // Only use data without _id, as _id will differ
  // Not sure why retrievedTransaction doesn't have _id when spread but have _id when compared as it is

  describe('Tests for central_ledger_dump.sql', () => {
    beforeAll(async () => {
      // Transfer aggregator uses batching, if the size of the batch is small e.g <100,
      // It can take time to process the data, 15 sec is alloted for now to make sure
      // all transfers are processed by the service (increase the time if batch size reduces).
      await importSqlDump('central_ledger_dump.sql');
      aggregator.start();
      await new Promise((resolve) => setTimeout(resolve, 15000));
      await aggregator.stop();
      // 5 sec as fxAggregator and settlementAggregator don't depend on batch size
      // Only hardware can be a constraint for these.
      fxAggregator.start();
      await new Promise((resolve) => setTimeout(resolve, 5000));
      await fxAggregator.stop();

      settlementAggregator.start();
      await new Promise((resolve) => setTimeout(resolve, 5000));
      await settlementAggregator.stop();
    }, 40000);

    afterAll(async () => {
      await TransactionModel.deleteMany({});
      await StateModel.deleteMany({});
      await SettlementModel.deleteMany({});
    });

    test('should process single currency transfer with type SEND', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVVZ3VGJNN1BY4NK6NWG1FED' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(happyTestData.single_currency_transfer_type_send.transaction);
    }, 15000);

    test('should process single currency transfer with type SEND with settlement', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVVZ3X9BFSJH1BVHNCZKE14R' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(
        happyTestData.single_currency_transfer_type_send_with_settlement.transaction,
      );

      const settlement = await SettlementModel.find({ settlementId: 1 }).lean();
      expect(settlement).toHaveLength(1);

      const retrievedSettlement = settlement[0];
      const { ...settlementWithoutId } = retrievedSettlement;
      expect(settlementWithoutId).toMatchObject(
        happyTestData.single_currency_transfer_type_send_with_settlement.settlement,
      );
    }, 15000);

    test('should process single currency transfer with type RECEIVE', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVVYYNASE5P0RW5XK8TNQYT7' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(happyTestData.single_currency_transfer_type_receive.transaction);
    }, 15000);

    test('should process single currency transfer with type RECEIVE with settlement', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVVZ9XD7C0YR5E4QZZBN60Z8' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(
        happyTestData.single_currency_transfer_type_receive_with_settlement.transaction,
      );

      const settlement = await SettlementModel.find({ settlementId: 2 }).lean();
      expect(settlement).toHaveLength(1);

      const retrievedSettlement = settlement[0];
      expect({ ...retrievedSettlement }).toMatchObject(
        happyTestData.single_currency_transfer_type_receive_with_settlement.settlement,
      );
    }, 15000);

    test('should process fx transfer with type SEND', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVVZDGPZ2NQGA7ZJB7XCDK09' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(happyTestData.fxTransfer_type_send.transaction);
    }, 15000);

    test('should process fx transfer with type RECEIVE', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVW42Z5QTKBHK30VGJ05GGAP' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(happyTestData.fxTransfer_type_receive.transaction);
    }, 15000);

    test('should process single currency transfer with ABORT', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVVZ0SBFX5M7B5M1FQTZ2DSE' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(unhappyTestData.single_currency_abort.transaction);
    }, 15000);

    test('should process single currency transfer with TIMEOUT ', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JVVZ0FQYDR1E597MMG006A34' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(unhappyTestData.single_currency_timeout.transaction);
    }, 15000);
  });

  describe('Tests for central_ledger_dump_FxSettlements.sql', () => {
    beforeAll(async () => {
      // Transfer aggregator uses batching, if the size of the batch is small e.g <100,
      // It can take time to process the data, 15 sec is alloted for now to make sure
      // all transfers are processed by the service (increase the time if batch size reduces).
      await importSqlDump('central_ledger_dump_FxSettlements.sql');
      aggregator.start();
      await new Promise((resolve) => setTimeout(resolve, 15000));
      await aggregator.stop();
      // 5 sec as fxAggregator and settlementAggregator don't depend on batch size
      // Only hardware can be a constraint for these.
      fxAggregator.start();
      await new Promise((resolve) => setTimeout(resolve, 5000));
      await fxAggregator.stop();

      settlementAggregator.start();
      await new Promise((resolve) => setTimeout(resolve, 5000));
      await settlementAggregator.stop();
    }, 40000);

    afterAll(async () => {
      await TransactionModel.deleteMany({});
      await StateModel.deleteMany({});
      await SettlementModel.deleteMany({});
    });

    test('should process fx transfer with type SEND with settlement', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JW5D7N1M78WRSCN5BZGC8NYW' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(happyTestData.fxTransfer_type_send_with_settlement.transaction);

      const settlement = await SettlementModel.find({ settlementId: 1 }).lean();
      expect(settlement).toHaveLength(1);

      const retrievedSettlement = settlement[0];
      expect({ ...retrievedSettlement }).toMatchObject(happyTestData.fxTransfer_type_send_with_settlement.settlement);
    }, 15000);

    test('should process fx transfer with type RECEIVE with settlement', async () => {
      const transactions = await TransactionModel.find({ transferId: '01JW5DK5AV5YPTN3P37R27FEHJ' }).lean();
      expect(transactions).toHaveLength(1); // Expect exactly 1 transfer

      const retrievedTransaction = transactions[0];
      const { ...transactionWithoutId } = retrievedTransaction;
      expect(transactionWithoutId).toMatchObject(happyTestData.fxTransfer_type_receive_with_settlement.transaction);

      const settlement = await SettlementModel.find({ settlementId: 1 }).lean();
      expect(settlement).toHaveLength(1);

      const retrievedSettlement = settlement[0];
      expect({ ...retrievedSettlement }).toMatchObject(
        happyTestData.fxTransfer_type_receive_with_settlement.settlement,
      );
    }, 15000);
  });

  describe('Tests for central_ledger_dump_2.sql', () => {
    // TODO:
    beforeAll(async () => { });

    // afterAll(async () => {
    //   await TransactionModel.deleteMany({});
    //   await StateModel.deleteMany({});
    //   await SettlementModel.deleteMany({});
    // });
    test('should process fx transfer with TIMEOUT', async () => {
      // TODO
    }, 15000);

    test('should process fx transfer with ABORT', async () => {
      // TODO
    }, 15000);
  });
});
