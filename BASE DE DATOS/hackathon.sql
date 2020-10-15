-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2020 a las 21:35:49
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hackathon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE `bodegas` (
  `id` int(11) NOT NULL COMMENT 'Codigo unico identificador de bodega',
  `nombre` varchar(50) NOT NULL COMMENT 'Nombre de la bodega',
  `sucursal` int(11) NOT NULL COMMENT 'Codigo unico a la sucursal que pertenece la bodega. Llave principal de la tabla sucursales',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bodegas`
--

INSERT INTO `bodegas` (`id`, `nombre`, `sucursal`, `updated_at`, `created_at`) VALUES
(1, 'Bodega40', 1, '2020-10-14 22:09:39', '2020-10-14 22:09:39'),
(2, 'Bodega 28', 1, '2020-10-14 22:09:50', '2020-10-14 22:09:50'),
(3, 'Bodega 32', 1, '2020-10-14 22:09:56', '2020-10-14 22:09:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico de la categoria de productos',
  `categoria` varchar(70) NOT NULL COMMENT 'Categoria de productos',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `updated_at`, `created_at`) VALUES
(2, 'Tornilleria', '2020-10-14 19:20:37', '2020-10-14 19:20:37'),
(3, 'Herramientas', '2020-10-14 19:20:49', '2020-10-14 19:20:49'),
(4, 'destornilladores', '2020-10-14 19:21:02', '2020-10-14 19:21:02'),
(5, 'llaves', '2020-10-14 19:21:10', '2020-10-14 19:21:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificadro unico de ciudad',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombre de la ciudad',
  `departamento` int(11) NOT NULL COMMENT 'Codigo identificado unico de departamento. Llave principal de la tabla departamentos',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id`, `nombre`, `departamento`, `updated_at`, `created_at`) VALUES
(0, 'Dosq', 1, NULL, NULL),
(1, 'Dosq', 1, NULL, NULL),
(121212, 'Pereira', 1, '2020-10-14 20:12:56', '2020-10-14 20:12:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL COMMENT 'Identificacion unica del cliente',
  `tipodocumento` int(11) NOT NULL COMMENT 'Tipo de documento de identificacion del cliente',
  `nombre` varchar(70) NOT NULL COMMENT 'Nombres del cliente',
  `apellido` varchar(70) NOT NULL COMMENT 'Apellidos del cliente',
  `telefono` varchar(10) NOT NULL COMMENT 'N° de telefono del cliente',
  `direccion` varchar(100) NOT NULL COMMENT 'Direccion del cliente',
  `genero` int(11) NOT NULL COMMENT 'Genero del cliente',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `tipodocumento`, `nombre`, `apellido`, `telefono`, `direccion`, `genero`, `updated_at`, `created_at`) VALUES
(1, 1, 'adolfo', 'cano', '3124569217', 'calle 9', 1, '2020-10-15 09:51:35', '2020-10-15 09:51:35'),
(123, 1, 'felipe', 'calvo', '231231', 'cra 7 #5', 1, '2020-10-15 15:02:44', '2020-10-15 15:02:44'),
(1234, 1, 'felipe', 'calvo', '231231', 'cra 7 #5', 1, '2020-10-15 15:16:44', '2020-10-15 15:16:44'),
(12345, 1, 'felipe', 'calvo', '231231', 'cra 7 #5', 1, '2020-10-15 15:19:16', '2020-10-15 15:19:16'),
(123456, 1, 'felipe', 'calvo', '231231', 'cra 7 #5', 1, '2020-10-15 15:20:14', '2020-10-15 15:20:14'),
(1234567, 1, 'felipe', 'calvo', '231231', 'cra 7 #5', 1, '2020-10-15 15:21:43', '2020-10-15 15:21:43'),
(12345678, 1, 'felipe', 'calvo', '231231', 'cra 7 #5', 1, '2020-10-15 15:23:17', '2020-10-15 15:23:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico de departamento',
  `departamento` varchar(45) NOT NULL COMMENT 'Nombre del departamento',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `departamento`, `updated_at`, `created_at`) VALUES
