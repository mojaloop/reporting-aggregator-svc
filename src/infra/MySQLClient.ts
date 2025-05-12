import config from '../config';
import knex, { Knex } from 'knex';

export function initializeMySQLClient(): Knex {
  return knex({
    client: 'mysql2',
    connection: {
      host: config.get('REPORTING_MYSQL_DB.HOST'),
      port: config.get('REPORTING_MYSQL_DB.PORT'),
      user: config.get('REPORTING_MYSQL_DB.USER'),
      password: config.get('REPORTING_MYSQL_DB.PASSWORD'),
      database: config.get('REPORTING_MYSQL_DB.SCHEMA'),
    },
    pool: { min: 10, max: 10 }, // Default pool size, as no DB_CONNECTION_LIMIT provided
  });
}
