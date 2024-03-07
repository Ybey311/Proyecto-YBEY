-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2024 a las 22:58:31
-- Versión del servidor: 8.0.33
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_ybey`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`, `estado`) VALUES
(1, 'CAMISA', '20240229193529.jpg', 1),
(2, 'CHAQUETA', '20240229194959.jpg', 1),
(3, 'JEAN', '20240229192139.jpg', 1),
(4, 'CAMISETA', '20240229192225.jpg', 1),
(5, 'CHAQUETAS', '20240229192308.jpg', 1),
(6, 'JEANS', '20240229192347.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `whatsapp` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `host_smtp` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `user_smtp` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pass_smtp` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `puerto_smtp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `nombre`, `telefono`, `correo`, `whatsapp`, `direccion`, `host_smtp`, `user_smtp`, `pass_smtp`, `puerto_smtp`) VALUES
(1, 'YBEY', '3134095809', 'ybey3116286@gmail.com', '3134095809', 'Colombia', 'smtp.gmail.com', 'ybey3116286@gmail.com', '12345678', 465);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio` double NOT NULL,
  `producto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_producto` int NOT NULL,
  `id_venta` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_general_ci NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int NOT NULL,
  `ventas` int NOT NULL DEFAULT '0',
  `imagen` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '1',
  `id_categoria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `ventas`, `imagen`, `estado`, `id_categoria`) VALUES
(1, 'DRAGON BALL', 'DRAGON BALL', 10, 0, 0, '20240229193143.jpg', 1, 3),
(2, 'VIDA', 'VIDA JAPAN', 8, 0, 0, '20240229193111.jpg', 1, 3),
(3, 'CHIMUELO', 'CHIMUELO', 5, 100, 0, '20240229192941.jpg', 1, 2),
(4, 'POCAHONTAS', 'MICKEY & MINNIE', 6, 0, 0, '20240301154532.jpg', 1, 5),
(5, 'COLIBRÍ', 'COLIBRÍ FLORAL', 15, 25, 0, '20240301141820.jpg', 1, 5),
(6, 'LEÓN', 'CHAMPAGNE', 18, 100, 0, '20240301184359.jpg', 1, 1),
(7, 'DELFÍN', 'DEFÍN', 12, 80, 0, '20240229192721.jpg', 1, 4),
(8, 'OSO', 'OSO', 50000, 10, 0, '20240301035501.jpg', 1, 1),
(9, 'PIKACHU', 'PIKACHU', 160000, 25, 0, '20240229232152.jpg', 1, 2),
(10, ' CHIHIRO', 'VIAJE DE CHIHIRO', 80000, 2, 0, '20240229204549.jpg', 1, 3),
(11, 'ESCANDALOSOS', '', 160000, 65, 0, '20240301154334.jpg', 1, 5),
(12, 'DOG', 'DOG', 65000, 35, 0, '20240229205217.jpg', 1, 4),
(13, 'LONEY TUNES', 'LONEY TUNES', 85000, 45, 0, '20240229232256.jpg', 1, 2),
(14, 'ABEJA', 'ABEJA', 10000, 55, 0, '20240229214106.jpg', 1, 6),
(15, 'SHORT', 'MICKEY&MINNIE', 105000, 65, 0, '20240229224411.jpg', 1, 6),
(16, 'GATICO', 'PIKACHU', 78000, 85, 0, '20240301191023.jpg', 1, 4),
(17, 'ATARDECER', 'ATARDECER', 85000, 98, 0, '20240301031706.jpg', 1, 1),
(18, 'DRAGON BALL', 'DRAGON BALL', 85000, 66, 0, '20240229210107.jpg', 0, 3),
(19, 'BEAR', 'LEON', 95000, 23, 0, '20240301155020.jpg', 1, 2),
(20, 'OSO', 'OSO LET', 78000, 54, 0, '20240301033105.jpg', 1, 1),
(21, 'LOBO', 'LOBO', 105000, 25, 0, '20240229230008.jpg', 1, 2),
(22, 'STITCH', 'STITCH', 150000, 12, 0, '20240301154132.jpg', 1, 5),
(23, 'Dog', 'Dog', 75000, 65, 0, '20240229211111.jpg', 0, 4),
(24, 'VIDA JAPAN', 'VIDA JAPAN', 75000, 32, 0, '20240229211248.jpg', 0, 3),
(25, 'SATURNO', 'SATURNO', 98000, 78, 0, '20240229213539.jpg', 1, 5),
(26, 'REY LEÓN', 'MINIONS', 75000, 0, 0, '20240301185835.jpg', 1, 4),
(27, 'WINNIE POO', 'WINNIE POO', 75000, 48, 0, '20240229212106.jpg', 1, 4),
(28, 'TOM&JERRY', 'TOM&JERRY', 85000, 35, 0, '20240301035622.jpg', 1, 1),
(29, 'GARFIERD', 'GARFIERD', 85000, 88, 0, '20240229213120.jpg', 1, 1),
(30, 'CHICAS', 'CHICAS SUPERPODEROSAS', 145000, 46, 0, '20240229215738.jpg', 1, 6),
(31, 'MARIPOSAS', 'MARIPOSAS', 96000, 87, 0, '20240229221803.jpg', 1, 6),
(32, 'FRESA', 'FRESA', 140000, 55, 0, '20240229222253.jpg', 1, 6),
(33, 'SHORT', 'MINNIE', 45000, 59, 0, '20240229224617.jpg', 1, 6),
(34, 'SHORT', '', 45000, 21, 0, '20240229225638.jpg', 1, 6),
(35, 'HOMERO', '', 65000, 85, 0, '20240229232217.jpg', 1, 2),
(36, 'CALABERA', '', 96000, 88, 0, '20240229232027.jpg', 1, 2),
(37, 'ARDILLAS', '', 54000, 34, 0, '20240301184212.jpg', 1, 1),
(38, 'REY', 'REY', 67000, 64, 0, '20240301184540.jpg', 1, 1),
(39, 'STITCH', 'STITCH', 76000, 65, 0, '20240301142907.jpg', 1, 5),
(40, 'MICKEY&MINNIE', '', 93000, 11, 0, '20240301154449.jpg', 1, 5),
(41, 'ALICIA', '', 87000, 44, 0, '20240301154249.jpg', 1, 5),
(42, 'LOONEY TUNES', '', 67000, 19, 0, '20240301154935.jpg', 1, 2),
(43, 'ABROZO', '', 65000, 14, 0, '20240301192119.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `correo` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clave` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tipo` int NOT NULL,
  `perfil` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `verify` int NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `nombre`, `apellido`, `clave`, `direccion`, `tipo`, `perfil`, `verify`, `token`, `estado`) VALUES
