const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const genero_titulo = db.define('genero_titulo', {
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
    idGenero: {
      type: Sequelize.INTEGER(11),  // kf
      allowNull: true
    }
  }, { tableName: "genero_titulo", timestamps: false });

  module.exports = genero_titulo;