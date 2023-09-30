-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-09-2023 a las 20:24:19
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trailerflix`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

DROP TABLE IF EXISTS `actores`;
CREATE TABLE IF NOT EXISTS `actores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_apellido` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`id`, `nombre_apellido`) VALUES
(1, 'Pedro Pascal'),
(2, 'Carl Weathers'),
(3, 'Misty Rosas'),
(4, 'Chris Bartlett'),
(5, 'Rio Hackford'),
(6, 'Giancarlo Esposito'),
(7, 'Tom Hopper'),
(8, 'David Castañeda'),
(9, 'Emmy Raver-Lampman'),
(10, 'Robert Sheehan'),
(11, 'Aidan Gallagher'),
(12, 'Elliot Page'),
(13, 'Anya Taylor-Joy'),
(14, 'Thomas Brodie-Sangster'),
(15, 'Harry Melling'),
(16, 'Moses Ingram'),
(17, 'Chloe Pirrie'),
(18, 'Janina Elkin'),
(19, 'Lili Reinhart'),
(20, 'Casey Cott'),
(21, 'Camila Mendes'),
(22, 'Marisol Nichols'),
(23, 'Madelaine Petsch'),
(24, 'Mädchen Amick'),
(25, 'Claire Foy'),
(26, 'Olivia Colman'),
(27, 'Matt Smith'),
(28, 'Tobias Menzies'),
(29, 'Vanessa Kirby'),
(30, 'Helena Bonham Carter'),
(31, 'Millie Bobby Brown'),
(32, 'Henry Cavill'),
(33, 'Sam Claflin'),
(34, 'Louis Partridge'),
(35, 'Adeel Akhtar'),
(36, 'Joaquin Phoenix'),
(37, 'Robert De Niro'),
(38, 'Zazie Beetz'),
(39, 'Frances Conroy'),
(40, 'Brett Cullen'),
(41, 'Shea Whigham'),
(42, 'Robert Downey Jr.'),
(43, 'Chris Evans'),
(44, 'Mark Ruffalo'),
(45, 'Chris Hemsworth'),
(46, 'Scarlett Johansson'),
(47, 'Jeremy Renner'),
(48, 'Emilia Clarke'),
(49, 'Lena Headey'),
(50, 'Sophie Turner'),
(51, 'Kit Harington'),
(52, 'Peter Dinklage'),
(53, 'Nikolaj Coster-Waldau'),
(54, 'Grant Gustin'),
(55, 'Carlos Valdes'),
(56, 'Danielle Panabaker'),
(57, 'Candice Patton'),
(58, 'Jesse L. Martin'),
(59, 'Tom Cavanagh'),
(60, 'Jim Parsons'),
(61, 'Johnny Galecki'),
(62, 'Kaley Cuoco'),
(63, 'Simon Helberg'),
(64, 'Kunal Nayyar'),
(65, 'Melissa Rauch'),
(66, 'Mayim Bialik'),
(67, 'Jennifer Aniston'),
(68, 'Courteney Cox'),
(69, 'Lisa Kudrow'),
(70, 'David Schwimmer'),
(71, 'Matthew Perry'),
(72, 'Matt LeBlanc'),
(73, 'Amybeth McNulty'),
(74, 'Geraldine James'),
(75, 'R. H. Thomson'),
(76, 'Corrine Koslo'),
(77, 'Dalila Bela'),
(78, 'Lucas Jade Zumann'),
(79, 'Gillian Anderson'),
(80, 'David Duchovny'),
(81, 'Mitch Pileggi'),
(82, 'Robert Patrick'),
(83, 'Tom Braidwood'),
(84, 'Bruce Harwood'),
(85, 'Jared Harris'),
(86, 'Stellan Skarsgård'),
(87, 'Emily Watson'),
(88, 'Paul Ritter'),
(89, 'Jessie Buckley'),
(90, 'Adam Nagaitis'),
(91, 'Evan Rachel Wood'),
(92, 'Thandie Newton'),
(93, 'Jeffrey Wright'),
(94, 'Tessa Thompson'),
(95, 'Ed Harris'),
(96, 'Luke Hemsworth'),
(97, 'Lee Pace'),
(98, 'Scoot McNairy'),
(99, 'Mackenzie Davis'),
(100, 'Kerry Bishé'),
(101, 'Toby Huss'),
(102, 'Alana Cavanaugh'),
(103, 'Jessica Chastain'),
(104, 'John Malkovich'),
(105, 'Colin Farrell'),
(106, 'Common'),
(107, 'Geena Davis'),
(108, 'Ioan Gruffudd'),
(109, 'Margot Robbie'),
(110, 'Ewan McGregor'),
(111, 'Mary Elizabeth Winstead'),
(112, 'Jurnee Smollett'),
(113, 'Rosie Perez'),
(114, 'Chris Messina'),
(115, 'Stacy Martin'),
(116, 'Rhona Mitra'),
(117, 'Theo James'),
(118, 'Peter Ferdinando'),
(119, 'Lia Williams'),
(120, 'Toby Jones'),
(121, 'Dwayne Johnson'),
(122, 'Kevin Hart'),
(123, 'Jack Black'),
(124, 'Karen Gillan'),
(125, 'Awkwafina'),
(126, 'Nick Jonas'),
(127, 'Miranda Cosgrove'),
(128, 'Kate Walsh'),
(129, 'Omar Epps'),
(130, 'Angus Macfadyen'),
(131, 'Jorja Fox'),
(132, 'Enver Gjokaj'),
(133, 'Marion Cotillard'),
(134, 'Matt Damon'),
(135, 'Laurence Fishburne'),
(136, 'Jude Law'),
(137, 'Kate Winslet'),
(138, 'Jennifer Ehle'),
(139, 'Gwyneth Paltrow'),
(140, 'Florence Pugh'),
(141, 'David Harbour'),
(142, 'O.T. Fagbenle'),
(143, 'Rachel Weisz'),
(144, 'William Hurt'),
(145, 'Ray Winstone'),
(146, 'Christian Bale'),
(147, 'Caitriona Balfe'),
(148, 'Josh Lucas'),
(149, 'Noah Jupe'),
(150, 'Jon Bernthal'),
(151, 'Génesis Rodríguez'),
(152, 'Vincent Piazza'),
(153, 'Benjamin Sokolow'),
(154, 'Emily Bayiokos'),
(155, 'Amy Manson'),
(156, 'Luke Allen-Gale'),
(157, 'Nina Bergman'),
(158, 'Dominic Mafham'),
(159, 'James Weber Brown'),
(160, 'Lorina Kamburova'),
(161, 'Kristen Wiig'),
(162, 'Jeff Daniels'),
(163, 'Michael Peña'),
(164, 'Sean Bean'),
(165, 'Kate Mara'),
(166, 'Alicia Vikander'),
(167, 'Domhnall Gleeson'),
(168, 'Oscar Isaac'),
(169, 'Sonoya Mizuno'),
(170, 'Corey Johnson'),
(171, 'Claire Selby'),
(172, 'Gana Bayarsaikhan'),
(173, 'Bryce Dallas Howard'),
(174, 'Chris Pratt'),
(175, 'Irrfan Khan'),
(176, 'Vincent D´ Onofrio'),
(177, 'Omar Sy'),
(178, 'Nick Robinson'),
(179, 'Judy Greer'),
(180, 'Bill Skarsgård'),
(181, 'Isaiah Mustafa'),
(182, 'Jay Ryan'),
(183, 'Chadwick Boseman'),
(184, 'Michael B. Jordan'),
(185, 'Lupita Nyong\'o'),
(186, 'Danai Gurira'),
(187, 'Martin Freeman'),
(188, 'Daniel Kaluuya'),
(189, 'Aidan Gallagher'),
(190, 'Elliot Page'),
(191, 'Anya Taylor-Joy'),
(192, 'Thomas Brodie-Sangster'),
(193, 'Harry Melling'),
(194, 'Moses Ingram'),
(195, 'Chloe Pirrie'),
(196, 'Janina Elkin'),
(197, 'Lili Reinhart'),
(198, 'Casey Cott'),
(199, 'John Boyega'),
(200, 'Scott Eastwood'),
(201, 'Cailee Spaeny'),
(202, 'Jing Tian'),
(203, 'Rinko Kikuchi'),
(204, 'Burn Gorman'),
(205, 'Ryan Gosling'),
(206, 'Claire Foy'),
(207, 'Jason Clarke'),
(208, 'Kyle Chandler'),
(209, 'Corey Stoll'),
(210, 'Patrick Fugit'),
(211, 'Will Smith'),
(212, 'Alice Braga'),
(213, 'Charlie Tahan'),
(214, 'Dash Mihok'),
(215, 'Salli Richardson-Whitfield'),
(216, 'Willow Smith'),
(217, 'Emma Thompson'),
(218, 'Bill Hader'),
(219, 'James McAvoy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Serie'),
(2, 'Película');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE IF NOT EXISTS `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genero` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `genero`) VALUES
(1, 'Ciencia Ficción'),
(2, 'Fantasía'),
(3, 'Drama'),
(4, 'Ficción'),
(5, 'Sucesos'),
(6, 'Misterio'),
(7, 'Hechos verídicos'),
(8, 'Crimen'),
(9, 'Suspenso'),
(10, 'Aventura'),
(11, 'Sci-Fi'),
(12, 'Acción'),
(13, 'Comedia'),
(14, 'Familia'),
(15, 'Western'),
(16, 'Tecnología'),
(17, 'Terror'),
(18, 'Historia'),
(19, 'Intriga'),
(20, '¿Ficción?'),
(21, 'Hechos veríficos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_titulo`
--

