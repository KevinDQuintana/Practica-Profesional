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
};

export default controller;
