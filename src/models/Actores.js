const Sequelize = require("sequelize");
const { db } = require("../config/db");

  const actores = db.define('actores', {
    id: {
      type: Sequelize.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: false
    },
    actor: {
      type: Sequelize.STRING(255),
      allowNull: true
    }
  }, { tableName: "actores", timestamps: false });

  module.exports = actores;

