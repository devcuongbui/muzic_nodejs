const trangtheodoiRouter = require('./trangtheodoiRouter');
const trangtheloaiRouter = require('./trangtheloaiRouter');
const trangtop100Router = require('./trangtop100Router');
const loginRouter = require('./loginRouter');
const siteRouter = require('./siteRouter');
const signinRouter = require('./signinRouter');
const adminRouter = require('./adminRouter');

function route(app) {
    app.use('/TrangTheoDoi', trangtheodoiRouter);
    app.use('/TrangTheLoai', trangtheloaiRouter);
    app.use('/Trangtop100', trangtop100Router);
    app.use('/', siteRouter);
    app.use('/TrangChu', siteRouter);
    app.use('/pagelogin', loginRouter);
    app.use('/signin', signinRouter);
    app.use('/admin', adminRouter);
}

module.exports = route;