(1, 'yenifervalderrama2@gmail.com', 'admin', 'ADMINISTRADOR', '$2y$10$YJPEpg7HtOh4dkGwyi2HeeZokS6oJcwi4ttaav/pSDecXaXyuFIGi', 'Colombia', 1, NULL, 0, NULL, 1),
(5, 'info@gmail.com', 'Ana Lopez', NULL, '$2y$10$IU0DrPBACYGug8YsXmKZyONddMoPawVy0XoRqSmW90Tqh7GEHfHD.', NULL, 2, NULL, 0, NULL, 1),
(6, 'yuli@gmail.com', 'Yuli Lopez', NULL, '$2y$10$1Q3quBslnwBhbuQ1QLJlPOfe92s57H94769tfr2G.YYUL.a8BC132', NULL, 2, NULL, 0, NULL, 1),
(7, 'yuliasencios@gmail.com', 'Yuli Asencios', NULL, '$2y$10$m68Aty7PfV8Rr5uak01byOoh6tZJucKn7W8Vx4UuLPRZGNhzMmqcu', NULL, 2, NULL, 0, NULL, 0),
(8, 'yampier19es@gmail.com', 'oscar', NULL, '$2y$10$DznN1c/FoYXtE4.5FzCWNuoOdj88splT9B66GJLvw5jTaSH3CueEi', NULL, 2, NULL, 0, NULL, 1),
(9, 'andresramos@gmail.com', 'admin', 'administrador', '$2y$10$v6q6YmQkvXgUrWYJB2f5/eK9wYsNC2HZwyyEt7cAL5XTvOBZO8tWC', 'bolivia', 1, NULL, 0, NULL, 1),
(10, 'virgo13alexa@gmail.com', 'Andrea', NULL, '$2y$10$nslhkvepnIn3.X6wn32Yy.lm9IEUTQRqQGbseDrE/YFdJrH/QjZJ2', NULL, 2, NULL, 0, NULL, 1),
(11, 'yeimyvanesacapizpajoy@gmail.com', 'Yeinny', NULL, '$2y$10$phXULrDhxsF8T4RKoYsacuT0B9lQVOL04wOTwBbkj.LR/JKNPkXOC', NULL, 2, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int NOT NULL,
  `transaccion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total` double NOT NULL,
  `pago` double NOT NULL DEFAULT '0',
  `nombre` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pais` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cod` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `envio` double DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `proceso` int NOT NULL DEFAULT '1',
  `tipo` int NOT NULL DEFAULT '1',
  `estado` int NOT NULL DEFAULT '1',
  `id_usuario` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
