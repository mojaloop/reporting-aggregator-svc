import { connect } from 'mongoose';
import config from '../config';
import { ConnectionString } from 'connection-string';
import { logger } from '../utils';

/**
 * Initializes the MongoDB client connection using Mongoose.
 * The connection string is constructed from the configuration settings.
 *
 * @returns {Promise<void>} A promise that resolves when the connection is established.
 */
export async function initializeMongoClient(): Promise<void> {
  const mongoConfig = config.get('REPORTING_MONGO_DB');
  const csMongoDBObj = new ConnectionString();
  csMongoDBObj.setDefaults({
    protocol: 'mongodb',
    hosts: [{ name: mongoConfig.HOST, port: mongoConfig.PORT }],
    user: mongoConfig.USER,
    password: mongoConfig.PASSWORD,
    path: [mongoConfig.DATABASE],
    params: mongoConfig.PARAMS
  });

  const uri = csMongoDBObj.toString();
  const safeUri = uri.replace(/(\/\/)(.*):(.*)@/, '$1****:****@');
  logger.info(`Connecting to MongoDB with URI: ${safeUri}`);

  // TLS options
  const tlsEnabled = !!mongoConfig.SSL_ENABLED;
  const tlsAllowInvalidCertificates = mongoConfig.SSL_VERIFY === false;
  let tlsCA: Buffer | undefined = undefined;
  if (tlsEnabled && mongoConfig.SSL_CA) {
    // mongoConfig.SSL_CA is expected to be the contents of the CA file (string)
    tlsCA = Buffer.from(mongoConfig.SSL_CA, 'utf-8');
  }

  await connect(uri, {
    autoIndex: false,
    dbName: mongoConfig.DATABASE,
    tls: tlsEnabled,
    tlsAllowInvalidCertificates,
    ...(tlsCA ? { tlsCA: [tlsCA] } : {})
  });
}
