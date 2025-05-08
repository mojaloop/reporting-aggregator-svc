/* eslint-disable-next-line @typescript-eslint/no-unused-vars */
import { HEALTH_STATUSES } from '../constants';

export type AppConfig = {
  LOG_LEVEL: string;
  REPORTING_MYSQL_DB: {
    HOST: string;
    PORT: number;
    USER: string;
    PASSWORD: string;
    SCHEMA: string;
  };
  REPORTING_MONGO_DB: {
    HOST: string;
    PORT: number;
    USER: string;
    PASSWORD: string;
    DATABASE: string;
  };
  BATCH_SIZE: number;
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
