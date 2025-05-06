import config from './config';
import { TransferAggregator } from './domain';
import { startingProcess } from './utils';

let transferAggregator: TransferAggregator;
// FX Transfer Aggregator
// Settlement Aggregator

const start = async () => {
  transferAggregator = new TransferAggregator(config);
  await transferAggregator.start();
  // TODO: Same with FxTransferAggregator and SettlementAggregator
};

const stop = async () => {
  await transferAggregator?.stop();
  // TODO: Same with FxTransferAggregator and SettlementAggregator
};

startingProcess(start, stop);
