const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Musicfavourite extends Model { }

Musicfavourite.init(
    {
        id_musicfavorite: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
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
    },
    {
        sequelize,
        modelName: 'musicfavourite',
        timestamps: false,
    }
);

module.exports = Musicfavourite;
