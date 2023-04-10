// const Course = require('../models/Course');
// const { mongooseToObject } = require('../../util/mongoose');

class trangtheloaiController {
    // [GET] /courses/:slug
    show(req, res, next) {
        res.render('TrangTop100', { layout: 'TrangTop100' });
    }
}

module.exports = new trangtheloaiController();