const { Model, DataTypes } = require('sequelize');
const sequelize = require('../config/db/sequelize');

class Category extends Model {}

Category.init({
  id_cate: {
    type: DataTypes.INTEGER,
    autoIncrement: true,
    primaryKey: true
  },
  name_cate: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  sequelize,
  modelName: 'category',
  timestamps: false
});

module.exports = Category;
