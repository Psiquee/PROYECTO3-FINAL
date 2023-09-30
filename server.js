const express = require("express");
const app = express();
const { db } = require ("./src/config/db");
const path = require('path');
const dotenv = require("dotenv");

const PORT = process.env.PORT || 3000;

app.use(express.json());

app.use(async (req, res, next) => {
    try {
      await db.authenticate();
      next();
    } catch (error) {
      res
        .status(500)
        .json({ error: "Error en el servidor", description: error.message });
    }
  });

  const CategoriasRouter = require("./src/routes/CategoriasRouter");
const GeneroRouter = require("./src/routes/GenerosRouter");
const TitulosRouter = require("./src/routes/TituloRouter");
const Data = require ("./src/routes/titulosViewRouter");

// Middleware para establecer el encabezado Content-Type en las respuestas
app.use((req, res, next) => {
  res.header("Content-Type", "application/json; charset=utf-8");
  next();
});

// Ruta de inicio
app.get("/", (req, res) => {
  res.status(200).end("Bienvenido a la API de TrailerFlix");
});

app.use("/api", CategoriasRouter);
app.use("/api", GeneroRouter);
app.use("/api", TitulosRouter);
app.use("/api", Data);

app.listen(PORT, () => console.log(`Servidor escuchando en el puerto ${PORT}`) );