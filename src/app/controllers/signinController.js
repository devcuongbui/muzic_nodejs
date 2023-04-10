const User = require('../models/user');

class SigninController {
    // [GET] /signin
    show(req, res, next) {
        res.render('signin', { layout: 'signin' });
    }

    // [POST] /register
    async register(req, res, next) {
        const { name, phone, email, password, confirm_password } = req.body;

        // Validate user input
        if (!name || !phone || !email || !password || !confirm_password) {
            return res.status(400).json({ error: 'All fields are required.' });
        }

        if (password !== confirm_password) {
            return res.status(400).json({ error: 'Passwords do not match.' });
        }

        // Check if user already exists
        const existingUser = await User.findOne({ where: { email } });
        if (existingUser) {
            return res.status(400).json({ error: 'Email already registered.' });
        }

        // Create new user
        await User.create({
            name,
            phone,
            email,
            password,
            country: 1, // set default country to 1
        });

        res.redirect('/pagelogin');
    }
}

module.exports = new SigninController();
