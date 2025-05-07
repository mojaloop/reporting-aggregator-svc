import { IAggDeps, TransferAggregator } from './domain';
import { startingProcess, logger } from './utils';
import { StateModel, TransactionModel } from './schemas';
import { initializeMySQLClient, initializeMongoClient } from './infra';
import config from './config';

let transferAggregator: TransferAggregator;
// FX Transfer Aggregator
// Settlement Aggregator

const start = async () => {
  await initializeMongoClient();
  const knexClient = initializeMySQLClient();

  const deps: IAggDeps = {
    knexClient,
    transactionModel: TransactionModel,
    stateModel: StateModel,
    batchSize: config.get('app.batchSize'),
    logger,
  };
  transferAggregator = new TransferAggregator(deps);
  await transferAggregator.start();
  // TODO: Same with FxTransferAggregator and SettlementAggregator
};

const stop = async () => {
  await transferAggregator?.stop();
  // TODO: Same with FxTransferAggregator and SettlementAggregator
};

startingProcess(start, stop);
