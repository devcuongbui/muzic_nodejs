const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Music extends Model { }

Music.init(
    {
        id_music: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
            autoIncrement: true
        },
        poster: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'users',
                key: 'id_user',
                onDelete: 'CASCADE'
            }
        },
        singer_name: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        date_add: {
            type: DataTypes.DATE,
            allowNull: false,
        },
        duration: {
            type: DataTypes.TIME,
            allowNull: false,
        },
        image: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        src: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    },
    {
        sequelize,
        modelName: 'music',
        timestamps: false,
    }
);

module.exports = Music;
