const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Musicsinger extends Model { }

Musicsinger.init(
    {
        id_musicfavorite: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },
        singer: {
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
    },
    {
        sequelize,
        modelName: 'musicsinger',
        timestamps: false,
    }
);

module.exports = Musicsinger;
