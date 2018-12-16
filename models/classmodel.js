'use strict';
module.exports = (sequelize, DataTypes) => {
  var Classes = sequelize.define('Classes', {
    class_name: DataTypes.STRING,
    class_time: DataTypes.DATE,
    room: DataTypes.STRING
  }, {});
  Classes.associate = function (models) {
    Classes.hasMany(models.Students, {
      foreignKey: 'class_id'
    });
  };
  return Classes;
};