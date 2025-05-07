import convict from 'convict';
import { AppConfig } from './infra';

const config = convict<AppConfig>({
  LOG_LEVEL: {
    doc: 'Logger level',
    format: String, // todo: use LogLevel type
    default: 'info',
    env: 'LOG_LEVEL',
  },
  mysql: {
    host: {
      doc: 'MySQL host',
      format: String,
      default: 'localhost',
      env: 'MYSQL_HOST',
    },
    port: {
      doc: 'MySQL port',
      format: 'port',
      default: 3306,
      env: 'MYSQL_PORT',
    },
    user: {
      doc: 'MySQL user',
      format: String,
      default: 'central_ledger',
      env: 'MYSQL_USER',
    },
    password: {
      doc: 'MySQL password',
      format: String,
      default: 'password',
      env: 'MYSQL_PASSWORD',
      sensitive: true,
    },
    database: {
      doc: 'MySQL database',
      format: String,
      default: 'central_ledger',
      env: 'MYSQL_DATABASE',
    },
    connectionLimit: {
      doc: 'MySQL connection pool limit',
      format: Number,
      default: 4,
    },
  },
  mongo: {
    uri: {
      doc: 'MongoDB URI',
      format: String,
      default: 'mongodb://localhost:27017',
      env: 'MONGO_URI',
    },
    dbName: {
      doc: 'MongoDB database name',
      format: String,
      default: 'reporting',
      env: 'MONGO_DB',
    },
  },
  app: {
    batchSize: {
      doc: 'Number of transferStateChangeIds to process per batch',
      format: Number,
      default: 10000,
      env: 'BATCH_SIZE',
    },
  },
});

config.validate({ allowed: 'strict' });

export default config;
