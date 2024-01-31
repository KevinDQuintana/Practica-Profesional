const model = (sequelize, DataTypes) => {
	const alias = 'ProfileImage';
	const cols = {
		image_id: {
			type: DataTypes.INTEGER.UNSIGNED,
			allowNull: false,
			autoIncrement: true,
			primaryKey: true,
		},
		image_name: {
			type: DataTypes.STRING(36),
			allowNull: true,
		},
	};
	const config = {
		tableName: 'profile_images',
		timestamps: false,
	};

	const ProfileImage = sequelize.define(alias, cols, config);
	return ProfileImage;
};

module.exports = model;
