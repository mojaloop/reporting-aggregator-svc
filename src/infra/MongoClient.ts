import { connect } from 'mongoose';
import config from '../config';
import { ConnectionString } from 'connection-string';
import { logger } from '../utils';

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

  logger.debug(`Connecting to MongoDB with URI: ${uri}`);
  const safeUri = uri.replace(/(\/\/)(.*):(.*)@/, '$1****:****@');
  logger.info(`Connecting to MongoDB with URI: ${safeUri}`);

  await connect(uri, {
    autoIndex: false,
    dbName: mongoConfig.DATABASE,
  });
}
