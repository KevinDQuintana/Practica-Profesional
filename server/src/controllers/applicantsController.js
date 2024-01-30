const controller = {
	index: function (req, res) {
		console.log('GET Request');
		res.status(200).json({
			total: 0,
			data: 'needs to be completed',
			status: 200,
		});
	},
};

export default controller;
