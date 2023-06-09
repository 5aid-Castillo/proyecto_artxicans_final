-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2023 a las 22:09:18
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `artxicans`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product` varchar(80) NOT NULL,
  `image` varchar(80) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `category` varchar(30) NOT NULL,
  `subcategory` varchar(40) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `product`, `image`, `price`, `description`, `category`, `subcategory`, `image2`, `image3`, `ID`) VALUES
(1, 'Vestido Bordado', 'blackdress.jpg', 1500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Ropa', 'Mujer', 'blackdress.jpg', 'blackdress.jpg', NULL),
(2, 'Collar de Ambar', 'ambar.jpg', 450, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Joyeria', '', 'ambar.jpg', 'ambar.jpg', NULL),
(3, 'Blusa Bordada', 'blouse.jpg', 1200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Ropa', 'Mujer', 'blouse.jpg', 'blouse.jpg', NULL),
(4, 'Guayabera', 'guayabera1.jpg', 1300, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Ropa', 'Hombre', '', '', NULL),
(5, 'Elefante', 'huichol.jpg', 1100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Huichol', '', '', '', NULL),
(6, 'Sombrero Mariachi', 'sombrero.jpg', 1800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Sombrero', '', '', '', NULL),
(7, 'Gato Alebrije', 'alebrije1.jpg', 400, 'Gato alebrije de madera', 'Alebrije', '', '', '', NULL),
(8, 'Armadillo gris', 'alebrije2.jpg', 600, 'Alebrije armadillo gris', 'Alebrije', '', '', '', NULL),
(9, 'Corazon', 'corazon.jpg', 1500, 'Corazon de madera pintado como alebrije', 'Alebrije', '', '', '', NULL),
(10, 'Alebrije de Coco', 'pepita.jpg', 2000, 'Pepita alebrije de la pelicula de coco', 'Alebrije', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `estatus` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`ID`, `Nombre`, `Correo`, `Contraseña`, `estatus`) VALUES
(4, 'mohamed', 'as@gmail.com', '123456', 0),
(5, 'said', 'said557@gmail.com', 'said12345', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reg_sellers`
--

CREATE TABLE `reg_sellers` (
  `IDregseller` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `lada` int(4) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `telefonoref` varchar(20) NOT NULL,
  `domicilio` varchar(255) NOT NULL,
  `postal` varchar(10) NOT NULL,
  `identificador` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reg_sellers`
--

INSERT INTO `reg_sellers` (`IDregseller`, `Nombre`, `apellidos`, `nickname`, `lada`, `telefono`, `telefonoref`, `domicilio`, `postal`, `identificador`) VALUES
(5, 'cristian', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'elnahua', '72470', 'WhatsApp Image 2023-04-25 at 11.38.20 AM.jpeg'),
(6, 'said', 'wuero chido', 'cokie69', 0, '2229259600', '7563704', 'oaxacanda 132', '54870', 'WhatsApp Image 2023-04-25 at 11.38.20 AM (1).jpeg'),
(7, 'cristian', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', ''),
(8, 'cristian', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', ''),
(9, 'cristian2', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'pp.jpg'),
(10, 'cristian5', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian5-identificacion.jpeg'),
(11, 'cristian6', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian6-identificacion.jpeg'),
(12, 'cristian7', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', ''),
(13, 'cristian8', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', ''),
(14, 'cristian9', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', ''),
(15, 'cristian10', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', ''),
(16, 'cristian11', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian11-identificacion.jpeg'),
(17, 'cristian12', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian12-identificacion.jpeg'),
(18, 'cristian13', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian13-identificacion.jpeg'),
(19, 'cristian14', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian14-identificacion.jpeg'),
(20, 'cristian16', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian16-identificacion.jpeg'),
(21, 'cristian17', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian17-identificacion.jpeg'),
(22, 'cristian17', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian17-identificacion.jpeg'),
(23, 'cristian19', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', ''),
(24, 'cristian19', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian19-identificacion.jpeg'),
(25, 'cristian19', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian19-identificacion.jpeg'),
(26, 'cristian19', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian19-identificacion.jpeg'),
(27, 'cristian30', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian30-identificacion.jpeg'),
(28, 'nico', 'jejereje', 'nico123', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'nico-identificacion.jpeg'),
(29, 'cristian40', 'nahuatlato de leon', 'elnahua', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian40-identificacion.jpeg'),
(30, 'beto', 'apellidos chidos', 'beto_artesano', 0, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'beto-identificacion.jpeg'),
(31, 'cristian', 'nahuatlato de leon', 'elnahua23', 52, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian-identificacion.jpeg'),
(32, 'cristian', 'nahuatlato de leon', 'kcootza2', 52, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'cristian-identificacion.jpeg'),
(33, 'cristian', 'nahuatlato de leon', 'kcootza', 5, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza-identificacion.jpeg'),
(34, 'cristian', 'nahuatlato de leon', 'kcootza3', 2, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza3-identificacion.jpeg'),
(35, 'cristian', 'nahuatlato de leon', 'kcootza5', 5, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza5-identificacion.jpeg'),
(36, 'luz', 'nahuatlato de leon', 'kcootza6', 3, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza6-identificacion.jpeg'),
(37, 'luz', 'nahuatlato de leon', 'kcootza7', 3, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza7-identificacion.jpeg'),
(38, 'luz', 'nahuatlato de leon', 'kcootza8', 1, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza8-identificacion.jpeg'),
(39, 'si', 'nahuatlato de leon', 'kcootza9', 1, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza9-identificacion.jpeg'),
(40, 'luzz', 'nahuatlato de leon', 'kcootza10', 1, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza10-identificacion.jpeg'),
(41, 'luzz', 'nahuatlato de leon', 'kcootza11', 1456, '2229259600', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza11-identificacion.jpeg'),
(42, 'luzz', 'nahuatlato de leon', 'kcootza13', 222, '7563703', '7563704', 'Calle tlaxcala #10163, Col. popular castillotla', '72470', 'kcootza13-identificacion.jpeg'),
(43, 'Said', 'Castillo Marin', 'Said557', 52, '2212054136', '2212054136', 'de las flores', '34850', 'Said557-identificacion.jpeg'),
(44, 'Said', 'Castillo Marin', 'emma123', 52, '2212054136', '2212054136', 'de las flores', '12341', 'emma123-identificacion.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stars`
--

CREATE TABLE `stars` (
  `id_star` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `reg_sellers`
--
ALTER TABLE `reg_sellers`
  ADD PRIMARY KEY (`IDregseller`);

--
-- Indices de la tabla `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`id_star`),
  ADD KEY `ID` (`ID`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reg_sellers`
--
ALTER TABLE `reg_sellers`
  MODIFY `IDregseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `stars`
--
ALTER TABLE `stars`
  MODIFY `id_star` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`);

--
-- Filtros para la tabla `stars`
--
ALTER TABLE `stars`
  ADD CONSTRAINT `stars_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`),
  ADD CONSTRAINT `stars_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
