const User = require('../models/user');
const Trangtheodoi = require('../models/trangtheodoi');
const Music = require('../models/music');
const Historyplay = require('../models/historyplay');
const Musiccategory = require('../models/musiccategory');
const Musicalgenres = require('../models/musicalgenres');
const Musiccard = require('../models/musiccard');
const Composer = require('../models/composer');
const Musiccomposer = require('../models/musiccomposer');
const Musicfavourite = require('../models/musicfavourite');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

class adminController {

  async add_trangtheodoi(req, res, next) {
    const { bg } = req.body;

    // Validate user input
    if (!bg) {
      return res.status(400).json({ error: 'All fields are required.' });
    }

    // Create new user
    await Trangtheodoi.create({
      bg // set default country to 1
    });

    res.redirect('/admin/trangtheodoi');
  }
  async destroy_trangtheodoi(req, res, next) {
    try {
      const trangtheodoiID = req.params.id;
      const trangtheodoi = await Trangtheodoi.findByPk(trangtheodoiID);
      if (!trangtheodoi) {
        return res.status(404).send('trangtheodoi not found');
      }
      await trangtheodoi.destroy();

      return res.redirect('/admin/trangtheodoi');
    } catch (error) {
      console.log('Error deleting trangtheodoi: ', error);
      next(error);
    }
  }



  async add_music(req, res, next) {
    const { poster, singer_name, name, date_add, duration, image, src } = req.body;

    // Validate user input
    if (!poster || !singer_name || !name || !date_add || !image) {
      return res.status(400).json({ error: 'All fields are required.' });
    }

    // Create new user
    await Music.create({
      poster,
      singer_name,
      name,
      date_add,
      duration,
      image,
      src, // set default country to 1
    });

    res.redirect('/admin/music');
  }
  async destroy_music(req, res, next) {
    try {
      const musicID = req.params.id;
      const music = await Music.findByPk(musicID);
      if (!music) {
        return res.status(404).send('Music not found');
      }

      // Delete all Musiccategory records that reference the music record
      // Delete all Musiccategory records that reference the music record
      // await Musiccategory.destroy({
      //   where: { id_music: music.id_music }
      // });
      // await Musiccategory.destroy({
      //   where: { music: music.id_music }
      // });
      // Delete all Musiccomposer records that reference the music record
      await Musicfavourite.destroy({
        where: { music: music.id_music }
      });

      await Musiccomposer.destroy({
        where: { music: music.id_music }
      });

      // Delete all Historyplay records that reference the music record
      await Historyplay.destroy({
        where: { music: music.id_music }
      });

      // Delete the music record
      await music.destroy();

      return res.redirect('/admin/music');
    } catch (error) {
      console.log('Error deleting music: ', error);
      next(error);
    }
  }



  async show(req, res, next) {
    try {
      const users = await User.findAll({
        attributes: ['id_user', 'name', 'phone', 'email', 'password', 'country'],
        raw: true
      });
      res.render('admin', {
        layout: 'admin',
        users
      });
    } catch (err) {
      console.log('Error executing query: ', err);
      next(err);
    }
  }


  async show_trangtheodoi(req, res, next) {
    try {
      const trangtheodoi = await Trangtheodoi.findAll({
        attributes: ['id', 'bg',],
        raw: true
      });
      res.render('admin_trangtheodoi', {
        layout: 'admin',
        trangtheodoi
      });
    } catch (err) {
      console.log('Error executing query: ', err);
      next(err);
    }
  }

  async show_trangtheloai(req, res, next) {
    try {
      const musiccard = await Musiccard.findAll({
        attributes: ['id', 'bg', 'title', 'des', 'id_genre', 'des1', 'des2'],
        raw: true
      });
      res.render('admin_trangtheloai', {
        layout: 'admin',
        musiccard
      });
    } catch (err) {
      console.log('Error executing query: ', err);
      next(err);
    }
  }
  async show_trangtop100(req, res, next) {
    try {
      const musiccard = await Musiccard.findAll({
        attributes: ['id', 'bg', 'title', 'des', 'id_genre', 'des1', 'des2'],
        raw: true
      });
      res.render('admin_trangtop100', {
        layout: 'admin',
        musiccard
      });
    } catch (err) {
      console.log('Error executing query: ', err);
      next(err);
    }
  }
  async show_music(req, res, next) {
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
      res.render('admin_music', {
        layout: 'admin_music',
        music
      });
    } catch (err) {
      console.log('Error executing query: ', err);
      next(err);
    }
  }



  async show_form_add(req, res, next) {
    res.render('admin_music_add', {
      layout: 'uploadmusic',
    });
  }

  async show_trangtheodoi_add(req, res, next) {
    res.render('admin_trangtheodoi_add', {
      layout: 'uploadmusic',
    });
  }



  async update_user(req, res, next) {
    try {
      const { name, phone, email, password, country } = req.body;
      const user = await User.findByPk(req.params.id);
      if (!user) {
        return res.status(404).send('User not found');
      }
      user.name = name;
      user.phone = phone;
      user.email = email;
      user.password = password;
      user.country = country;
      await user.save();
      res.redirect('/admin');
    } catch (err) {
      console.log('Error updating user: ', err);
      next(err);
    }
  }

  async update_trangtheloai(req, res, next) {
    try {
      const { bg, title, des, id_genre, des1, des2 } = req.body;
      const musiccard = await Musiccard.findByPk(req.params.id);
      if (!musiccard) {
        return res.status(404).send('musiccard not found');
      }
      musiccard.bg = bg;
      musiccard.title = title;
      musiccard.des = des;
      musiccard.id_genre = 1;
      musiccard.des1 = des1;
      musiccard.des2 = des2;
      await musiccard.save();
      res.redirect('/admin/trangtheloai');
    } catch (err) {
      console.log('Error updating musiccard: ', err);
      next(err);
    }
  }


  async show_edit_user(req, res, next) {
    try {
      const user = await User.findByPk(req.params.id);
      if (!user) {
        return res.status(404).send('User not found');
      }
      res.render('edit_user', {
        layout: 'admin',
        user: user.toJSON()
      });
    } catch (err) {
      console.log('Error retrieving user: ', err);
      next(err);
    }
  }
  async show_edit_trangtheloai(req, res, next) {
    try {
      const musiccard = await Musiccard.findByPk(req.params.id);
      if (!musiccard) {
        return res.status(404).send('User not found');
      }
      console.log(musiccard)
      res.render('admin_trangtheloai_edit', {
        layout: 'admin',
        musiccard: musiccard.toJSON()
      });
    } catch (err) {
      console.log('Error retrieving musiccard: ', err);
      next(err);
    }
  }

  async destroy(req, res, next) {
    try {
      const userId = req.params.id;
      const user = await User.findByPk(userId);

      if (!user) {
        return res.status(404).send('User not found');
      }

      // Find all music records that reference the user
      const musicRecords = await Music.findAll({
        where: { poster: user.id_user },
        attributes: ['id_music']
      });

      // Delete all Musiccategory records that reference the music records
      // Iterate through each music record and delete its corresponding Musiccategory records
      for (const music of musicRecords) {
        await Musiccategory.destroy({
          where: { music: music.id_music }
        });
      }

      // Delete all music records that reference the user
      await Music.destroy({
        where: { poster: user.id_user }
      });

      // Delete the historyplay records that reference the user record
      await Historyplay.destroy({
        where: { iuser: user.id_user }
      });

      // Delete the user record
      await user.destroy();

      return res.redirect('/admin');
    } catch (error) {
      console.log('Error deleting user: ', error);
      next(error);
    }
  }

}

module.exports = new adminController();
