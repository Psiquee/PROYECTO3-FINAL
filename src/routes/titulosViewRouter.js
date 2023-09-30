const express = require('express');
const router = express.Router();
const titulosViewController = require('../controllers/titulosViewController');

// Rutas para las categorías
router.get('/titulosView', titulosViewController.Data);

module.exports = router;