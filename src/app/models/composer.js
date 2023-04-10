const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Composer extends Model { }

Composer.init({
    id_composer: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
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
}, {
    sequelize,
    modelName: 'composer',
    timestamps: false
});

module.exports = Composer;
