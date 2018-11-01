-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-11-2018 a las 21:06:47
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
-- Base de datos: `scsiguatepeque`
--
DROP DATABASE IF EXISTS `scsiguatepeque`;
CREATE DATABASE IF NOT EXISTS `scsiguatepeque` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `scsiguatepeque`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `Id_Anuncio` varchar(20) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Id_Usuario` varchar(20) NOT NULL,
  `Id_Organizacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios_fotos`
--

CREATE TABLE `anuncios_fotos` (
  `Id_Foto` varchar(20) NOT NULL,
  `Id_Anuncio` varchar(255) NOT NULL,
  `Ubicacion_Foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios_videos`
--

CREATE TABLE `anuncios_videos` (
  `Id_Video` varchar(20) NOT NULL,
  `Id_Anuncio` varchar(255) NOT NULL,
  `Ubicacion_Video` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos_municipalismo`
--

CREATE TABLE `archivos_municipalismo` (
  `Id_Archivo` varchar(20) NOT NULL,
  `Fecha` datetime NOT NULL,
  `PDF` varchar(255) NOT NULL,
  `Id_Categoria` varchar(255) NOT NULL,
  `Id_Usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditorias`
--

CREATE TABLE `auditorias` (
  `Id_Auditoria` varchar(20) NOT NULL,
  `Fecha` datetime NOT NULL,
  `PDF` varchar(255) NOT NULL,
  `Id_Organizacion` varchar(255) NOT NULL,
  `Id_Usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `Id_Categoria` varchar(20) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `Id_Comentario` varchar(20) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncias`
--

CREATE TABLE `denuncias` (
  `Id_Denuncia` varchar(20) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Fecha` datetime NOT NULL,
  `PDF` varchar(255) NOT NULL,
  `Id_Organizacion` varchar(20) NOT NULL,
  `Id_Usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directivas`
--

CREATE TABLE `directivas` (
  `Id_Directiva` varchar(20) NOT NULL,
  `Fecha_Inicial` datetime NOT NULL,
  `Fecha_Final` datetime NOT NULL,
  `Id_Organizacion` varchar(20) NOT NULL,
  `Presidente` varchar(20) NOT NULL,
  `Secretario` varchar(20) NOT NULL,
  `Tesorero` varchar(20) NOT NULL,
  `Fiscal_1` varchar(20) NOT NULL,
  `Fiscal_2` varchar(20) NOT NULL,
  `Vocal_1` varchar(20) NOT NULL,
  `Vocal_2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directivos`
--

CREATE TABLE `directivos` (
  `Id_Directivo` varchar(20) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Apellido_1` varchar(255) NOT NULL,
  `Apellido_2` varchar(255) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `Direccion` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `Id_Editorial` varchar(20) NOT NULL,
  `Fecha` datetime NOT NULL,
  `PDF` varchar(255) NOT NULL,
  `Id_Usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organigramas`
--

CREATE TABLE `organigramas` (
  `Id_Organigrama` varchar(20) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Foto_Organigrama` varchar(255) NOT NULL,
  `Id_Usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizaciones`
--

CREATE TABLE `organizaciones` (
  `Id_Organizacion` varchar(20) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Historia` longtext NOT NULL,
  `Objetivos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sociedad_civil_siguatepeque`
--

CREATE TABLE `sociedad_civil_siguatepeque` (
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL,
  `Historia` longtext NOT NULL,
  `Mision` text NOT NULL,
  `Vision` text NOT NULL,
  `Objetivos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` varchar(20) NOT NULL,
  `Clave` varchar(255) NOT NULL,
  `Estado` int(11) NOT NULL,
  `Id_Directivo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`Id_Anuncio`),
  ADD KEY `Id_Organizacion` (`Id_Organizacion`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `anuncios_fotos`
--
ALTER TABLE `anuncios_fotos`
  ADD KEY `Id_Anuncio` (`Id_Anuncio`),
  ADD KEY `Id_Foto` (`Id_Foto`) USING BTREE;

--
-- Indices de la tabla `anuncios_videos`
--
ALTER TABLE `anuncios_videos`
  ADD KEY `Id_Anuncio` (`Id_Anuncio`),
  ADD KEY `Id_Video` (`Id_Video`) USING BTREE;

--
-- Indices de la tabla `archivos_municipalismo`
--
ALTER TABLE `archivos_municipalismo`
  ADD PRIMARY KEY (`Id_Archivo`),
  ADD KEY `Id_Categoria` (`Id_Categoria`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `auditorias`
--
ALTER TABLE `auditorias`
  ADD PRIMARY KEY (`Id_Auditoria`),
  ADD KEY `Id_Organizacion` (`Id_Organizacion`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`Id_Categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`Id_Comentario`);

--
-- Indices de la tabla `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`Id_Denuncia`),
  ADD KEY `Id_Organizacion` (`Id_Organizacion`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `directivas`
--
ALTER TABLE `directivas`
  ADD PRIMARY KEY (`Id_Directiva`),
  ADD KEY `Id_Organizacion` (`Id_Organizacion`),
  ADD KEY `Presidente` (`Presidente`),
  ADD KEY `Secretario` (`Secretario`),
  ADD KEY `Tesorero` (`Tesorero`),
  ADD KEY `Fiscal_1` (`Fiscal_1`),
  ADD KEY `Fiscal_2` (`Fiscal_2`),
  ADD KEY `Vocal_1` (`Vocal_1`),
  ADD KEY `Vocal_2` (`Vocal_2`);

--
-- Indices de la tabla `directivos`
--
ALTER TABLE `directivos`
  ADD PRIMARY KEY (`Id_Directivo`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`Id_Editorial`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `organigramas`
--
ALTER TABLE `organigramas`
  ADD PRIMARY KEY (`Id_Organigrama`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `organizaciones`
--
ALTER TABLE `organizaciones`
  ADD PRIMARY KEY (`Id_Organizacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Directivo` (`Id_Directivo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD CONSTRAINT `anuncios_ibfk_1` FOREIGN KEY (`Id_Organizacion`) REFERENCES `organizaciones` (`Id_Organizacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anuncios_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `anuncios_fotos`
--
ALTER TABLE `anuncios_fotos`
  ADD CONSTRAINT `anuncios_fotos_ibfk_1` FOREIGN KEY (`Id_Anuncio`) REFERENCES `anuncios` (`Id_Anuncio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `anuncios_videos`
--
ALTER TABLE `anuncios_videos`
  ADD CONSTRAINT `anuncios_videos_ibfk_1` FOREIGN KEY (`Id_Anuncio`) REFERENCES `anuncios` (`Id_Anuncio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `archivos_municipalismo`
--
ALTER TABLE `archivos_municipalismo`
  ADD CONSTRAINT `archivos_municipalismo_ibfk_1` FOREIGN KEY (`Id_Categoria`) REFERENCES `categorias` (`Id_Categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `archivos_municipalismo_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auditorias`
--
ALTER TABLE `auditorias`
  ADD CONSTRAINT `auditorias_ibfk_1` FOREIGN KEY (`Id_Organizacion`) REFERENCES `organizaciones` (`Id_Organizacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auditorias_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `denuncias`
--
ALTER TABLE `denuncias`
  ADD CONSTRAINT `denuncias_ibfk_1` FOREIGN KEY (`Id_Organizacion`) REFERENCES `organizaciones` (`Id_Organizacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `denuncias_ibfk_2` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `directivas`
--
ALTER TABLE `directivas`
  ADD CONSTRAINT `directivas_ibfk_1` FOREIGN KEY (`Id_Organizacion`) REFERENCES `organizaciones` (`Id_Organizacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivas_ibfk_2` FOREIGN KEY (`Presidente`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivas_ibfk_3` FOREIGN KEY (`Secretario`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivas_ibfk_4` FOREIGN KEY (`Tesorero`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivas_ibfk_5` FOREIGN KEY (`Fiscal_1`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivas_ibfk_6` FOREIGN KEY (`Fiscal_2`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivas_ibfk_7` FOREIGN KEY (`Vocal_1`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `directivas_ibfk_8` FOREIGN KEY (`Vocal_2`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD CONSTRAINT `editoriales_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `organigramas`
--
ALTER TABLE `organigramas`
  ADD CONSTRAINT `organigramas_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_Directivo`) REFERENCES `directivos` (`Id_Directivo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
