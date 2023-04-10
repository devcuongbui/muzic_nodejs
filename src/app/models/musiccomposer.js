const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Musiccomposer extends Model { }

Musiccomposer.init(
    {
        id : {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },
        composer: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'composer',
                key: 'id_composer',
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
        modelName: 'musiccomposers',
        timestamps: false,
    }
);

module.exports = Musiccomposer;