DROP TABLE IF EXISTS `genero_titulo`;
CREATE TABLE IF NOT EXISTS `genero_titulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTitulo` int(11) DEFAULT '0',
  `idGenero` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idGenero` (`idGenero`),
  KEY `fk_gen_tit` (`idTitulo`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero_titulo`
--

INSERT INTO `genero_titulo` (`id`, `idTitulo`, `idGenero`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 4, 1),
(4, 4, 2),
(5, 5, 3),
(6, 5, 4),
(7, 5, 5),
(8, 2, 3),
(9, 2, 6),
(10, 2, 4),
(11, 1, 3),
(12, 1, 7),
(13, 6, 4),
(14, 6, 3),
(15, 6, 6),
(16, 7, 8),
(17, 7, 9),
(18, 7, 3),
(19, 8, 10),
(20, 8, 11),
(21, 8, 12),
(22, 9, 10),
(23, 9, 2),
(24, 9, 3),
(25, 10, 1),
(26, 10, 2),
(27, 11, 13),
(28, 11, 2),
(29, 11, 4),
(30, 12, 13),
(31, 12, 14),
(32, 12, 3),
(33, 13, 3),
(34, 13, 14),
(35, 13, 15),
(36, 14, 3),
(37, 14, 1),
(38, 15, 3),
(39, 15, 7),
(40, 16, 15),
(41, 16, 1),
(42, 17, 4),
(43, 17, 3),
(44, 17, 16),
(45, 18, 12),
(46, 18, 3),
(47, 18, 9),
(48, 19, 12),
(49, 19, 4),
(50, 19, 13),
(51, 20, 12),
(52, 20, 11),
(53, 20, 9),
(54, 21, 13),
(55, 21, 4),
(56, 21, 10),
(57, 22, 1),
(58, 22, 9),
(59, 23, 17),
(60, 23, 9),
(61, 23, 2),
(62, 24, 12),
(63, 24, 10),
(64, 24, 2),
(65, 25, 3),
(66, 25, 18),
(67, 25, 10),
(68, 26, 3),
(69, 26, 9),
(70, 26, 19),
(71, 27, 12),
(72, 27, 11),
(73, 27, 17),
(74, 28, 3),
(75, 28, 9),
(76, 28, 20),
(77, 29, 3),
(78, 29, 12),
(79, 29, 10),
(80, 30, 3),
(81, 30, 11),
(82, 30, 10),
(83, 31, 3),
(84, 31, 11),
(85, 31, 9),
(86, 32, 9),
(87, 32, 10),
(88, 32, 4),
(89, 33, 3),
(90, 33, 17),
(91, 33, 4),
(92, 34, 3),
(93, 34, 21),
(94, 35, 12),
(95, 35, 2),
(96, 35, 11),
(97, 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparto`
--

DROP TABLE IF EXISTS `reparto`;
CREATE TABLE IF NOT EXISTS `reparto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idTitulo` int(11) DEFAULT '0',
  `idActor` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idActor` (`idActor`),
  KEY `fk_rep` (`idTitulo`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reparto`
--

INSERT INTO `reparto` (`id`, `idTitulo`, `idActor`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 4, 9),
(10, 4, 10),
(11, 4, 11),
(12, 4, 12),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15),
(16, 5, 16),
(17, 5, 17),
(18, 5, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 6, 31),
(32, 6, 32),
(33, 6, 33),
(34, 6, 30),
(35, 6, 34),
(36, 6, 35),
(37, 7, 36),
(38, 7, 37),
(39, 7, 38),
(40, 7, 39),
(41, 7, 40),
(42, 7, 41),
(43, 8, 42),
(44, 8, 43),
(45, 8, 44),
(46, 8, 45),
(47, 8, 46),
(48, 8, 47),
(49, 9, 48),
(50, 9, 49),
(51, 9, 50),
(52, 9, 51),
(53, 9, 52),
(54, 9, 53),
(55, 10, 54),
(56, 10, 55),
(57, 10, 56),
(58, 10, 57),
(59, 10, 58),
(60, 10, 59),
(61, 11, 60),
(62, 11, 61),
(63, 11, 62),
(64, 11, 63),
(65, 11, 64),
(66, 11, 65),
(67, 11, 66),
(68, 12, 67),
(69, 12, 68),
(70, 12, 69),
(71, 12, 70),
(72, 12, 71),
(73, 12, 72),
(74, 13, 73),
(75, 13, 74),
(76, 13, 75),
(77, 13, 76),
(78, 13, 77),
(79, 13, 78),
(80, 14, 79),
(81, 14, 80),
(82, 14, 81),
(83, 14, 82),
(84, 14, 83),
(85, 14, 84),
(86, 15, 85),
(87, 15, 86),
(88, 15, 87),
(89, 15, 88),
(90, 15, 89),
(91, 15, 90),
(92, 16, 91),
(93, 16, 92),
(94, 16, 93),
(95, 16, 94),
(96, 16, 95),
(97, 16, 96),
(98, 17, 97),
(99, 17, 98),
(100, 17, 99),
(101, 17, 100),
(102, 17, 101),
(103, 17, 102),
(104, 18, 103),
(105, 18, 104),
(106, 18, 105),
(107, 18, 106),
(108, 18, 107),
(109, 18, 108),
(110, 19, 109),
(111, 19, 110),
(112, 19, 111),
(113, 19, 112),
(114, 19, 113),
(115, 19, 114),
(116, 20, 115),
(117, 20, 116),
(118, 20, 117),
(119, 20, 118),
(120, 20, 119),
(121, 20, 120),
(122, 21, 121),
(123, 21, 122),
(124, 21, 123),
(125, 21, 124),
(126, 21, 125),
(127, 21, 126),
(128, 22, 127),
(129, 22, 128),
(130, 22, 129),
(131, 22, 130),
(132, 22, 131),
(133, 22, 132),
(134, 23, 133),
(135, 23, 103),
(136, 23, 134),
(137, 23, 135),
(138, 23, 136),
(139, 23, 137),
(140, 24, 138),
(141, 24, 139),
(142, 24, 140),
(143, 24, 141),
(144, 24, 142),
(145, 24, 143),
(146, 25, 144),
(147, 25, 145),
(148, 25, 146),
(149, 25, 147),
(150, 25, 148),
(151, 25, 149),
(152, 26, 150),
(153, 26, 151),
(154, 26, 152),
(155, 26, 153),
(156, 27, 154),
(157, 27, 155),
(158, 27, 156),
(159, 27, 157),
(160, 27, 158),
(161, 27, 159),
(162, 28, 160),
(163, 28, 145),
(164, 28, 161),
(165, 28, 162),
(166, 28, 163),
(167, 28, 164),
(168, 28, 165),
(169, 29, 46),
(170, 29, 166),
(171, 29, 167),
(172, 29, 168),
(173, 29, 169),
(174, 29, 170),
(175, 29, 171),
(176, 30, 145),
(177, 30, 103),
(178, 30, 172),
(179, 30, 173),
(180, 30, 174),
(181, 30, 175),
(182, 30, 176),
(183, 31, 177),
(184, 31, 178),
(185, 31, 179),
(186, 31, 180),
(187, 31, 181),
(188, 31, 182),
(189, 31, 183),
(190, 32, 184),
(191, 32, 185),
(192, 32, 186),
(193, 32, 187),
(194, 32, 188),
(195, 32, 189),
(196, 32, 190),
(197, 33, 191),
(198, 33, 192),
(199, 33, 193),
(200, 33, 194),
(201, 33, 195),
(202, 33, 196),
(203, 33, 197),
(204, 34, 198),
(205, 34, 199),
(206, 34, 200),
(207, 34, 201),
(208, 34, 202),
(209, 34, 203),
(210, 35, 204),
(211, 35, 205),
(212, 35, 206),
(213, 35, 207),
(214, 35, 208),
(215, 35, 209);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulos`
--

DROP TABLE IF EXISTS `titulos`;
CREATE TABLE IF NOT EXISTS `titulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` varchar(255) NOT NULL DEFAULT '',
  `titulo` varchar(255) DEFAULT '',
  `categoriaId` int(11) DEFAULT '0',
  `resumen` varchar(948) DEFAULT '',
  `temporadas` int(11) DEFAULT '0',
  `trailer` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `categoria` (`categoriaId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `titulos`
--

INSERT INTO `titulos` (`id`, `poster`, `titulo`, `categoriaId`, `resumen`, `temporadas`, `trailer`) VALUES
(1, '/posters/1.jpg', 'The Crown', 1, 'Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.', 4, ''),
(2, '/posters/2.jpg', 'Riverdale', 1, 'El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.', 5, ''),
(3, '/posters/3.jpg', 'The Mandalorian', 1, 'Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.', 2, 'https://www.youtube.com/embed/aOC8E8z_ifw'),
(4, '/posters/4.jpg', 'The Umbrella Academy', 1, 'La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.', 1, ''),
(5, '/posters/5.jpg', 'Gambito de Dama', 1, 'En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.', 1, ''),
(6, '/posters/6.jpg', 'Enola Holmes', 2, 'La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.', 0, ''),
(7, '/posters/7.jpg', 'Guasón', 2, 'Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.', 0, 'https://www.youtube.com/embed/zAGVQLHvwOY'),
(8, '/posters/8.jpg', 'Avengers: End Game', 2, 'Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.', 0, ''),
(9, '/posters/9.jpg', 'Juego de tronos', 1, 'En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.', 8, ''),
(10, '/posters/10.jpg', 'The Flash', 1, 'Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.', 6, ''),
(11, '/posters/11.jpg', 'The Big Bang Theory', 1, 'Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.', 12, 'https://www.youtube.com/embed/WBb3fojgW0Q'),
(12, '/posters/12.jpg', 'Friends', 1, '\'Friends\' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.', 10, ''),
(13, '/posters/13.jpg', 'Anne with an \'E\'', 1, 'Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.', 2, ''),
(14, '/posters/14.jpg', 'Expedientes Secretos \'X\'', 1, 'Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de \'siniestro\'', 11, 'https://www.youtube.com/embed/KKziOmsJxzE'),
(15, '/posters/15.jpg', 'Chernobyl', 1, 'Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.', 1, 'https://www.youtube.com/embed/s9APLXM9Ei8'),
(16, '/posters/16.jpg', 'Westworld', 1, '\'Westworld\' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.', 3, 'https://www.youtube.com/embed/qLFBcdd6Qw0'),
(17, '/posters/17.jpg', 'Halt and Catch Fire', 1, 'Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. \n Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).', 4, 'https://www.youtube.com/embed/pWrioRji60A'),
(18, '/posters/18.jpg', 'Ava', 2, 'Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.', 0, ''),
(19, '/posters/19.jpg', 'Aves de presa y la fantabulosa emancipación de una Harley Quinn', 2, 'Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.', 0, ''),
(20, '/posters/20.jpg', 'Archivo', 2, '2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.', 0, 'https://www.youtube.com/embed/VHSoCnDioAo'),
(21, '/posters/21.jpg', 'Jumanji - The next level', 2, 'Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?', 0, 'https://www.youtube.com/embed/rBxcF-r9Ibs'),
(22, '/posters/22.jpg', '3022', 2, 'La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.', 0, 'https://www.youtube.com/embed/AGQ7OkmIx4Q'),
(23, '/posters/23.jpg', 'IT - Capítulo 2', 2, 'En este segundo capitulo Han pasado 27 años desde que el \'Club de los Perdedores\', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.', 0, 'https://www.youtube.com/embed/hZeFeYSmBcg'),
(24, '/posters/24.jpg', 'Pantera Negra', 2, 'T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.', 0, 'https://www.youtube.com/embed/BE6inv8Xh4A'),
(25, '/posters/25.jpg', 'Contra lo imposible (Ford versus Ferrari)', 2, 'Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.', 0, 'https://www.youtube.com/embed/SOVb0-2g1Q0'),
(26, '/posters/26.jpg', 'Centígrados', 2, 'Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.', 0, ''),
(27, '/posters/27.jpg', 'DOOM: Aniquilación', 2, 'Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.', 0, 'https://www.youtube.com/embed/nat3u3gAVLE'),
(28, '/posters/28.jpg', 'Contagio', 2, 'De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.', 0, 'https://www.youtube.com/embed/4sYSyuuLk5g'),
(29, '/posters/29.jpg', 'Viuda Negra', 2, 'Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.', 0, 'https://www.youtube.com/embed/BIn8iANwEog'),
(30, '/posters/30.jpg', 'The Martian', 2, 'Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.', 0, 'https://www.youtube.com/embed/XvB58bCVfng'),
(31, '/posters/31.jpg', 'Ex-Machina', 2, 'Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.', 0, 'https://www.youtube.com/embed/XRYL5spvEcI'),
(32, '/posters/32.jpg', 'Jurassic World', 2, 'Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.', 0, ''),
(33, '/posters/33.jpg', 'Soy leyenda', 2, 'Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.', 0, 'https://www.youtube.com/embed/dtKMEAXyPkg'),
(34, '/posters/34.jpg', 'El primer hombre en la luna', 2, 'Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.', 0, ''),
(35, '/posters/35.jpg', 'Titanes del pacífico - La insurrección', 2, 'Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.', 0, '');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `titulosview`
-- (Véase abajo para la vista actual)
--
DROP VIEW IF EXISTS `titulosview`;
CREATE TABLE IF NOT EXISTS `titulosview` (
`id` int(11)
,`poster` varchar(255)
,`resumen` varchar(948)
,`temporadas` int(11)
,`titulo` varchar(255)
,`trailer` varchar(255)
,`categorias` varchar(255)
,`genero` varchar(341)
,`actores` varchar(341)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `titulosview`
--
DROP TABLE IF EXISTS `titulosview`;

DROP VIEW IF EXISTS `titulosview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `titulosview`  AS SELECT `t`.`id` AS `id`, `t`.`poster` AS `poster`, `t`.`resumen` AS `resumen`, `t`.`temporadas` AS `temporadas`, `t`.`titulo` AS `titulo`, `t`.`trailer` AS `trailer`, `c`.`categoria` AS `categorias`, (select group_concat(`g`.`genero` separator ', ') AS `generos_por_pelicula` from (`genero` `g` join `genero_titulo` `gxt` on((`g`.`id` = `gxt`.`idGenero`))) where (`gxt`.`idTitulo` = `t`.`id`)) AS `genero`, (select group_concat(`a`.`nombre_apellido` separator ', ') AS `actores_en_pelicula` from (`actores` `a` join `reparto` `axt` on((`a`.`id` = `axt`.`idActor`))) where (`axt`.`idTitulo` = `t`.`id`)) AS `actores` FROM (`titulos` `t` join `categorias` `c` on((`c`.`id` = `t`.`categoriaId`))) ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`id`) REFERENCES `titulos` (`categoriaId`);

--
-- Filtros para la tabla `genero`
--
ALTER TABLE `genero`
  ADD CONSTRAINT `fk_gen` FOREIGN KEY (`id`) REFERENCES `genero_titulo` (`idGenero`);

--
-- Filtros para la tabla `genero_titulo`
--
ALTER TABLE `genero_titulo`
  ADD CONSTRAINT `fk_gen_tit` FOREIGN KEY (`idTitulo`) REFERENCES `titulos` (`id`);

--
-- Filtros para la tabla `reparto`
--
ALTER TABLE `reparto`
  ADD CONSTRAINT `fk_rep` FOREIGN KEY (`idTitulo`) REFERENCES `titulos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
