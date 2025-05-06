import { IAggregator, IAggDeps } from './types';

export class TransferAggregator implements IAggregator {
  constructor(private readonly deps: IAggDeps) {
    
  }

  async start(): Promise<void> {
    // Start service here
    this.deps.logger.info('Transfer Aggregator is started');
  }

  async stop(): Promise<void> {
    // Stop service here
    this.deps.logger.info('Transfer Aggregator is stopped');
  }

  getDeps() {
    return this.deps;
  }

}
