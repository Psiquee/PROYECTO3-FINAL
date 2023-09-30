const titulosView = require("../models/titulosView");

const Data = async (req, res) => {
    try {
      const Titulos = await titulosView.findAll(
        { order: [['id', 'ASC']] }
      );
      
      res.json(Titulos);
    } catch (error) {
      console.error("Error al listar los titulos:", error);
      res.status(500).json({ error: "Error al listar los titulos " + error });
    }
  };

  module.exports = { Data}