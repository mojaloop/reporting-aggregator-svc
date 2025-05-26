import convict from 'convict';
import { AppConfig } from './infra';

const config = convict<AppConfig>({
  LOG_LEVEL: {
    doc: 'Logger level',
    format: String, // todo: use LogLevel type
    default: 'info',
    env: 'LOG_LEVEL',
  },
  REPORTING_MYSQL_DB: {
    HOST: {
      doc: 'The Hostname/IP address of database',
      format: '*',
      default: 'localhost',
      env: 'REPORTING_MYSQL_DB_HOST',
    },
    PORT: {
      doc: 'The port of database',
      format: 'port',
      default: 3306,
      env: 'REPORTING_MYSQL_DB_PORT',
    },
    USER: {
      doc: 'The username for database',
      format: '*',
      default: 'central_ledger',
      env: 'REPORTING_MYSQL_DB_USER',
    },
    PASSWORD: {
      doc: 'The password for database',
      format: '*',
      default: 'password',
      env: 'REPORTING_MYSQL_DB_PASSWORD',
      sensitive: true,
    },
    SCHEMA: {
      doc: 'The schema in database',
      format: '*',
      default: 'central_ledger',
      env: 'REPORTING_MYSQL_DB_SCHEMA',
    },
  },
  REPORTING_MONGO_DB: {
    HOST: {
      doc: 'The Hostname/IP address of database',
      format: '*',
      default: 'localhost',
      env: 'REPORTING_MONGO_DB_HOST',
    },
    PORT: {
      doc: 'The port number of database',
      format: 'port',
      default: 27017,
      env: 'REPORTING_MONGO_DB_PORT',
    },
    USER: {
      doc: 'The user of database',
      format: '*',
      default: 'test',
      env: 'REPORTING_MONGO_DB_USER',
    },
    PASSWORD: {
      doc: 'The password of database',
      format: '*',
      default: 'test123',
      env: 'REPORTING_MONGO_DB_PASSWORD',
      sensitive: true,
    },
    DATABASE: {
      doc: 'The database name in database',
      format: '*',
      default: 'admin',
      env: 'REPORTING_MONGO_DB_DATABASE',
    },
  },
  BATCH_SIZE: {
    doc: 'Number of transferStateChangeIds to process per batch',
    format: Number,
    default: 10000,
    env: 'BATCH_SIZE',
  },
  LOOP_TIMEOUT: {
    doc: 'Loop timeout (in milliseconds) before the next states are fetched.',
    format: Number,
    default: 5000,
    env: 'LOOP_TIMEOUT',
  },
});

config.validate({ allowed: 'strict' });

export default config;
