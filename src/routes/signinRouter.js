const express = require('express');
const router = express.Router();

const signinController = require('../app/controllers/signinController');

// router.get('/create', courseController.create);
router.get('/', signinController.show);
router.post('/register', signinController.register);

module.exports = router;
