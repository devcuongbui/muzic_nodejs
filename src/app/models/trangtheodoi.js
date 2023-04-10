const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Trangtheodoi extends Model { }

Trangtheodoi.init({
    id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    bg: {
        type: DataTypes.STRING,
        allowNull: false
    },
}, {
    sequelize,
    modelName: 'trangtheodoi',
    timestamps: false
});

module.exports = Trangtheodoi;
