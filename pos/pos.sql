-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2022 a las 04:43:17
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Maquinas ', '2022-06-25 19:45:02'),
(2, 'Lanas', '2022-06-25 20:48:53'),
(3, 'Telas', '2022-06-25 19:50:50'),
(4, 'Agujas ', '2022-06-25 19:52:45'),
(5, 'Hilos y Ganchillos', '2022-06-25 21:12:37'),
(6, 'Accesorios', '2022-06-25 22:03:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(3, 'Juan Villegas', 2147483647, 'juan@hotmail.com', '(300) 341-2345', 'Calle 23 # 45 - 56', '1980-11-02', 0, '0000-00-00 00:00:00', '2022-06-25 22:15:26'),
(4, 'Pedro Pérez', 2147483647, 'pedro@gmail.com', '(399) 876-5432', 'Calle 34 N33 -56', '1970-08-07', 0, '0000-00-00 00:00:00', '2022-06-25 22:15:31'),
(5, 'Miguel Murillo', 325235235, 'miguel@hotmail.com', '(254) 545-3446', 'calle 34 # 34 - 23', '1976-03-04', 9, '2022-06-25 17:19:52', '2022-06-25 22:19:52'),
(6, 'Margarita Londoño', 34565432, 'margarita@hotmail.com', '(344) 345-6678', 'Calle 45 # 34 - 56', '1976-11-30', 4, '2022-06-25 17:20:31', '2022-06-25 22:20:31'),
(7, 'Julian Ramirez', 786786545, 'julian@hotmail.com', '(675) 674-5453', 'Carrera 45 # 54 - 56', '1980-04-05', 20, '2022-06-25 17:25:57', '2022-06-25 22:25:57'),
(8, 'Stella Jaramillo', 65756735, 'stella@gmail.com', '(435) 346-3463', 'Carrera 34 # 45- 56', '1956-06-05', 14, '2022-06-25 17:25:28', '2022-06-25 22:25:28'),
(9, 'Eduardo López', 2147483647, 'eduardo@gmail.com', '(534) 634-6565', 'Carrera 67 # 45sur', '1978-03-04', 40, '2022-06-25 17:25:00', '2022-06-25 22:25:00'),
(10, 'Ximena Restrepo', 436346346, 'ximena@gmail.com', '(543) 463-4634', 'calle 45 # 23 - 45', '1956-03-04', 20, '2022-06-25 17:27:06', '2022-06-25 22:27:06'),
(11, 'David Guzman', 43634643, 'david@hotmail.com', '(354) 574-5634', 'carrera 45 # 45 ', '1967-05-04', 28, '2022-06-25 17:26:41', '2022-06-25 22:26:41'),
(12, 'Gonzalo Pérez', 436346346, 'gonzalo@yahoo.com', '(235) 346-3464', 'Carrera 34 # 56 - 34', '1967-08-09', 33, '2022-06-25 17:26:20', '2022-06-25 22:26:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(1, 1, '101', 'Maquina familiar básica brother LX3817', 'vistas/img/productos/default/anonymous.png', 15, 2300000, 2700000, 0, '2022-06-25 22:15:26'),
(2, 1, '102', 'Alfa Basic 720', 'vistas/img/productos/default/anonymous.png', 9, 1450000, 1620000, 0, '2022-06-25 22:18:38'),
(3, 1, '103', 'Singer 2250 Tradition', 'vistas/img/productos/default/anonymous.png', 20, 1920000, 2230000, 0, '2022-06-25 22:16:43'),
(4, 1, '104', 'Alfa Style 40', 'vistas/img/productos/default/anonymous.png', 19, 2340000, 2700000, 1, '2022-06-25 22:26:20'),
(5, 1, '105', 'Singer 1409 Promise', 'vistas/img/productos/default/anonymous.png', 20, 1540000, 2156000, 0, '2022-06-25 22:16:43'),
(6, 1, '106', 'Singer Serenade', 'vistas/img/productos/default/anonymous.png', 20, 1100000, 1540000, 0, '2022-06-25 22:22:35'),
(7, 1, '107', 'Singer Simple 3232', 'vistas/img/productos/default/anonymous.png', 20, 1540000, 2156000, 0, '2022-06-25 22:18:38'),
(8, 1, '108', 'Singer 9960 Quantum', 'vistas/img/productos/default/anonymous.png', 13, 1540000, 2156000, 1, '2022-06-25 22:17:41'),
(9, 1, '109', ' Alfa Smart Plus', 'vistas/img/productos/default/anonymous.png', 18, 2600000, 3640000, 1, '2022-06-25 22:25:28'),
(10, 1, '110', 'Brother CX70PE', 'vistas/img/productos/default/anonymous.png', 19, 2210000, 3094000, 1, '2022-06-25 22:25:57'),
(11, 1, '111', 'Uten ES-2685A', 'vistas/img/productos/default/anonymous.png', 20, 2860000, 4004000, 0, '2022-05-11 01:11:04'),
(12, 1, '112', 'Singer 2250 Tradition', 'vistas/img/productos/default/anonymous.png', 19, 2400000, 3360000, 1, '2022-06-25 22:25:57'),
(13, 1, '113', 'Alfa Next 40 Spring +', 'vistas/img/productos/default/anonymous.png', 20, 1100000, 1540000, 0, '2022-05-11 01:11:04'),
(14, 1, '114', 'Singer Serenade 8280', 'vistas/img/productos/default/anonymous.png', 20, 4500000, 6300000, 0, '2022-06-25 20:58:44'),
(15, 1, '115', 'Singer Promise 1409', 'vistas/img/productos/default/anonymous.png', 19, 1980000, 2772000, 1, '2022-06-25 22:25:57'),
(16, 1, '116', 'Singer Start 1306', 'vistas/img/productos/default/anonymous.png', 20, 4200000, 5880000, 0, '2022-05-11 01:11:04'),
(17, 1, '117', 'Brother JX17FE (Fantasy Edition)', 'vistas/img/productos/default/anonymous.png', 19, 1800000, 2520000, 1, '2022-06-25 22:26:41'),
(18, 2, '201', 'Lana de merino', 'vistas/img/productos/default/anonymous.png', 15, 5600, 7840, 5, '2022-06-25 22:16:43'),
(19, 2, '202', 'Lana cashmere', 'vistas/img/productos/default/anonymous.png', 13, 9600, 13440, 7, '2022-06-25 22:26:41'),
(20, 2, '203', 'Lana de alpaca', 'vistas/img/productos/default/anonymous.png', 13, 38500, 53900, 7, '2022-06-25 22:26:40'),
(21, 2, '204', 'Lana de lino', 'vistas/img/productos/default/anonymous.png', 20, 9600, 13440, 0, '2022-05-11 01:11:04'),
(22, 2, '205', 'LANA LINCOLN', 'vistas/img/productos/default/anonymous.png', 20, 8000, 11200, 0, '2022-05-11 01:11:04'),
(23, 2, '206', 'LANA CORRIEDALE', 'vistas/img/productos/default/anonymous.png', 20, 39000, 54600, 0, '2022-05-11 01:11:04'),
(24, 3, '302', 'Poliéster', 'vistas/img/productos/default/anonymous.png', 20, 8600, 10200, 0, '2022-06-25 21:24:25'),
(25, 3, '303', 'Lino', 'vistas/img/productos/default/anonymous.png', 20, 9000, 12600, 0, '2022-06-25 21:24:34'),
(26, 3, '304', 'Lana', 'vistas/img/productos/default/anonymous.png', 20, 5100, 7140, 0, '2022-06-25 21:26:47'),
(27, 3, '305', 'Mohair', 'vistas/img/productos/default/anonymous.png', 20, 16200, 22600, 0, '2022-06-25 21:26:47'),
(28, 3, '306', 'Seda', 'vistas/img/productos/default/anonymous.png', 13, 12270, 13378, 7, '2022-06-25 22:20:31'),
(29, 3, '307', 'Pana', 'vistas/img/productos/default/anonymous.png', 19, 7500, 10500, 1, '2022-06-25 22:20:31'),
(30, 3, '308', 'Batista', 'vistas/img/productos/default/anonymous.png', 19, 16800, 23500, 1, '2022-06-25 22:20:31'),
(31, 3, '309', 'Nailon', 'vistas/img/productos/default/anonymous.png', 8, 17500, 24500, 12, '2022-06-25 22:20:31'),
(32, 3, '310', 'Acrílico', 'vistas/img/productos/default/anonymous.png', 7, 1750, 2450, 13, '2022-06-25 22:18:39'),
(33, 3, '311', 'Organza', 'vistas/img/productos/default/anonymous.png', 10, 4200, 5880, 10, '2022-06-25 22:17:41'),
(34, 4, '401', 'Punta Redonda Aguda (SPI)', 'vistas/img/productos/default/anonymous.png', 13, 3500, 4900, 7, '2022-06-25 22:18:39'),
(35, 4, '402', 'Aguja de Punta Redonda Normal (R)', 'vistas/img/productos/default/anonymous.png', 20, 3550, 4970, 0, '2022-06-25 21:26:47'),
(36, 4, '403', 'Punta de Bola Pequeña (SES)', 'vistas/img/productos/default/anonymous.png', 15, 3600, 5040, 5, '2022-06-25 22:25:28'),
(37, 4, '404', 'Punta de Bola Pequeña (SES)', 'vistas/img/productos/default/anonymous.png', 15, 3650, 5110, 5, '2022-06-25 22:25:00'),
(38, 4, '405', 'Punta de Bola Grande (SKF)', 'vistas/img/productos/default/anonymous.png', 14, 3700, 5180, 6, '2022-06-25 22:19:52'),
(39, 4, '406', 'Punta de Bola Grande (SKF)', 'vistas/img/productos/default/anonymous.png', 17, 3750, 5250, 3, '2022-06-25 22:16:43'),
(40, 4, '407', 'Agujas universales (130/705 H)', 'vistas/img/productos/default/anonymous.png', 14, 3800, 5320, 6, '2022-06-25 22:22:35'),
(41, 4, '408', 'Strecht (130/705 H-S)', 'vistas/img/productos/default/anonymous.png', 17, 3850, 5390, 3, '2022-06-25 22:22:35'),
(42, 5, '501', 'Hilo de uso general', 'vistas/img/productos/default/anonymous.png', 14, 350, 490, 6, '2022-06-25 22:27:06'),
(43, 5, '502', 'Hilo extra fuerte', 'vistas/img/productos/default/anonymous.png', 15, 370, 518, 5, '2022-06-25 22:21:44'),
(44, 5, '503', 'Hilo de bordado', 'vistas/img/productos/default/anonymous.png', 18, 380, 532, 2, '2022-06-25 22:21:44'),
(45, 5, '504', 'Hilo de seda ', 'vistas/img/productos/default/anonymous.png', 11, 380, 532, 9, '2022-06-25 22:25:00'),
(46, 5, '505', 'Hilo de hilvanar', 'vistas/img/productos/default/anonymous.png', 4, 480, 672, 16, '2022-06-25 22:21:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'AdministradorGabo', 'admin', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'Administrador', 'vistas/img/usuarios/admin/191.jpg', 1, '2022-06-25 21:41:35', '2022-06-26 02:41:35'),
(57, 'Juan Fernando Sandoval', 'juan', '$2a$07$asxx54ahjppf45sd87a5au.U/M0caGNRi1j0bgxZqVwBDctNLt11O', 'Vendedor', 'vistas/img/usuarios/juan/461.jpg', 1, '2022-06-25 21:39:58', '2022-06-26 02:42:21'),
(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auzGfz9GaOjSPJ5jEDpHii9vSQEEqY1Zm', 'Vendedor', 'vistas/img/usuarios/ana/260.png', 0, '2022-06-21 19:21:40', '2022-06-25 22:41:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(22, 10006, 10, 1, '[{\"id\":\"46\",\"descripcion\":\"Hilo de hilvanar\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"672\",\"total\":\"2016\"},{\"id\":\"43\",\"descripcion\":\"Hilo extra fuerte\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"518\",\"total\":\"1554\"},{\"id\":\"39\",\"descripcion\":\"Punta de Bola Grande (SKF)\",\"cantidad\":\"3\",\"stock\":\"17\",\"precio\":\"5250\",\"total\":\"15750\"},{\"id\":\"18\",\"descripcion\":\"Lana de merino\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"7840\",\"total\":\"39200\"}]', 11118.8, 58520, 69638.8, 'TC-31321231', '2022-06-08 22:16:58'),
(23, 10007, 9, 1, '[{\"id\":\"8\",\"descripcion\":\"Singer 9960 Quantum\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"2156000\",\"total\":\"2156000\"},{\"id\":\"9\",\"descripcion\":\" Alfa Smart Plus\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"3640000\",\"total\":\"3640000\"},{\"id\":\"33\",\"descripcion\":\"Organza\",\"cantidad\":\"10\",\"stock\":\"10\",\"precio\":\"5880\",\"total\":\"58800\"},{\"id\":\"32\",\"descripcion\":\"Acrílico\",\"cantidad\":\"12\",\"stock\":\"8\",\"precio\":\"2450\",\"total\":\"29400\"},{\"id\":\"31\",\"descripcion\":\"Nailon\",\"cantidad\":\"11\",\"stock\":\"9\",\"precio\":\"24500\",\"total\":\"269500\"}]', 1169200, 6153700, 7322900, 'TC-343454554', '2022-05-11 22:17:41'),
(24, 10008, 12, 1, '[{\"id\":\"37\",\"descripcion\":\"Punta de Bola Pequeña (SES)\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5110\",\"total\":\"5110\"},{\"id\":\"38\",\"descripcion\":\"Punta de Bola Grande (SKF)\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"5180\",\"total\":\"25900\"},{\"id\":\"32\",\"descripcion\":\"Acrílico\",\"cantidad\":\"1\",\"stock\":\"7\",\"precio\":\"2450\",\"total\":\"2450\"},{\"id\":\"34\",\"descripcion\":\"Punta Redonda Aguda (SPI)\",\"cantidad\":\"7\",\"stock\":\"13\",\"precio\":\"4900\",\"total\":\"34300\"},{\"id\":\"28\",\"descripcion\":\"Seda\",\"cantidad\":\"6\",\"stock\":\"14\",\"precio\":\"13378\",\"total\":\"80268\"}]', 28125.3, 148028, 176153, 'Efectivo', '2022-06-12 22:18:39'),
(25, 10009, 11, 1, '[{\"id\":\"41\",\"descripcion\":\"Strecht (130/705 H-S)\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"5390\",\"total\":\"5390\"},{\"id\":\"40\",\"descripcion\":\"Agujas universales (130/705 H)\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"5320\",\"total\":\"26600\"}]', 0, 31990, 31990, 'Efectivo', '2022-05-26 22:22:35'),
(26, 10010, 8, 1, '[{\"id\":\"36\",\"descripcion\":\"Punta de Bola Pequeña (SES)\",\"cantidad\":\"5\",\"stock\":\"15\",\"precio\":\"5040\",\"total\":\"25200\"}]', 4788, 25200, 29988, 'Efectivo', '2022-06-12 22:25:28'),
(27, 10011, 7, 1, '[{\"id\":\"12\",\"descripcion\":\"Singer 2250 Tradition\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3360000\",\"total\":\"3360000\"},{\"id\":\"15\",\"descripcion\":\"Singer Promise 1409\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2772000\",\"total\":\"2772000\"},{\"id\":\"10\",\"descripcion\":\"Brother CX70PE\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"3094000\",\"total\":\"3094000\"}]', 1752940, 9226000, 10978900, 'TC-5575544665', '2022-05-31 22:25:57'),
(28, 10012, 12, 57, '[{\"id\":\"4\",\"descripcion\":\"Alfa Style 40\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2700000\",\"total\":\"2700000\"}]', 513000, 2700000, 3213000, 'TC-2312312', '2022-06-04 22:26:20'),
(29, 10013, 11, 57, '[{\"id\":\"54\",\"descripcion\":\"Chapeta\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"\",\"total\":\"924\"},{\"id\":\"59\",\"descripcion\":\"Cono slump\",\"cantidad\":\"1\",\"stock\":\"17\",\"precio\":\"\",\"total\":\"196\"},{\"id\":\"60\",\"descripcion\":\"Cortadora de Baldosin\",\"cantidad\":\"5\",\"stock\":\"14\",\"precio\":\"\",\"total\":\"6510\"},{\"id\":\"20\",\"descripcion\":\"Lana de alpaca\",\"cantidad\":\"7\",\"stock\":\"13\",\"precio\":\"53900\",\"total\":\"377300\"},{\"id\":\"19\",\"descripcion\":\"Lana cashmere\",\"cantidad\":\"7\",\"stock\":\"13\",\"precio\":\"13440\",\"total\":\"94080\"},{\"id\":\"17\",\"descripcion\":\"Brother JX17FE (Fantasy Edition)\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"2520000\",\"total\":\"2520000\"}]', 569812, 2999010, 3568820, 'TC-3545454', '2022-06-01 22:26:41'),
(30, 10014, 10, 57, '[{\"id\":\"42\",\"descripcion\":\"Hilo de uso general\",\"cantidad\":\"6\",\"stock\":\"14\",\"precio\":\"490\",\"total\":\"2940\"}]', 558.6, 2940, 3498.6, 'Efectivo', '2022-05-01 22:27:06'),
(31, 10015, 9, 57, '[{\"id\":\"45\",\"descripcion\":\"Hilo de seda \",\"cantidad\":\"1\",\"stock\":\"11\",\"precio\":\"532\",\"total\":\"532\"},{\"id\":\"37\",\"descripcion\":\"Punta de Bola Pequeña (SES)\",\"cantidad\":\"4\",\"stock\":\"15\",\"precio\":\"5110\",\"total\":\"20440\"}]', 3984.68, 20972, 24956.7, 'TD-34343111', '2022-05-05 22:25:00'),
(32, 10016, 8, 57, '[{\"id\":\"45\",\"descripcion\":\"Hilo de seda \",\"cantidad\":\"7\",\"stock\":\"12\",\"precio\":\"532\",\"total\":\"3724\"},{\"id\":\"44\",\"descripcion\":\"Hilo de bordado\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"532\",\"total\":\"532\"},{\"id\":\"43\",\"descripcion\":\"Hilo extra fuerte\",\"cantidad\":\"1\",\"stock\":\"15\",\"precio\":\"518\",\"total\":\"518\"}]', 907.06, 4774, 5681.06, 'TD-34534533', '2022-06-03 22:21:44'),
(33, 10017, 7, 57, '[{\"id\":\"44\",\"descripcion\":\"Hilo de bordado\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"532\",\"total\":\"532\"},{\"id\":\"45\",\"descripcion\":\"Hilo de seda \",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"532\",\"total\":\"532\"},{\"id\":\"46\",\"descripcion\":\"Hilo de hilvanar\",\"cantidad\":\"13\",\"stock\":\"4\",\"precio\":\"672\",\"total\":\"8736\"},{\"id\":\"41\",\"descripcion\":\"Strecht (130/705 H-S)\",\"cantidad\":\"1\",\"stock\":\"18\",\"precio\":\"5390\",\"total\":\"5390\"},{\"id\":\"43\",\"descripcion\":\"Hilo extra fuerte\",\"cantidad\":\"1\",\"stock\":\"16\",\"precio\":\"518\",\"total\":\"518\"}]', 2984.52, 15708, 18692.5, 'Efectivo', '2022-05-23 22:21:12'),
(34, 10018, 6, 57, '[{\"id\":\"31\",\"descripcion\":\"Nailon\",\"cantidad\":\"1\",\"stock\":\"8\",\"precio\":\"24500\",\"total\":\"24500\"},{\"id\":\"30\",\"descripcion\":\"Batista\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"23500\",\"total\":\"23500\"},{\"id\":\"29\",\"descripcion\":\"Pana\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"10500\",\"total\":\"10500\"},{\"id\":\"28\",\"descripcion\":\"Seda\",\"cantidad\":\"1\",\"stock\":\"13\",\"precio\":\"13378\",\"total\":\"13378\"}]', 13656.8, 71878, 85534.8, 'TD-5754645', '2022-06-17 22:20:31'),
(35, 10019, 5, 57, '[{\"id\":\"41\",\"descripcion\":\"Strecht (130/705 H-S)\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5390\",\"total\":\"5390\"},{\"id\":\"40\",\"descripcion\":\"Agujas universales (130/705 H)\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"5320\",\"total\":\"5320\"},{\"id\":\"38\",\"descripcion\":\"Punta de Bola Grande (SKF)\",\"cantidad\":\"1\",\"stock\":\"14\",\"precio\":\"5180\",\"total\":\"5180\"}]', 3019.1, 15890, 18909.1, 'TC-3242342', '2022-05-24 22:20:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
