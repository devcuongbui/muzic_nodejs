const express = require('express');
const router = express.Router();

const trangtheodoiController = require('../app/controllers/trangtheodoiController');

// router.get('/create', courseController.create);
router.get('/:slug', trangtheodoiController.show);

module.exports = router;
