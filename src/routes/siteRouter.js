const express = require('express');
const router = express.Router();

const siteController = require('../app/controllers/SiteController');

router.get('/', siteController.show_music_trangchu);
// router.get('/:slug', siteController.index);

module.exports = router;