(1, 'Risaralda', NULL, NULL),
(58642, 'Quindio', '2020-10-14 19:32:54', '2020-10-14 19:32:54'),
(66002, 'Valle', '2020-10-14 19:32:07', '2020-10-14 19:32:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_facturas`
--

CREATE TABLE `detalle_facturas` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico de la tabla detalle_facturas',
  `factura` int(11) NOT NULL COMMENT 'Codigo identificador unico de factura. llave principal de la tabla facturas',
  `producto` int(11) NOT NULL COMMENT 'Codigo identificador unico de producto. llave principal de la tabla productos',
  `cantidad` int(11) NOT NULL COMMENT 'Cantidad de productos vendidos',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_facturas`
--

INSERT INTO `detalle_facturas` (`id`, `factura`, `producto`, `cantidad`, `updated_at`, `created_at`) VALUES
(2, 6, 1, 5, '2020-10-15 15:21:43', '2020-10-15 15:21:43'),
(3, 7, 1, 10, '2020-10-15 15:23:17', '2020-10-15 15:23:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` varchar(15) NOT NULL COMMENT 'Nit de la empresa',
  `nombre` varchar(70) NOT NULL COMMENT 'Nombre de ka empresa',
  `Telefono` varchar(10) NOT NULL COMMENT 'Telefono de la empresa',
  `direccion` varchar(100) NOT NULL COMMENT 'Direccion de la empresa',
  `ciudad` int(11) NOT NULL COMMENT 'Ciudad de la empresa',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `Telefono`, `direccion`, `ciudad`, `updated_at`, `created_at`) VALUES
('123456', 'HomeCenter', '3124658796', 'Av sur #48', 121212, '2020-10-14 20:56:05', '2020-10-14 20:56:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico de las entradas',
  `usuario` varchar(10) NOT NULL COMMENT 'Codigo identificador unico del usuario. llave principal de la tabla usuarios',
  `bodega` int(11) NOT NULL COMMENT 'Codigo identificador unico de labodega. llave principal de la tabla bodegas',
  `producto` int(11) NOT NULL COMMENT 'Codigo identificador unico de producto. llave principal en la tabla productos',
  `cantidad` int(11) NOT NULL COMMENT 'Cantidad de productos que ingresaran al stock de producto',
  `fecha` datetime NOT NULL COMMENT 'Fecha de la entrada del producto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico de la factura',
  `clientes_id` int(11) NOT NULL COMMENT 'Codigo identificador unico de cliente. llave principal en la tabla de clientes',
  `usuarios_id` varchar(10) NOT NULL COMMENT 'Codigo identificador unico de usuarios. llave principal en la tabla de usuarios',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `clientes_id`, `usuarios_id`, `updated_at`, `created_at`) VALUES
(4, 12345, '1', '2020-10-15 15:19:16', '2020-10-15 15:19:16'),
(5, 123456, '1', '2020-10-15 15:20:14', '2020-10-15 15:20:14'),
(6, 1234567, '1', '2020-10-15 15:21:43', '2020-10-15 15:21:43'),
(7, 12345678, '1', '2020-10-15 15:23:17', '2020-10-15 15:23:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico del genero',
  `genero` varchar(45) NOT NULL COMMENT 'Nombre del genero',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `genero`, `updated_at`, `created_at`) VALUES
