const express = require('express');
const router = express.Router();

const loginController = require('../app/controllers/loginController');

// router.get('/create', courseController.create);
router.get('/', loginController.show);
router.post('/login', loginController.login);

module.exports = router;
