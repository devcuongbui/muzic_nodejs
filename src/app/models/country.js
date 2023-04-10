const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Country extends Model {}

Country.init(
  {
    id_country: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    countryname: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    sequelize,
    modelName: 'country',
    timestamps: false,
  }
);

module.exports = Country;
