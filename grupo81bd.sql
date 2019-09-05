-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2019 a las 23:03:35
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `grupo81bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mensaje` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `name_event` text COLLATE utf8_unicode_ci NOT NULL,
  `description_event` text COLLATE utf8_unicode_ci NOT NULL,
  `speakers` text COLLATE utf8_unicode_ci NOT NULL,
  `hour` text COLLATE utf8_unicode_ci NOT NULL,
  `date` text COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci NOT NULL,
  `countdown` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `information`
--

INSERT INTO `information` (`id`, `name_event`, `description_event`, `speakers`, `hour`, `date`, `location`, `countdown`, `updated_at`) VALUES
(2, 'Democratizando la Banca Privada', 'Zest te invita a conocer más sobre mercado de capitales y productos estructurados.', '<ul>\r\n<li>Arthur Silva <a href=\"https://www.linkedin.com/in/silvaarthur/\" target=\"_blank\"><i class=\"fab fa-linkedin\"></i></a><br>\r\n<span>Gerente General</span></li>\r\n \r\n<li>\r\nEduardo Gálvez <a href=\"https://www.linkedin.com/in/eduardo-g%C3%A1lvez-fern%C3%A1ndez-8b3b7695/\" target=\"_blank\"><i class=\"fab fa-linkedin\"></i></a><br>\r\n<span>Gerente Comercial</span></li>\r\n</ul>', '12:00 p.m. - 1:00 p.m.<br>\r\n6:00 p.m. - 7:00 p.m.<br>\r\n<br>\r\nMisma charla. Dos horarios a elegir.<br><br>', '5 de Setiembre, 2019', 'Av. Javier Prado Este 6230, IBM Sala Cuzco', 'Sep 5, 2019 12:00:00', '2019-09-03 16:08:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads`
--

CREATE TABLE `leads` (
  `id` int(11) NOT NULL,
  `firstname` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(95) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `schedule` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `leads`
--

INSERT INTO `leads` (`id`, `firstname`, `lastname`, `email`, `phone`, `schedule`, `time_registered`) VALUES
(33, 'Francisco', 'Toledo', 'franciscotoledo@zestcapital.com.pe', '+51992968391', '12:00 a.m. - 1:00 p.m.', '2019-09-02 21:47:33'),
(48, 'Francisco', 'Toledo', 'ftoledo@ispaia.com', '+51992968391', '6:00 p.m. - 7:00 p.m.', '2019-09-03 02:50:58'),
(70, 'Francisco José', 'Toledo Santander', 'ftoledo1@gmail.com', '992968391', '06:00 p.m. - 07:00 p.m.', '2019-09-03 13:43:13'),
(71, 'Pacho', 'Toledo', 'ftoledo1@yahoo.com', '992968391', '12:00 p.m. - 1:00 p.m.', '2019-09-03 13:45:06'),
(74, 'Lucia', 'Torres Polo', 'lucia.torres.polo@ibm.com', '994606552', '12:00 p.m. - 1:00 p.m.', '2019-09-03 14:49:47'),
(83, 'Teresa', 'Hirose Nonaka', 'thirose@pe.ibm.com', '993677277', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:16:53'),
(84, 'Karla', 'Pinillos Vizcarra', 'kpv24@hotmail.com', '995003760', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:16:57'),
(85, 'Clara Ysabel', 'Orozco', 'cyorozco@pe.ibm.com', '984613604', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:24:29'),
(86, 'Julio Cesar', 'Zavaleta Sierralta', 'jzavalet@pe.ibm.com', '971263640', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:24:43'),
(87, 'Paolo', 'Lache', 'paolo.lache@ibm.com', '946113028', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:31:01'),
(88, 'Ernie', 'Rojas', 'erojas@pe.ibm.com', '921911655', '06:00 p.m. - 07:00 p.m.', '2019-09-03 15:33:23'),
(89, 'Larry', 'Martin', 'larry.gallarday@gmail.com', '55555555', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:39:18'),
(90, 'ROxana', 'chavez', 'roma0381@gmail.com', '949199782', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:39:37'),
(91, 'Miguel', 'Cordova Cassia', 'miguel.cordova.28@gmail.com', '962093996', '12:00 p.m. - 1:00 p.m.', '2019-09-03 15:54:20'),
(92, 'Sandra', 'Pabon', 'spabon@pe.ibm.com', '999710158', '12:00 p.m. - 1:00 p.m.', '2019-09-03 16:00:55'),
(93, 'Abelardo Tomás', 'Mogollón Ygnacio', 'amogollo@pe.ibm.com', '949240878', '12:00 p.m. - 1:00 p.m.', '2019-09-03 16:09:38'),
(94, 'JORGE LUIS', 'BARRIGA GUERRERO', 'jorgebarriga_g@hotmail.com', '999492807', '12:00 p.m. - 1:00 p.m.', '2019-09-03 16:19:00'),
(95, 'Miguel', 'Galvez', 'magalvezc@gmail.com', '51950672079', '12:00 p.m. - 1:00 p.m.', '2019-09-03 16:34:25'),
(96, 'Pilar', 'Ancajima Montenegro', 'pilar@pe.ibm.com', '6256196', '12:00 p.m. - 1:00 p.m.', '2019-09-03 16:59:07'),
(97, 'Eduardo', 'Ramírez', 'ramirezm@pe.ibm.com', '625-6485', '06:00 p.m. - 07:00 p.m.', '2019-09-03 17:07:55'),
(98, 'FERNANDO EFREN', 'GARCIA CORTEZ', 'fegarcia@pe.ibm.com', '996595407', '12:00 p.m. - 1:00 p.m.', '2019-09-03 18:50:21'),
(99, 'Javier Manuel', 'Silva Palomino', 'jmsilva@pe.ibm.com', '935272842', '06:00 p.m. - 07:00 p.m.', '2019-09-03 19:40:08'),
(100, 'Roberto', 'Munayco', 'RMUNAYCO@pe.ibm.com', '6256238', '06:00 p.m. - 07:00 p.m.', '2019-09-03 19:47:18'),
(101, 'Manuel', 'Zeña Coronado', 'mzena@pe.ibm.com', '930226187', '06:00 p.m. - 07:00 p.m.', '2019-09-03 19:57:12'),
(102, 'Paulo', 'Arana', 'pcarana@pe.ibm.com', '985716046', '12:00 p.m. - 1:00 p.m.', '2019-09-03 20:32:08'),
(103, 'Lidia', 'Moya Porras', 'ltmoya@pe.ibm.com', '964720070', '12:00 p.m. - 1:00 p.m.', '2019-09-03 20:51:14'),
(104, 'Jessica Rocio', 'Sebastián Timaná', 'jessyseti@gmail.com', '997591391', '06:00 p.m. - 07:00 p.m.', '2019-09-03 21:03:21'),
(105, 'Jaime', 'Salvatierra', 'jsalvati@pe.ibm.com', '990200177', '12:00 p.m. - 1:00 p.m.', '2019-09-03 21:12:53'),
(106, 'Oscar', 'Agurto', 'oagurto@pe.ibm.com', '991742303', '12:00 p.m. - 1:00 p.m.', '2019-09-03 21:45:26'),
(107, 'Mirko', 'Cajahuaman', 'mparaparc@gmail.com', '958618970', '06:00 p.m. - 07:00 p.m.', '2019-09-03 22:42:27'),
(108, 'Christian', 'SAnchez', 'cisanche@pe.ibm.com', '994606541', '12:00 p.m. - 1:00 p.m.', '2019-09-03 22:53:46'),
(109, 'Jose', 'Lazon', 'jwlazon@pe.ibm.com', '993385591', '12:00 p.m. - 1:00 p.m.', '2019-09-03 23:11:48'),
(110, 'JUAN JOSE', 'JURADO TORREJON', 'juan.jurado@pucp.pe', '995617324', '12:00 p.m. - 1:00 p.m.', '2019-09-04 14:51:32'),
(111, 'Juan', 'Miranda Velasquez', 'juanmir@pe.ibm.com', '994606108', '12:00 p.m. - 1:00 p.m.', '2019-09-04 14:58:22'),
(112, 'William Edison', 'Zarzoza Espino', 'william2804@gmail.com', '982451509', '06:00 p.m. - 07:00 p.m.', '2019-09-04 15:09:29'),
(113, 'Gerald', 'Carpio', 'gerald@pe.ibm.com', '994606545', '12:00 p.m. - 1:00 p.m.', '2019-09-04 16:10:00'),
(114, 'Manuel Ricardo', 'Olivares Lizárraga', 'molivare@pe.ibm.com', '950841046', '12:00 p.m. - 1:00 p.m.', '2019-09-04 18:02:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(95) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `updated_at`) VALUES
(1, 'admin@admin.com', 'admin', '2019-08-28 18:11:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
