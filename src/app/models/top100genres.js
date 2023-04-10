const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Top100genres extends Model {}

Top100genres.init(
  {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: 'top100genres',
    timestamps: false,
  }
);

module.exports = Top100genres;
