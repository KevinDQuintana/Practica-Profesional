import express from 'express';
import professionsController from '../controllers/professionsController.js';

const router = express.Router();

router.get('/', professionsController.index);

export default router;
