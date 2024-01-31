const db = require('../models');

const controller = {
	index: function (req, res) {
		console.log('GET Request');
		const professions = [
			'abogado',
			'arquitecto',
			'botanico',
			'computista',
			'economista',
			'tecnico de sonido',
			'profesor',
			'linguista',
		];
		res.status(200).json({
			total: professions.length,
			data: professions,
			status: 200,
		});
	},

	test: async function (req, res) {
		const professions = await db.Profession.findAll();
		res.status(200).json(professions);
	},
};

module.exports = controller;
