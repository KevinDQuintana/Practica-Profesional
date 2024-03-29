const model = (sequelize, DataTypes) => {
	const alias = 'Profession';
	const cols = {
		profession_id: {
			type: DataTypes.INTEGER.UNSIGNED,
			allowNull: false,
			autoIncrement: true,
			primaryKey: true,
		},
		profession_name: {
			type: DataTypes.STRING(25),
		},
	};
	const config = {
		tableName: 'professions',
		timestamps: false,
	};

	const Profession = sequelize.define(alias, cols, config);
	return Profession;
};

module.exports = model;
