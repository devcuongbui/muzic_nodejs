const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Musiccategory extends Model { }

Musiccategory.init(
    {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true,
        },
        category: {
            type: DataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'categories',
                key: 'id_cate',
                onDelete: 'CASCADE'
            }
        },
        music: {
            type: DataTypes.INTEGER,
            allowNull: false,
        },
    },
    {
        sequelize,
        modelName: 'musiccategories',
        timestamps: false,
    }
);

module.exports = Musiccategory;
