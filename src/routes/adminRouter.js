const express = require('express');
const router = express.Router();


const adminController = require('../app/controllers/adminController');

router.get('/', adminController.show);

router.get('/trangtop100', adminController.show_trangtop100);

router.get('/trangtheloai', adminController.show_trangtheloai);
router.get('/trangtheloai/:id/edit', adminController.show_edit_trangtheloai);
router.put('/trangtheloai/:id', adminController.update_trangtheloai);

router.get('/trangtheodoi', adminController.show_trangtheodoi);
router.get('/trangtheodoi/form-add', adminController.show_trangtheodoi_add);
router.post('/trangtheodoi/add', adminController.add_trangtheodoi);
router.delete('/trangtheodoi/:id/delete', adminController.destroy_trangtheodoi);

router.get('/music/form-add', adminController.show_form_add);
router.get('/music', adminController.show_music);
router.post('/music/add', adminController.add_music);
router.delete('/music/:id/delete', adminController.destroy_music);

router.get('/user/:id/edit', adminController.show_edit_user);
router.put('/user/:id', adminController.update_user);
router.delete('/user/:id/delete', adminController.destroy);



module.exports = router;
