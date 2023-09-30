const express = require('express');
const router = express.Router();
const TitulosController = require('../controllers/TitulosControllers');

// Rutas para las categorías
router.get('/catalogo', TitulosController.listarTitulos); //funciona
router.get('/catalogo/:id', TitulosController.listarTitulo); //funciona
router.get('/catalogo/nombre/:nombre', TitulosController.listarTitulosPorNombre); //funciona
router.get('/catalogo/genero/:genero', TitulosController.listarTitulosPorGenero);  //funciona
router.get('/catalogo/categoria/:categoria', TitulosController.listarTitulosPorCategoria); //funciona



module.exports = router; 