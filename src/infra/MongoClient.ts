import { connect } from 'mongoose';
import config from '../config';

export async function initializeMongoClient(): Promise<void> {
  const mongoConfig = config.get('REPORTING_MONGO_DB');
  console.log('mongoConfig', mongoConfig);
  const userPass =
    mongoConfig.USER && mongoConfig.PASSWORD
      ? `${encodeURIComponent(mongoConfig.USER)}:${encodeURIComponent(mongoConfig.PASSWORD)}@`
      : '';
  const uri = `mongodb://${userPass}${mongoConfig.HOST}:${mongoConfig.PORT}/${mongoConfig.DATABASE}`;

  await connect(uri, {
    autoIndex: false,
    dbName: mongoConfig.DATABASE,
  });
}
