import { Sequelize } from 'sequelize-typescript';
import { config } from './config/config';
import { FeedItem } from './models/FeedItem'
import { User } from './models/User'

export const sequelize = new Sequelize({
  'username': config.username,
  'password': config.password,
  'database': config.database,
  'host': config.host,

  'dialect': config.dialect,
  'storage': ':memory:',
});

(async () => {
  await sequelize.addModels([User, FeedItem])
  await sequelize.sync()
})();


