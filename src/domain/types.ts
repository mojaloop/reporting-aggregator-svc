import { LogMethods, LogContext } from '../utils/types';

export interface IAggregator {
  start: () => Promise<void>;
  stop: () => Promise<void>;
  getDeps: () => IAggDeps; // for testing
}

export type IAggDeps = {
  // TODO: mysql and mongo deps here
  logger: ILogger;
};

export interface ILogger extends LogMethods {
  child(context?: LogContext): ILogger;
}

