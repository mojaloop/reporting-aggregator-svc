/* eslint-disable-next-line @typescript-eslint/no-unused-vars */
import { HEALTH_STATUSES } from '../constants';

export type AppConfig = {
  LOG_LEVEL: string;
  mysql: {
    host: string;
    port: number;
    user: string;
    password: string;
    database: string;
    connectionLimit: number;
  };
  mongo: {
    uri: string;
    dbName: string;
  };
  app: {
    batchSize: number;
  };
};

type Status = (typeof HEALTH_STATUSES)[keyof typeof HEALTH_STATUSES];

export type HealthcheckDetails = {
  isReady: boolean;
};

export type HealthcheckState = {
  status: Status;
  details: HealthcheckDetails; // or rename to state?
  startTime: string; // ISO date string
  versionNumber: string;
};
