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
    ADDITIONAL_CONNECTION_OPTIONS?: Record<string, unknown>
  };
  REPORTING_MONGO_DB: {
    HOST: string;
    PORT: number;
    USER: string;
    PASSWORD: string;
    DATABASE: string;
    PARAMS: Record<string, unknown>; // Additional parameters for MongoDB connection
    SSL_ENABLED?: boolean; // Optional, defaults to false
    SSL_VERIFY?: boolean; // Optional, defaults to true
    SSL_CA_FILE_PATH?: string; // Optional, CA certificate file path
  };
  BATCH_SIZE: number;
  LOOP_TIMEOUT: number;
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
