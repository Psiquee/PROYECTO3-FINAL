const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const titulos = db.define('titulos', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    poster: {
      type: Sequelize.STRING(255),
      allowNull: false
    },
    titulo: {
        type: Sequelize.STRING(255),
        allowNull: true
      },
      categoriaId: {
        type: Sequelize.INTEGER(11),      //kf de mi tabla
        allowNull: true
      },
      resumen: {
        type: Sequelize.STRING(984),
        allowNull: true
      },
      temporadas: {
        type: Sequelize.INTEGER(11),
        allowNull: true
      },
      trailer: {
        type: Sequelize.STRING(255),
        allowNull: true
      }
  }, { tableName: "titulos", timestamps: false });

  module.exports = titulos;
