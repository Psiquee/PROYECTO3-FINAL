const { titulos } = require('../config/associations');
const { Op } = require('sequelize');
const titulosView = require('../models/titulosView');

// Controlador para listar todas las peliculas con la vista SQL
const listarTitulos = async (req, res) => {
  try {
    const Titulos = await titulos.findAll(
      { order: [['id', 'ASC']] }
    );
     // Obtener la URL base de tu servidor
    const baseUrl = `${req.protocol}://${req.get('host')}`; 
    // Respuesta de ruta absoluta a img
    var img =  []

    for (const titulo of Titulos) {
    
      titulo.poster = `${baseUrl}${titulo.poster}`;
      img.push(titulo)

    }
    
    
    res.json(img);
  } catch (error) {
    console.error("Error al listar los titulos:", error);
    res.status(500).json({ error: "Error al listar los titulos " + error });
  }
};



// Controlador para listar una pelicula por su ID usando la vista SQL
const listarTitulo = async (req, res) => {
  try {
    const id = parseInt(req.params.id);
    const Titulo = await titulos.findOne({ where: { id } });
    res.json(Titulo);
  } catch (error) {
    console.error("Error al listar titulo:" + id, error);
    res.status(500).json({ error: "Error al listar titulo " + error });
  }
};


// Controlador para listar todas las peliculas por categoria
const listarTitulosPorCategoria = async (req, res) => {
  try {
    const categoria = req.params.categoria;
    const Titulos = await titulosView.findAll({ where: {categorias:{[Op.like]: `%${categoria}%`}} });
    res.json(Titulos);
  } catch (error) {
    console.error("Error al listar las peliculas por categoria: ", error);
    res.status(500).json({ error: "Error al listar las peliculas por categoria: " + error });
  }
};


// Controlador para listar todas las peliculas por genero TERMINAR
const listarTitulosPorGenero = async (req, res) => {
  try {
    const genero = req.params.genero;
    const Titulos = await titulosView.findAll({where:{genero:{[Op.like]: `%${genero}%`}}});
    res.json(Titulos);
  } catch (error) {
    console.error("Error al listar los titulos:", error);
    res.status(500).json({ error: "Error al listar los titulos " + error });
  }
};


// Controlador para listar todas las peliculas por parte de su nombre
const listarTitulosPorNombre = async (req, res) => {
  try {
    const nombre = req.params.nombre;
    const Titulos = await titulos.findAll(
      { where: { titulo: { [Op.like]: `%${nombre}%` } } }
    );
    res.json(Titulos);
  } catch (error) {
    console.error("Error al listar las peliculas por nombre: ", error);
    res.status(500).json({ error: "Error al listar las peliculas por nombre: " + error });
  }
};



module.exports = {
  listarTitulos,
  listarTitulo,
  listarTitulosPorCategoria,
  listarTitulosPorNombre,
  listarTitulosPorGenero
}