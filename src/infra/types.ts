/* eslint-disable-next-line @typescript-eslint/no-unused-vars */
import { HEALTH_STATUSES } from '../constants';

export type AppConfig = {
  LOG_LEVEL: string;
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
