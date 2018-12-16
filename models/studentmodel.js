'use strict';
module.exports = (sequelize, DataTypes) => {
  const Students = sequelize.define('Students', {
    name: DataTypes.STRING,
    phone: DataTypes.STRING,
    class_id: DataTypes.INTEGER
  }, {});
  Students.associate = function (models) {
    Students.belongsTo(models.Classes, {
      foreignKey: 'id'
    });
  };
  return Students;
};