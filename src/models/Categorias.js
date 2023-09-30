const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const categorias = db.define('categorias', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    categoria: {
      type: Sequelize.STRING(255),
      allowNull: true
    }
  }, { tableName: "categorias", timestamps: false });

  module.exports = categorias;