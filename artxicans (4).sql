-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2023 a las 17:07:01
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
  `image1` varchar(80) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `category` varchar(30) NOT NULL,
  `stock` int(11) NOT NULL,
  `image2` varchar(30) NOT NULL,
  `image3` varchar(30) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_product`, `product`, `image1`, `price`, `description`, `category`, `stock`, `image2`, `image3`, `ID`) VALUES
(2, 'Vestido Bordado', 'blackdress.jpg', 500, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Ropa', 5, 'blackdress.jpg', 'blackdress.jpg', NULL),
(3, 'Collar de Ambar', 'ambar.jpg', 300, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Joyeria', 2, 'ambar.jpg', 'ambar.jpg', NULL),
(4, 'Guayabera azul', 'guayabera1.jpg', 450, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Ropa', 5, 'guayabera1.jpg', 'guayabera1.jpg', NULL),
(5, 'Corazon', 'corazon.jpg', 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Alebrije', 3, 'corazon.jpg', 'corazon.jpg', 5),
(6, 'Armadillo gris', 'alebrije2.jpg', 600, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Alebrije', 4, 'alebrije2.jpg', 'alebrije2.jpg', NULL),
(8, 'Blusa Bordada', 'blouse.jpg', 900, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Ropa', 2, 'blouse.jpg', 'blouse.jpg', NULL),
(9, 'Gato Alebrije', 'alebrije1.jpg', 400, 'Gato alebrije de madera', 'Alebrije', 2, 'alebrije1.jpg', 'alebrije1.jpg', NULL),
(11, 'Sombrero Mariachi', 'sombrero.jpg', 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Sombrero', 8, 'sombrero.jpg', 'sombrero.jpg', 5);

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
(9, 'said cm', 'said5@gmail.com', 'said12345', 0),
(10, 'said', 'hola1@gmail.com', 'hola12345', 0);

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
(45, 'Said', 'as', 'emma123', 52, '1221910', '2212054136', 'de las flores', '12341', 'emma123-identificacion.jpeg'),
(46, 'Said', 'Castillo Marin', 'Castillo 18', 52, '2212054136', '2212054136', 'de las flores', '12341', 'Castillo 18-identificacion.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reports`
--

CREATE TABLE `reports` (
  `id_report` int(11) NOT NULL,
  `report` varchar(150) NOT NULL,
  `type` varchar(30) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_star` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reports`
--

INSERT INTO `reports` (`id_report`, `report`, `type`, `ID`, `id_product`, `id_star`) VALUES
(5, '', 'Comentario', 5, 2, 1);

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
(1, 4, 'Good!', 6, 2),
(2, 5, 'Nice!\r\n', 7, 2),
(3, 0, 'Awesome!', 5, 2),
(4, 0, 'Lorem ipsum dolor di falure dnaiowndawaiubd ojandiwadawbod wib 1290u091u30912 inwaodnaoidnaoiwndaow', 8, 2);

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
-- Indices de la tabla `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `ID` (`ID`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_star` (`id_star`);

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
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reg_sellers`
--
ALTER TABLE `reg_sellers`
  MODIFY `IDregseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `reports`
--
ALTER TABLE `reports`
  MODIFY `id_report` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `stars`
--
ALTER TABLE `stars`
  MODIFY `id_star` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Filtros para la tabla `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `reports_ibfk_3` FOREIGN KEY (`id_star`) REFERENCES `stars` (`id_star`);

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
