-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2019 a las 06:50:30
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `importadora`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cod_cliente` int(3) NOT NULL,
  `primer_nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `segundo_nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `primer_apellido` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `segundo_apellido` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `dpi` int(13) NOT NULL,
  `sexo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `cod_compra` int(3) NOT NULL,
  `cod_empleado` int(3) NOT NULL,
  `cod_vehiculo` int(3) NOT NULL,
  `exportador` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_compra` date NOT NULL,
  `precio_vehiculo_quetzales` int(10) NOT NULL,
  `precio_total_quetzales` int(10) NOT NULL,
  `precio_dolar` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos`
--

CREATE TABLE `correos` (
  `cod_correo` int(11) NOT NULL,
  `cod_propietario` int(11) NOT NULL,
  `correo` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos`
--

CREATE TABLE `documentos` (
  `cod_documento` int(3) NOT NULL,
  `cod_vehiculo` int(3) NOT NULL,
  `num_titulo` int(20) NOT NULL,
  `num_tarjeta` int(20) NOT NULL,
  `placa` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `cod_empleado` int(3) NOT NULL,
  `primer_nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `segundo_nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `primer_apellido` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `segundo_apellido` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `dpi` int(13) NOT NULL,
  `sexo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `tipo_puesto` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_vehiculos`
--

CREATE TABLE `estados_vehiculos` (
  `cod_estado` int(3) NOT NULL,
  `estado` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exportadores`
--

CREATE TABLE `exportadores` (
  `cod_exportador` int(3) NOT NULL,
  `nombre_exportador` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sitio_web` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formas_pago`
--

CREATE TABLE `formas_pago` (
  `cod_forma` int(3) NOT NULL,
  `forma` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `cod_marca` int(3) NOT NULL,
  `marca` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `cod_puesto` int(3) NOT NULL,
  `puesto` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparaciones`
--

CREATE TABLE `reparaciones` (
  `cod_reparacion` int(3) NOT NULL,
  `cod_vehiculo` int(3) NOT NULL,
  `cod_taller` int(3) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `fecha_devolucion` date NOT NULL,
  `estado` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `detalles` text COLLATE utf8_unicode_ci NOT NULL,
  `precio_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--

CREATE TABLE `sexos` (
  `cod_sexo` int(3) NOT NULL,
  `sexo` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres`
--

CREATE TABLE `talleres` (
  `cod_taller` int(3) NOT NULL,
  `encargado` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_taller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE `telefonos` (
  `cod_telefono` int(3) NOT NULL,
  `cod_propietario` int(3) NOT NULL,
  `telefono` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transmisiones`
--

CREATE TABLE `transmisiones` (
  `cod_transmision` int(3) NOT NULL,
  `transmision` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `cod_vehiculo` int(3) NOT NULL,
  `marca` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `modelo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `transmision` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `millas` int(10) NOT NULL,
  `vin` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `anio` int(4) NOT NULL,
  `cc` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `cod_venta` int(3) NOT NULL,
  `cod_empleado` int(3) NOT NULL,
  `cod_vehiculo` int(3) NOT NULL,
  `cod_cliente` int(3) NOT NULL,
  `fecha_venta` date NOT NULL,
  `forma_pago` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `precio_total` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cod_cliente`),
  ADD KEY `sexo` (`sexo`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`cod_compra`),
  ADD KEY `exportador` (`exportador`),
  ADD KEY `cod_empleado` (`cod_empleado`),
  ADD KEY `cod_vehiculo` (`cod_vehiculo`);

--
-- Indices de la tabla `correos`
--
ALTER TABLE `correos`
  ADD PRIMARY KEY (`cod_correo`),
  ADD KEY `cod_propietario` (`cod_propietario`);

--
-- Indices de la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`cod_documento`),
  ADD KEY `cod_vehiculo` (`cod_vehiculo`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`cod_empleado`),
  ADD KEY `tipo_puesto` (`tipo_puesto`),
  ADD KEY `sexo` (`sexo`);

--
-- Indices de la tabla `estados_vehiculos`
--
ALTER TABLE `estados_vehiculos`
  ADD PRIMARY KEY (`cod_estado`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `exportadores`
--
ALTER TABLE `exportadores`
  ADD PRIMARY KEY (`cod_exportador`),
  ADD KEY `nombre_exportador` (`nombre_exportador`);

--
-- Indices de la tabla `formas_pago`
--
ALTER TABLE `formas_pago`
  ADD PRIMARY KEY (`cod_forma`),
  ADD KEY `forma` (`forma`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`cod_marca`),
  ADD KEY `marca` (`marca`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`cod_puesto`),
  ADD KEY `puesto` (`puesto`);

--
-- Indices de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD PRIMARY KEY (`cod_reparacion`),
  ADD KEY `cod_vehiculo` (`cod_vehiculo`),
  ADD KEY `cod_taller` (`cod_taller`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`cod_sexo`),
  ADD KEY `sexo` (`sexo`);

--
-- Indices de la tabla `talleres`
--
ALTER TABLE `talleres`
  ADD PRIMARY KEY (`cod_taller`);

--
-- Indices de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD PRIMARY KEY (`cod_telefono`),
  ADD KEY `cod_propietario` (`cod_propietario`);

--
-- Indices de la tabla `transmisiones`
--
ALTER TABLE `transmisiones`
  ADD PRIMARY KEY (`cod_transmision`),
  ADD KEY `transmision` (`transmision`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`cod_vehiculo`),
  ADD KEY `marca` (`marca`),
  ADD KEY `transmision` (`transmision`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`cod_venta`),
  ADD KEY `cod_empleado` (`cod_empleado`),
  ADD KEY `cod_vehiculo` (`cod_vehiculo`),
  ADD KEY `cod_cliente` (`cod_cliente`),
  ADD KEY `forma_pago` (`forma_pago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cod_cliente` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `cod_compra` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `correos`
--
ALTER TABLE `correos`
  MODIFY `cod_correo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documentos`
--
ALTER TABLE `documentos`
  MODIFY `cod_documento` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `cod_empleado` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estados_vehiculos`
--
ALTER TABLE `estados_vehiculos`
  MODIFY `cod_estado` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `exportadores`
--
ALTER TABLE `exportadores`
  MODIFY `cod_exportador` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formas_pago`
--
ALTER TABLE `formas_pago`
  MODIFY `cod_forma` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `cod_marca` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `cod_puesto` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  MODIFY `cod_reparacion` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sexos`
--
ALTER TABLE `sexos`
  MODIFY `cod_sexo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talleres`
--
ALTER TABLE `talleres`
  MODIFY `cod_taller` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `telefonos`
--
ALTER TABLE `telefonos`
  MODIFY `cod_telefono` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transmisiones`
--
ALTER TABLE `transmisiones`
  MODIFY `cod_transmision` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `cod_vehiculo` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `cod_venta` int(3) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`sexo`) REFERENCES `sexos` (`sexo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `empleados` (`cod_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`cod_vehiculo`) REFERENCES `vehiculos` (`cod_vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compras_ibfk_3` FOREIGN KEY (`exportador`) REFERENCES `exportadores` (`nombre_exportador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `correos`
--
ALTER TABLE `correos`
  ADD CONSTRAINT `correos_ibfk_1` FOREIGN KEY (`cod_propietario`) REFERENCES `empleados` (`cod_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `correos_ibfk_2` FOREIGN KEY (`cod_propietario`) REFERENCES `clientes` (`cod_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `correos_ibfk_3` FOREIGN KEY (`cod_correo`) REFERENCES `talleres` (`cod_taller`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `correos_ibfk_4` FOREIGN KEY (`cod_propietario`) REFERENCES `exportadores` (`cod_exportador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `documentos`
--
ALTER TABLE `documentos`
  ADD CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`cod_vehiculo`) REFERENCES `vehiculos` (`cod_vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`tipo_puesto`) REFERENCES `puestos` (`puesto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`sexo`) REFERENCES `sexos` (`sexo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD CONSTRAINT `reparaciones_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estados_vehiculos` (`estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reparaciones_ibfk_2` FOREIGN KEY (`cod_taller`) REFERENCES `talleres` (`cod_taller`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reparaciones_ibfk_3` FOREIGN KEY (`cod_vehiculo`) REFERENCES `vehiculos` (`cod_vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `telefonos`
--
ALTER TABLE `telefonos`
  ADD CONSTRAINT `telefonos_ibfk_1` FOREIGN KEY (`cod_propietario`) REFERENCES `empleados` (`cod_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `telefonos_ibfk_2` FOREIGN KEY (`cod_propietario`) REFERENCES `clientes` (`cod_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `telefonos_ibfk_3` FOREIGN KEY (`cod_propietario`) REFERENCES `talleres` (`cod_taller`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `telefonos_ibfk_4` FOREIGN KEY (`cod_propietario`) REFERENCES `exportadores` (`cod_exportador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marcas` (`marca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`transmision`) REFERENCES `transmisiones` (`transmision`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `empleados` (`cod_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`forma_pago`) REFERENCES `formas_pago` (`forma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`cod_cliente`) REFERENCES `clientes` (`cod_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`cod_vehiculo`) REFERENCES `vehiculos` (`cod_vehiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
