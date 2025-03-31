-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-03-2025 a las 14:39:21
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `corre_electronico` varchar(100) COLLATE utf8mb3_spanish2_ci NOT NULL,
  `contraseña` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish2_ci NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `corre_electronico` (`corre_electronico`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_completo`, `fecha_nacimiento`, `corre_electronico`, `contraseña`, `fecha_registro`) VALUES
(1, 'Karla Ivvone Bautista Alejandro', '2003-05-02', 'karla.baualejandro@gmail.com', '123456', '2025-03-29 23:42:17'),
(2, 'Jesus Santiago Ubaldo', '2004-01-01', 'jesussanty@gmail.com', '14589', '2025-03-29 23:45:08'),
(3, 'Victor Manuel Bautista', '1998-10-29', 'victorbautista@gmail.com', '589vic15', '2025-03-29 23:45:49'),
(4, 'Alicia Hernandez', '1972-06-23', 'aliciaalejandro@gmail.com', '8945al6', '2025-03-29 23:47:22'),
(5, 'Rogaciano Bautista Salvador', '1973-05-24', 'rogacianobau@gmail.com', '25r79b1', '2025-03-30 03:24:55'),
(6, 'Joana Bautista Hernández ', '2004-05-03', 'joanaivet@gmail.com', '56jo49ivet', '2025-03-30 03:27:16'),
(7, 'Ximena Santiago Fernández', '2001-06-02', 'santiago12ximena@gmail.com', '55xim774j', '2025-03-30 03:31:22'),
(8, 'José Luis Oyarvide', '1995-08-16', 'oyarvide23jose@gmail.com', '444oyar23jo5', '2025-03-30 03:34:04'),
(9, 'Mateo Roque Rosas', '1988-03-24', 'rosas15_roque@gmail.com', 'risas2488', '2025-03-30 03:36:31'),
(10, 'Esteban Flores Martínez ', '2000-08-16', 'floresmartinez22@gmail.com', '15897flores3', '2025-03-30 03:38:20'),
(11, 'Nancy Mateo Santiago', '2001-10-09', 'nancymateosantiago@gmail.com', '45899mateo15', '2025-03-30 03:49:49'),
(12, 'Abad Juana Cirilo', '2002-03-22', 'abanjuan@gmail.com', '52648abad196', '2025-03-30 04:08:37'),
(13, 'Martha Ibarra Cortez', '2003-12-05', 'ibarracortez21mar@gmail.com', '7889llp69', '2025-03-31 07:34:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
