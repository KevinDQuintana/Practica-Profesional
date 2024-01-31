const express = require('express');
const imageSendController = require('../controllers/imageSendController.js');

const router = express.Router();

router.get('/all', imageSendController.all);
router.get('/:filename', imageSendController.index);

module.exports = router;
