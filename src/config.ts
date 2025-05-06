import convict from 'convict';
import { AppConfig } from './infra';

const config = convict<AppConfig>({

  LOG_LEVEL: {
    doc: 'Logger level',
    format: String, // todo: use LogLevel type
    default: 'info',
    env: 'LOG_LEVEL',
  },

});

config.validate({ allowed: 'strict' });

export default config;
