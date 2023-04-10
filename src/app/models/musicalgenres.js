const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Musicalgenre extends Model {}

Musicalgenre.init(
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
    modelName: 'musicalgenre',
    timestamps: false,
  }
);

module.exports = Musicalgenre;
