const db = require('../models');
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

	all: async function (req, res) {
		const all = await db.ProfileImage.findAll();

		res.status(200).json({
			total: all.length,
			data: all,
			status: 200,
		});
	},
};

module.exports = controller;
