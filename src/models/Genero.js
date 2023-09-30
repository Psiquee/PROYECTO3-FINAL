const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const Genero = db.define('genero', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    genero: {
      type: Sequelize.STRING(255),
      allowNull: true
    }
  }, { tableName: "genero", timestamps: false });

  module.exports = Genero;