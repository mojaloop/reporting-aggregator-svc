import { connect } from 'mongoose';
import config from '../config';
import { ConnectionString } from 'connection-string';

export async function initializeMongoClient(): Promise<void> {
  // @ts-ignore
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

  await connect(uri, {
    autoIndex: false,
    dbName: mongoConfig.DATABASE,
  });
}
