// const Course = require('../models/Course');
// const { mongooseToObject } = require('../../util/mongoose');
const Trangtheodoi = require('../models/trangtheodoi');
class trangtheloaiController {
    // [GET] /courses/:slug
    async show(req, res, next) {
        try {
            const trangtheodoi = await Trangtheodoi.findAll({
                attributes: ['id', 'bg'],
                raw: true
            });
            console.log(trangtheodoi)
            res.render('TrangTheLoai', {
                layout: 'TrangTheLoai',
                trangtheodoi
            });
        } catch (err) {
            console.log('Error executing query: ', err);
            next(err);
        }
    }
}

module.exports = new trangtheloaiController();