(1, 'Masculino', '2020-10-14 22:48:15', '2020-10-14 22:48:15'),
(2, 'Femenino', '2020-10-14 22:48:27', '2020-10-14 22:48:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico del producto',
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre del producto',
  `precio` float NOT NULL COMMENT 'Precio del producto',
  `iva` float NOT NULL COMMENT 'Iva del producto',
  `stock` int(11) NOT NULL COMMENT 'Cantidad de productos que se encuentran en bodega',
  `proveedor` int(11) NOT NULL COMMENT 'Codigo identificador unico de proveedor. llave principal en la tabla de proveedores',
  `categoria` int(11) NOT NULL COMMENT 'Codigo identificador unico de categoria de producto. llave principal en la tabla de productos',
  `Empresa` varchar(15) NOT NULL COMMENT 'Codigo identificador unico de la empresa. llave principal en la tabla de empresas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `iva`, `stock`, `proveedor`, `categoria`, `Empresa`) VALUES
(1, 'tornillo 9mm', 2000, 450, 300, 147852, 2, '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico de proveedor',
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre de el proveedor',
  `telefono` varchar(10) NOT NULL COMMENT 'N° de telefono del proveedor',
  `direccion` varchar(100) NOT NULL COMMENT 'Direccion del proveedor',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `telefono`, `direccion`, `updated_at`, `created_at`) VALUES
(147852, 'La rosa', '3206497781', 'diagonal 77 #56', '2020-10-14 22:20:12', '2020-10-14 22:20:12'),
(215487, 'Postobon', '3369584', 'sector la campiña', '2020-10-14 22:22:17', '2020-10-14 22:22:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico del rol de cada usuario',
  `rol` varchar(60) DEFAULT NULL COMMENT 'Rol que desempeña cada usuario',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `updated_at`, `created_at`) VALUES
(1, 'Caja', '2020-10-14 21:57:51', '2020-10-14 21:57:51'),
(2, 'Bodega', '2020-10-14 21:58:03', '2020-10-14 21:58:03'),
(3, 'Administrador', '2020-10-14 21:58:15', '2020-10-14 21:58:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico de sucursal',
  `nombre` varchar(70) NOT NULL COMMENT 'Nombre de la sucursal',
  `telefono` varchar(10) NOT NULL COMMENT 'Numero de telefono de la sucursal',
  `direccion` varchar(100) NOT NULL COMMENT 'Direccion de la sucursal',
  `Empresa` varchar(15) NOT NULL COMMENT 'Codigo identificador unico de la empresa. llave principal en la tabla de empresas',
  `ciudade` int(11) NOT NULL COMMENT 'Codigo identificador unico de ciudad. llave principal en la tabla de ciudades',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre`, `telefono`, `direccion`, `Empresa`, `ciudade`, `updated_at`, `created_at`) VALUES
(1, 'sede centro', '3368541', 'centro calle19', '123456', 121212, '2020-10-14 21:35:22', '2020-10-14 21:35:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodocumentos`
--

CREATE TABLE `tipodocumentos` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico del tipo de documento',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombre del tipo de documento',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodocumentos`
--

INSERT INTO `tipodocumentos` (`id`, `nombre`, `updated_at`, `created_at`) VALUES
(1, 'Cedula de ciudadania', '2020-10-14 20:30:43', '2020-10-14 20:30:43'),
(2, 'Cedula de extranjeria', '2020-10-14 20:31:05', '2020-10-14 20:31:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` varchar(10) NOT NULL COMMENT 'Codigo identificador unico de usuarios',
  `tipodocumento` int(11) NOT NULL COMMENT 'Codigo identificador unico del tipo de documento. llve principal en la tabla de usuarios',
  `nombre` varchar(45) NOT NULL COMMENT 'Nombres del usuario',
  `apellido` varchar(45) NOT NULL COMMENT 'Apellidos del usuario',
  `telefono` varchar(10) NOT NULL COMMENT 'N° de telefono del usuario',
  `direccion` varchar(100) NOT NULL COMMENT 'Direccion del usuario',
  `rol` int(11) NOT NULL COMMENT 'Codigo identificador unico del rol. llave principal en la tabla de roles',
  `genero` int(11) NOT NULL COMMENT 'Codigo identificador unico del genero. llave principal en la tabla de generos',
  `ciudad` int(11) NOT NULL COMMENT 'Codigo identificador unico de la ciudad. llave primaria en la tabla de ciudades',
  `email` varchar(70) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `tipodocumento`, `nombre`, `apellido`, `telefono`, `direccion`, `rol`, `genero`, `ciudad`, `email`, `password`, `created_at`, `updated_at`) VALUES
('1', 1, 'andrea', 'cano', '3365412', 'cra 5', 1, 2, 121212, '', '', '2020-10-15 09:53:16', '2020-10-15 09:53:16'),
('159', 1, 'layout', 'vargas', '235146', 'calle 76', 1, 1, 121212, 'aaa@mm.com', '123', '2020-10-15 17:15:29', '2020-10-15 17:15:29'),
('951', 1, 'dama', 'vergel', '235146', 'calle 76', 2, 2, 121212, 'mmm@mm.com', '123', '2020-10-15 17:16:28', '2020-10-15 17:16:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_sucursal`
--

CREATE TABLE `usuarios_sucursal` (
  `id` int(11) NOT NULL COMMENT 'Codigo identificador unico la tabla usuarios_sucursal',
  `usuario` varchar(10) NOT NULL COMMENT 'Codigo identificador unico del usuario. llve principal en la tabla de usuarios',
  `sucursal` int(11) NOT NULL COMMENT 'Codigo identificador unico de  la sucursal. llave principal en la tabla de sucursales',
  `estado` tinyint(4) NOT NULL COMMENT 'Estado del empleado, activo o no activo en esa sucursal',
  `fecha` datetime NOT NULL COMMENT 'Fecha del estado de cambio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bodegas_sucursales1_idx` (`sucursal`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ciudades_departamentos1_idx` (`departamento`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_clientes_generos1_idx` (`genero`),
  ADD KEY `fk_clientes_tipodocumentos1_idx` (`tipodocumento`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD PRIMARY KEY (`id`,`factura`,`producto`),
  ADD KEY `fk_detalle_facturas_facturas1_idx` (`factura`),
  ADD KEY `fk_detalle_facturas_productos1_idx` (`producto`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Empresas_ciudades1_idx` (`ciudad`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_table1_usuarios2_idx` (`usuario`),
  ADD KEY `fk_table1_bodegas1_idx` (`bodega`),
  ADD KEY `fk_table1_productos1_idx` (`producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_facturas_clientes1_idx` (`clientes_id`),
  ADD KEY `fk_facturas_usuarios1_idx` (`usuarios_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_productos_proveedores1_idx` (`proveedor`),
  ADD KEY `fk_productos_categorias1_idx` (`categoria`),
  ADD KEY `fk_productos_Empresas1_idx` (`Empresa`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sucursales_Empresas1_idx` (`Empresa`),
  ADD KEY `fk_sucursales_ciudades1_idx` (`ciudade`);

--
-- Indices de la tabla `tipodocumentos`
--
ALTER TABLE `tipodocumentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Correo electronico` (`email`),
  ADD KEY `fk_usuarios_roles_idx` (`rol`),
  ADD KEY `fk_usuarios_generos1_idx` (`genero`),
  ADD KEY `fk_usuarios_ciudades1_idx` (`ciudad`),
  ADD KEY `fk_usuarios_tipodocumentos1_idx` (`tipodocumento`);

--
-- Indices de la tabla `usuarios_sucursal`
--
ALTER TABLE `usuarios_sucursal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_table1_usuarios1_idx` (`usuario`),
  ADD KEY `fk_table1_sucursales1_idx` (`sucursal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo unico identificador de bodega', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador unico de la categoria de productos', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador unico de la tabla detalle_facturas', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador unico de las entradas';

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador unico de la factura', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador unico del rol de cada usuario', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipodocumentos`
--
ALTER TABLE `tipodocumentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador unico del tipo de documento', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios_sucursal`
--
ALTER TABLE `usuarios_sucursal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Codigo identificador unico la tabla usuarios_sucursal';

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bodegas`
--
ALTER TABLE `bodegas`
  ADD CONSTRAINT `fk_bodegas_sucursales1` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `fk_ciudades_departamentos1` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_clientes_generos1` FOREIGN KEY (`genero`) REFERENCES `generos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_clientes_tipodocumentos1` FOREIGN KEY (`tipodocumento`) REFERENCES `tipodocumentos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_facturas`
--
ALTER TABLE `detalle_facturas`
  ADD CONSTRAINT `fk_detalle_facturas_facturas1` FOREIGN KEY (`factura`) REFERENCES `facturas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_facturas_productos1` FOREIGN KEY (`producto`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `fk_Empresas_ciudades1` FOREIGN KEY (`ciudad`) REFERENCES `ciudades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `fk_table1_bodegas1` FOREIGN KEY (`bodega`) REFERENCES `bodegas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_productos1` FOREIGN KEY (`producto`) REFERENCES `productos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_usuarios2` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `fk_facturas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_facturas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_Empresas1` FOREIGN KEY (`Empresa`) REFERENCES `empresas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_categorias1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_productos_proveedores1` FOREIGN KEY (`proveedor`) REFERENCES `proveedores` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD CONSTRAINT `fk_sucursales_Empresas1` FOREIGN KEY (`Empresa`) REFERENCES `empresas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sucursales_ciudades1` FOREIGN KEY (`ciudade`) REFERENCES `ciudades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_ciudades1` FOREIGN KEY (`ciudad`) REFERENCES `ciudades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_generos1` FOREIGN KEY (`genero`) REFERENCES `generos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_roles` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_tipodocumentos1` FOREIGN KEY (`tipodocumento`) REFERENCES `tipodocumentos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios_sucursal`
--
ALTER TABLE `usuarios_sucursal`
  ADD CONSTRAINT `fk_table1_sucursales1` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_usuarios1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
