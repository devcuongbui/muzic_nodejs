const express = require('express');
const router = express.Router();

const trangtop100Controller = require('../app/controllers/trangtop100Controller');

// router.get('/create', courseController.create);
router.get('/:slug', trangtop100Controller.show);

module.exports = router;
