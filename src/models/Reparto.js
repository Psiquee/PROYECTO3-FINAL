const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const reparto = db.define('reparto', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    idTitulo: {
      type: Sequelize.INTEGER(11),  // kf 
      allowNull: true
    },
    idActor: {
      type: Sequelize.INTEGER(11),  // kf
      allowNull: true
    }
  }, { tableName: "reparto", timestamps: false });

  module.exports = reparto;