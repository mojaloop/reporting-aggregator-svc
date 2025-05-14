import { IAggDeps, TransferAggregator } from './domain';
import { startingProcess, logger } from './utils';
import { SettlementModel, StateModel, TransactionModel } from './schemas';
import { initializeMySQLClient, initializeMongoClient } from './infra';
import config from './config';
import mongoose from 'mongoose';
import { Knex } from 'knex';
import { SettlementAggregator } from './domain/SettlementAggregator';
import { FxTransferAggregator } from './domain/FxTransferAggregator';

let knexClient: Knex;
let transferAggregator: TransferAggregator;
let settlementAggregator: SettlementAggregator;
let fxTransferAggregator: FxTransferAggregator;

const start = async () => {
  await initializeMongoClient();
  knexClient = initializeMySQLClient();

  const deps: IAggDeps = {
    knexClient,
    transactionModel: TransactionModel,
    stateModel: StateModel,
    settlementModel: SettlementModel,
    batchSize: config.get('BATCH_SIZE'),
    timeout: config.get('LOOP_TIMEOUT'),
    logger,
  };
  transferAggregator = new TransferAggregator(deps);
  settlementAggregator = new SettlementAggregator(deps);
  fxTransferAggregator = new FxTransferAggregator(deps);
  await Promise.all([transferAggregator.start(), settlementAggregator.start(), fxTransferAggregator.start()]);
};

const stop = async () => {
  try {
    await Promise.all([transferAggregator?.stop(), settlementAggregator?.stop(), fxTransferAggregator?.stop()]);
    await knexClient?.destroy();
    logger.info('MySQL connection closed');
    await mongoose.disconnect();
    logger.info('MongoDB connection closed');
  } catch (error) {
    logger.error('Error during shutdown', error);
    throw error;
  }
};

startingProcess(start, stop);
