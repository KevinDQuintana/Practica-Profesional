const express = require('express');
const applicantsController = require('../controllers/applicantsController.js');

const router = express.Router();

router.get('/', applicantsController.index);

module.exports = router;
