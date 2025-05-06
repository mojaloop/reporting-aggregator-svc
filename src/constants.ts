import { name, version } from '../package.json';

export const SERVICE_NAME = `${name}@${version}`;

export const INTERNAL_EVENTS = {
  serverState: 'serverState',
  peerJWS: 'peerJWS',
} as const;

export const HEALTH_STATUSES = {
  ok: 'OK',
  down: 'DOWN',
} as const;
