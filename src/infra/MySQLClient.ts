import knex, { Knex } from 'knex';
import Config from '../config';

export function initializeMySQLClient(): Knex {
  return knex({
    client: 'mysql2',
    connection: Config.get('mysql'),
    pool: { min: 0, max: Config.get('mysql.connectionLimit') },
  });
}
