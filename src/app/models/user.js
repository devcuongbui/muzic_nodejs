const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class User extends Model { }

User.init(
  {
    id_user: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    phone: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    email: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    password: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    country: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'country',
        key: 'id_country',
        onDelete: 'CASCADE'
      }
    },
  },
  {
    sequelize,
    modelName: 'users',
    timestamps: false,
  }
);

module.exports = User;
