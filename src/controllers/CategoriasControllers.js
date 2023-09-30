const { Categorias } = require('../config/associations');

// Controlador para listar todas las categorías
const listarCategorias = async (req, res) => {
  try {
    const categorias = await Categorias.findAll();
    res.json(categorias);
  } catch (error) {
    console.error("Error al listar las categorias:", error);
    res.status(500).json({ error: "Error al listar las categorias "+ error });
  }
};

const listarCategoriasXid =  async (req, res) => {
  const { id } = req.params; 
  try {
    // Utiliza el modelo "Categorias" para buscar por ID
    const categoria = await Categorias.findByPk(id);

    if (!categoria) {
      return res.status(404).json({ error: "Categoría no encontrada" });
    }

    res.json(categoria);
  } catch (error) {
    console.error("Error al buscar la categoría por ID:", error);
    res.status(500).json({ error: "Error al buscar la categoría por ID " + error });
  }
};

// Controlador para crear una nueva categoría
const crearCategoria = async (req, res) => {
  const { categoria } = req.body;
  try {
    const Categoria = await Categorias.create({ categoria});
    res.status(201).json(Categoria);
  } catch (error) {
    console.error("Error al crear la categoría:", error);
    res.status(500).json({ error: "Error al crear la categoría" });
  }
};


const eliminarCategoria = async (req, res) => {
  const id = req.params.id;
  try {
    const categoria = await Categorias.findByPk(id);
    if (!categoria) {
      return res.status(404).json({ error: "Categoria no encontrada" });
    }
    await categoria.destroy();
    res.json({ mensaje: "Categoria eliminada con éxito" });
  } catch (error) {
    console.error("Error al eliminar la categoria: ", error);
    res.status(500).json({ error: "Error al eliminar la categoria" });
  }
};


module.exports = {
  listarCategorias,
  listarCategoriasXid,
  crearCategoria,
  eliminarCategoria
}