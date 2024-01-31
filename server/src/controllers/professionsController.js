const db = require('../models');

const controller = {
	index: async function (req, res) {
		const professions = await db.Profession.findAll();

		res.status(200).json({
			total: professions.length,
			data: professions,
			status: 200,
		});
	},
};

module.exports = controller;
