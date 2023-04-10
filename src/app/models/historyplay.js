const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Historyplay extends Model { }

Historyplay.init(
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    iuser: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'users',
        key: 'id_user',
        onDelete: 'CASCADE'
      }
    },
    music: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: 'music',
        key: 'id_music',
        onDelete: 'CASCADE'
      }
    },
    date_listen: {
      type: DataTypes.DATE,
      allowNull: false,
      defaultValue: DataTypes.NOW
    }
  },
  {
    sequelize,
    modelName: 'historyplay',
    timestamps: false
  }
);

module.exports = Historyplay;
