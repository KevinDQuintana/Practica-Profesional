import express from 'express';
import imageSendController from '../controllers/imageSendController.js';

const router = express.Router();

router.get('/:filename', imageSendController.index);

export default router;
