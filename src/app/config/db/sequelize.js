const Sequelize = require('sequelize');

const sequelize = new Sequelize('user_music', 'root', '', {
  host: 'localhost',
  dialect: 'mysql'
});

module.exports = sequelize;