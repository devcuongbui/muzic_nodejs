const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Musiccard extends Model { }

Musiccard.init(
    {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },
        bg: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        id_genre: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'musicalgenres',
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
        modelName: 'musiccard',
        timestamps: false,
    }
);

module.exports = Musiccard;
