const titulos = require("../models/Titulos");
const Categorias = require('../models/Categorias');
const Actor = require ('../models/Actores');
const Genero = require ('../models/Genero');
const reparto = require ('../models/Reparto');
const GenTit = require ('../models/GeneroTitulo');

titulos.hasMany(Categorias,{
    foreignKey: 'id',
    sourceKey:'categoriaId'
});

Categorias.hasMany(titulos);

titulos.belongsToMany(Actor,{
    through: reparto,
    foreignKey: 'idTitulo',
    otherKey:'idActor'
});

titulos.belongsToMany(Genero,{
    through: GenTit,
    foreignKey: 'idTitulo',
    otherKey: 'idGenero'
});

Genero.belongsToMany(titulos,{
    through: GenTit,
    //foreignKey: 'idGenero',
    //otherKey: 'idTitulo'
});


module.exports = {
    Categorias,
    Actor,
    Genero, 
    titulos, 
}