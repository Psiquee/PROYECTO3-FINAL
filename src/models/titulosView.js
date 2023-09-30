const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const titulosView = db.define('titulosView', {
    id: { //id de la pelicula
      type: Sequelize.INTEGER,
      primaryKey: true,
    },
    poster: {
      type: Sequelize.STRING(50),
    },
    resumen: {
        type: Sequelize.STRING(500),
      },
      temporadas: {
        type: Sequelize.INTEGER,
      },
    titulo: {
        type: Sequelize.STRING(100),
      },
      trailer: {
        type: Sequelize.STRING(300),
      },
      categorias: {
        type: Sequelize.STRING(50),
      },
      genero: {
        type: Sequelize.STRING,
      },
      actores: {
        type: Sequelize.STRING,
      },
  }, { tableName: "titulosView", timestamps: false });

  module.exports = titulosView;