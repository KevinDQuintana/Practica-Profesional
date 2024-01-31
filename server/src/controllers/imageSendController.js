import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(new URL(import.meta.url));
const __dirname = path.dirname(__filename);

console.log(path.join());

const controller = {
	index: function (req, res) {
		const fileName = req.params.filename;
		const filePath = path.join(
			__dirname,
			'..',
			'..',
			'uploads',
			'users',
			fileName
		);
		res.set({ 'Content-Type': 'image/jpg' });
		res.sendFile(filePath);
	},
};

export default controller;
