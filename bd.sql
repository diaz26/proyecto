-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2019 a las 02:23:21
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baseo_oficial`
--

CREATE TABLE `baseo_oficial` (
  `id` int(11) NOT NULL,
  `correo_contact` varchar(100) DEFAULT NULL,
  `cel_contact` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `abreviacion` varchar(15) DEFAULT NULL,
  `nav_bg` varchar(10) DEFAULT NULL,
  `op1` varchar(30) DEFAULT NULL,
  `op2` varchar(30) DEFAULT NULL,
  `op3` varchar(30) DEFAULT NULL,
  `op4` varchar(30) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `fuente` varchar(100) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `search` varchar(50) DEFAULT NULL,
  `ban_1_title` varchar(255) DEFAULT NULL,
  `ban_1_text` text,
  `ban_1_url_vid` varchar(255) DEFAULT NULL,
  `ban_1_url_img` varchar(255) DEFAULT NULL,
  `ban_2_title` varchar(255) DEFAULT NULL,
  `ban_2_text` text,
  `ban_2_url_img` varchar(255) DEFAULT NULL,
  `sec_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `baseo_oficial`
--

INSERT INTO `baseo_oficial` (`id`, `correo_contact`, `cel_contact`, `logo`, `nombre`, `abreviacion`, `nav_bg`, `op1`, `op2`, `op3`, `op4`, `color`, `fuente`, `size`, `search`, `ban_1_title`, `ban_1_text`, `ban_1_url_vid`, `ban_1_url_img`, `ban_2_title`, `ban_2_text`, `ban_2_url_img`, `sec_text`) VALUES
(1, 'support@baseo.com', 2147483647, '/images/32b313c553b32ca34c9887d5203ba675.png', 'BASEO - Buy and Sell Easy Online', 'BASEO', '#A1E4CB', 'Home', 'Products', 'Services', 'Login', '#000000', 'Lato, sans-serif', 16, 'Search product', 'Welcome to BASEO', 'BASEO is a platform that offers the sales service in which you can manage your products and sell online.', 'https://www.youtube.com/embed/7e90gBu4pas', 'assets/images/ventas.png', 'SEO', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam  explicabo.', 'assets/images/Banner-negocios.png', '¡BUSCA TU PRODUCTO!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baseo_productos`
--

CREATE TABLE `baseo_productos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Marca` varchar(25) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `Imagen` varchar(200) DEFAULT NULL,
  `Precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `baseo_productos`
--

INSERT INTO `baseo_productos` (`id`, `Nombre`, `Marca`, `Descripcion`, `Imagen`, `Precio`) VALUES
(2, 'Moto Enduro', 'yamaha', 'xtz 250 modelo 2015 ', 'images/250.jpg', 1200000),
(3, 'moto automatica ', 'akt', 'dinamic 125 full motor', '/images/daee7711d715ffe62db45cae2b398049.jpg', 2000000),
(7, 'moto automatica ', 'auteco', 'modelo 2017 papeles al dia', '/images/53341d99887de4cca2f379c836ae17d7.jpg', 2000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baseo_usuarios`
--

CREATE TABLE `baseo_usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `rol` varchar(15) DEFAULT NULL,
  `cod_user` varchar(100) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `cc` int(11) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `img_perfil` varchar(255) DEFAULT NULL,
  `ultima_actividad` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `baseo_usuarios`
--

INSERT INTO `baseo_usuarios` (`id`, `user`, `pass`, `rol`, `cod_user`, `nombres`, `apellidos`, `cc`, `direccion`, `email`, `ciudad`, `fecha_registro`, `facebook`, `img_perfil`, `ultima_actividad`) VALUES
(1, 'jeff26', '123', 'Admin', 'JEFFD', 'Jeff', 'Díaz', 1003810783, 'Calle 71 A # 1 B 33', 'jeffreydiazaya@outlook.com', 'Neiva', '2019-03-27 17:14:21', NULL, NULL, NULL),
(2, 'jeff', 'jda', 'Cliente', 'JJJJ', 'Jeffrey', 'Díaz', 1003810783, 'Calle 71 A # 1 B 33', 'jeffreydiazaya@outlook.com', 'Neiva', '2019-04-14 15:58:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `Descripcion` varchar(40) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `Precio` float DEFAULT NULL,
  `Marca` varchar(25) DEFAULT NULL,
  `Modelo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `baseo_oficial`
--
ALTER TABLE `baseo_oficial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `baseo_productos`
--
ALTER TABLE `baseo_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `baseo_usuarios`
--
ALTER TABLE `baseo_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `baseo_oficial`
--
ALTER TABLE `baseo_oficial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `baseo_productos`
--
ALTER TABLE `baseo_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `baseo_usuarios`
--
ALTER TABLE `baseo_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
