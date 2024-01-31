import express from 'express';
import applicantsController from '../controllers/applicantsController.js';

const router = express.Router();

router.get('/', applicantsController.index);

export default router;
