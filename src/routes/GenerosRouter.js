const express = require('express');
const router = express.Router();
const GenerosController = require('../controllers/GenerosControllers');

// Rutas para las categorías
router.get('/generos', GenerosController.listarGeneros);  //funciona
router.post('/generos', GenerosController.crearGenero);   
router.delete('/generos/:id', GenerosController.eliminarGenero);  //funciona

module.exports = router;