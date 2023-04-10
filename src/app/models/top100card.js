const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Top100card extends Model { }

Top100card.init(
    {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },
        id_top100genre: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'top100genres',
                key: 'id',
                onDelete: 'CASCADE'
            }
        },
        title: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        des: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        des1: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        des2: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    },
    {
        sequelize,
        modelName: 'top100card',
        timestamps: false,
    }
);

module.exports = Top100card;
