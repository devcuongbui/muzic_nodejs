const Sequelize = require('sequelize');

const sequelize = new Sequelize('music_database', 'root', '', {
  host: 'localhost',
  dialect: 'mysql'
});

module.exports = sequelize;