-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2023 a las 21:22:40
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
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id_notif` int(11) NOT NULL,
  `notication` varchar(150) NOT NULL,
  `status` varchar(30) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Vestido Bordado', 'blackdress.jpg', 1500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Ropa', 'Mujer', 'blackdress.jpg', 'blackdress.jpg', 5),
(2, 'Collar de Ambar', 'ambar.jpg', 450, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum commodo leo et malesuada. Donec consectetur porttitor consectetur.', 'Joyeria', '', 'ambar.jpg', 'ambar.jpg', 5),
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
(5, 'said', 'said557@gmail.com', 'said12345', 1),
(6, 'Emmanuel', 'said1@gmail.com', 'said12345', 0),
(7, 'Castillo ', 'said2@gmail.com', 'said12345', 0),
(8, 'Marin', 'said3@gmail.com', 'said12345', 0),
(9, 'said cm', 'said5@gmail.com', 'said12345', 0);

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
(45, 'Said', 'as', 'emma123', 52, '1221910', '2212054136', 'de las flores', '12341', 'emma123-identificacion.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stars`
--

CREATE TABLE `stars` (
  `id_star` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `comment` varchar(150) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stars`
--

INSERT INTO `stars` (`id_star`, `star`, `comment`, `ID`, `id_product`) VALUES
(2, 0, 'Good!', 6, 1),
(4, 5, 'Nice!', 8, 1),
(8, 5, 'i like it!', 7, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id_notif`),
  ADD KEY `ID` (`ID`);

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
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `reg_sellers`
--
ALTER TABLE `reg_sellers`
  MODIFY `IDregseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `stars`
--
ALTER TABLE `stars`
  MODIFY `id_star` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`);

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
