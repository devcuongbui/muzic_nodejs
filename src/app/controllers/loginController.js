const User = require('../models/user');
const bcrypt = require('bcrypt');

class loginController {
  // [GET] /login
  show(req, res, next) {
    res.render('login', { layout: 'login' });
  }

  async login(req, res) {
    const { email, password } = req.body;
    const user = await User.findOne({ where: { email } });

    if (email === 'admin@gmail.com') {
      // Store the user name in a session variable
      req.session.name = user.name;

      return res.redirect('/admin');
    } else {
      // Store the user name in a session variable

      req.session.name = user.name;

      // Pass the user object to the view
      return res.redirect('/');
    }
  }



}

module.exports = new loginController();
