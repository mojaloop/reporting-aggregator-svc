import { IAggDeps, TransferAggregator } from './domain';
import { startingProcess, logger } from './utils';
import { StateModel, TransactionModel } from './schemas';
import { initializeMySQLClient, initializeMongoClient } from './infra';
import config from './config';
import mongoose from 'mongoose';
import { Knex } from 'knex';

let knexClient: Knex;
let transferAggregator: TransferAggregator;
// FX Transfer Aggregator
// Settlement Aggregator

const start = async () => {
  await initializeMongoClient();
  knexClient = initializeMySQLClient();

  const deps: IAggDeps = {
    knexClient,
    transactionModel: TransactionModel,
    stateModel: StateModel,
    batchSize: config.get('APP.BATCH_SIZE'),
    logger,
  };
  transferAggregator = new TransferAggregator(deps);
  await transferAggregator.start();
  // TODO: Same with FxTransferAggregator and SettlementAggregator
};

const stop = async () => {
  try {
    await transferAggregator?.stop();
    await knexClient?.destroy();
    logger.info('MySQL connection closed');
    await mongoose.disconnect();
    logger.info('MongoDB connection closed');
  } catch (error) {
    logger.error('Error during shutdown', error);
    throw error;
  }
  // TODO: Same with FxTransferAggregator and SettlementAggregator
};

startingProcess(start, stop);
