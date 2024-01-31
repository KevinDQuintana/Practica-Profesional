const path = require('path');

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

module.exports = controller;
