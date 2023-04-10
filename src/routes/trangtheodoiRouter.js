const express = require('express');
const router = express.Router();

const trangtheloaiController = require('../app/controllers/trangtheloaiController');

// router.get('/create', courseController.create);
router.get('/:slug', trangtheloaiController.show);

module.exports = router;
