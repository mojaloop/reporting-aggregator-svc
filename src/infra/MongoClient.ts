import mongoose from 'mongoose';
import Config from '../config';

export async function initializeMongoClient(): Promise<void> {
  await mongoose.connect(Config.get('mongo.uri'), {
    dbName: Config.get('mongo.dbName'),
  });
}
