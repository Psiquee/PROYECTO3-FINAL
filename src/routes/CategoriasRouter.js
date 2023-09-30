const express = require('express');
const router = express.Router();
const CategoriasController = require('../controllers/CategoriasControllers');

// Rutas para las categorías
router.get('/categorias', CategoriasController.listarCategorias);  // funciona
router.get('/categorias/:id', CategoriasController.listarCategoriasXid)  //funciona
router.post('/categorias', CategoriasController.crearCategoria);
router.delete('/categorias/:id', CategoriasController.eliminarCategoria);

module.exports = router;

