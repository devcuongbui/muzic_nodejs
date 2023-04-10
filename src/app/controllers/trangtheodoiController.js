// const Course = require('../models/Course');
const Musiccard = require('../models/musiccard');

class trangtheodoiController {
    // [GET] /courses/:slug

    async show(req, res, next) {
        try {
            const musiccard = await Musiccard.findAll({
                attributes: ['id', 'bg', 'title', 'des', 'id_genre', 'id_genre', 'id_genre', 'id_genre'],
                raw: true
            });
            res.render('TrangTheoDoi', {
                layout: 'TrangTheoDoi',
                musiccard
            });
        } catch (err) {
            console.log('Error executing query: ', err);
            next(err);
        }
    }
}

module.exports = new trangtheodoiController();
