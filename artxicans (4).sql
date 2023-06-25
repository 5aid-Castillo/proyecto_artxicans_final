-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-06-2023 a las 17:20:30
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
-- Estructura de tabla para la tabla `pay_account`
--

CREATE TABLE `pay_account` (
  `id_account` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pay_account`
--

INSERT INTO `pay_account` (`id_account`, `token`, `ID`) VALUES
(1, 'gutctycuyctyc7t5res45s43a324astc', 5);

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
(2, 'Vestido Bordado', 'blackdress.jpg', 500, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Ropa', 5, 'blackdress.jpg', 'blackdress.jpg', 5),
(3, 'Collar de Ambar', 'ambar.jpg', 300, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Joyeria', 2, 'ambar.jpg', 'ambar.jpg', 5),
(4, 'Guayabera azul', 'guayabera1.jpg', 450, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Ropa', 5, 'guayabera1.jpg', 'guayabera1.jpg', 5),
(5, 'Corazon', 'corazon.jpg', 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Alebrije', 3, 'corazon.jpg', 'corazon.jpg', 5),
(6, 'Armadillo gris', 'alebrije2.jpg', 600, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Alebrije', 4, 'alebrije2.jpg', 'alebrije2.jpg', 5),
(8, 'Blusa Bordada', 'blouse.jpg', 900, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Ropa', 2, 'blouse.jpg', 'blouse.jpg', 5),
(9, 'Gato Alebrije', 'alebrije1.jpg', 400, 'Gato alebrije de madera', 'Alebrije', 2, 'alebrije1.jpg', 'alebrije1.jpg', 5),
(11, 'Sombrero Rojo', 'sombrero.jpg', 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Sombrero', 8, 'sombrero.jpg', 'sombrero.jpg', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profile_comments`
--

CREATE TABLE `profile_comments` (
  `id_comment` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `comment` varchar(150) NOT NULL,
  `seller` int(11) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profile_comments`
--

INSERT INTO `profile_comments` (`id_comment`, `star`, `comment`, `seller`, `ID`) VALUES
(1, 4, 'Awesome', 5, 9),
(2, 5, 'Good', 5, 7),
(3, 5, 'Nice', 5, 6);

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
  `identificador` varchar(255) NOT NULL,
  `solicitud` varchar(50) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reg_sellers`
--

INSERT INTO `reg_sellers` (`IDregseller`, `Nombre`, `apellidos`, `nickname`, `lada`, `telefono`, `telefonoref`, `domicilio`, `postal`, `identificador`, `solicitud`, `ID`) VALUES
(47, 'Said', 'Castillo Marin', 'Said557', 52, '2212054136', '2212054136', 'de las flores', '34850', 'Said557-identificacion.jpeg', 'Aprobada', 5);

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
(5, '', 'Comentario', 5, 2, 1),
(9, 'hola', 'Producto', 5, 2, NULL),
(10, 'hola', 'Producto', 5, 2, NULL),
(11, 'Hola', 'Producto', 5, 8, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sellers_data`
--

CREATE TABLE `sellers_data` (
  `id_data` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `desc_art` varchar(150) NOT NULL,
  `location` varchar(150) NOT NULL,
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sellers_data`
--

INSERT INTO `sellers_data` (`id_data`, `description`, `desc_art`, `location`, `ID`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Oaxaca centro, Oaxaca.', 5);

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
(4, 0, 'Lorem ipsum dolor di falure dnaiowndawaiubd ojandiwadawbod wib 1290u091u30912 inwaodnaoidnaoiwndaow', 8, 2),
(5, 5, 'Good!', 6, 6),
(6, 4, 'I like it', 6, 5),
(7, 1, 'Nop', 6, 9),
(8, 3, 'Nice!', 7, 3),
(9, 5, 'I like it', 7, 6),
(10, 4, 'Nice!', 7, 8),
(11, 3, 'Good!', 8, 8),
(12, 5, 'Awesome!', 8, 6);

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
-- Indices de la tabla `pay_account`
--
ALTER TABLE `pay_account`
  ADD PRIMARY KEY (`id_account`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `profile_comments`
--
ALTER TABLE `profile_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `ID` (`ID`),
  ADD KEY `seller` (`seller`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `reg_sellers`
--
ALTER TABLE `reg_sellers`
  ADD PRIMARY KEY (`IDregseller`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `ID` (`ID`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_star` (`id_star`);

--
-- Indices de la tabla `sellers_data`
--
ALTER TABLE `sellers_data`
  ADD PRIMARY KEY (`id_data`),
  ADD KEY `ID` (`ID`);

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
-- AUTO_INCREMENT de la tabla `pay_account`
--
ALTER TABLE `pay_account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `profile_comments`
--
ALTER TABLE `profile_comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `reg_sellers`
--
ALTER TABLE `reg_sellers`
  MODIFY `IDregseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `reports`
--
ALTER TABLE `reports`
  MODIFY `id_report` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `sellers_data`
--
ALTER TABLE `sellers_data`
  MODIFY `id_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `stars`
--
ALTER TABLE `stars`
  MODIFY `id_star` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`);

--
-- Filtros para la tabla `pay_account`
--
ALTER TABLE `pay_account`
  ADD CONSTRAINT `pay_account_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`);

--
-- Filtros para la tabla `profile_comments`
--
ALTER TABLE `profile_comments`
  ADD CONSTRAINT `profile_comments_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`),
  ADD CONSTRAINT `profile_comments_ibfk_2` FOREIGN KEY (`seller`) REFERENCES `registro` (`ID`);

--
-- Filtros para la tabla `reg_sellers`
--
ALTER TABLE `reg_sellers`
  ADD CONSTRAINT `reg_sellers_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`);

--
-- Filtros para la tabla `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `reports_ibfk_3` FOREIGN KEY (`id_star`) REFERENCES `stars` (`id_star`);

--
-- Filtros para la tabla `sellers_data`
--
ALTER TABLE `sellers_data`
  ADD CONSTRAINT `sellers_data_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `registro` (`ID`);

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
