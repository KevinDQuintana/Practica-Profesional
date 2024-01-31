const express = require('express');
const professionsController = require('../controllers/professionsController.js');

const router = express.Router();

router.get('/', professionsController.index);
router.get('/test', professionsController.test);

module.exports = router;
