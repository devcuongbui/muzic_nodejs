// const Category = require('../models/category');
const Music = require('../models/music');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;
class SiteController {
  // // [GET] /
  // async index(req, res, next) {
  //   try {
  //     const categories = await Category.findAll({
  //       attributes: ['id_cate', 'name_cate'],
  //       raw: true // add the raw option to return plain objects
  //     });
  //     console.log(categories);
  //     res.render('main', {
  //       categories
  //     });
  //   } catch (err) {
  //     console.log('Error executing query: ', err);
  //     next(err);
  //   }
  // }
  index(req, res, next) {
    // res.render('TrangChu', { name }, { layout: 'TrangChu' });
  }
  async show_music_trangchu(req, res, next) {
    try {
      let music = [];
      if (req.query.name) {
        music = await Music.findAll({
          where: {
            name: {
              [Op.like]: `%${req.query.name}%`
            }
          },
          attributes: ['id_music', 'poster', 'singer_name', 'name', 'date_add', 'duration', 'image', 'src'],
          raw: true
        });
      } else {
        music = await Music.findAll({
          attributes: ['id_music', 'poster', 'singer_name', 'name', 'date_add', 'duration', 'image', 'src'],
          raw: true
        });
      }
      res.render('TrangChu', {
        layout: 'TrangChu',
        music
      });
    } catch (err) {
      console.log('Error executing query: ', err);
      next(err);
    }
  }
}

module.exports = new SiteController();