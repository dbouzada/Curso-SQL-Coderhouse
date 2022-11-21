CREATE DATABASE  IF NOT EXISTS `clubriverplate` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clubriverplate`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: clubriverplate
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_bkp_jugadores`
--

DROP TABLE IF EXISTS `_bkp_jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_bkp_jugadores` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `posicion` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `peso` int NOT NULL,
  `altura` decimal(3,2) NOT NULL,
  `fecha_nacimiento` varchar(100) NOT NULL,
  `fecha_contrato` varchar(100) DEFAULT NULL,
  `nacionalidad` varchar(40) NOT NULL,
  `pie` varchar(40) NOT NULL,
  `partidos_jugados` int DEFAULT NULL,
  `goles` int DEFAULT NULL,
  `asistencias` int DEFAULT NULL,
  `id_futbol` int DEFAULT NULL,
  `id_instituto` int DEFAULT NULL,
  PRIMARY KEY (`id_jugador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_bkp_socios`
--

DROP TABLE IF EXISTS `_bkp_socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_bkp_socios` (
  `Id_Socio` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Edad` int NOT NULL,
  `Id_Pais` int NOT NULL,
  `DNI` int NOT NULL,
  `Trabajo` varchar(100) NOT NULL,
  `Id_Pago` int NOT NULL,
  `Genero` varchar(100) NOT NULL,
  `Id_Departamento` int NOT NULL,
  `CBU` varchar(100) NOT NULL,
  `Ingresos_Mensuales` int NOT NULL,
  PRIMARY KEY (`Id_Socio`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario_id` varchar(100) DEFAULT NULL,
  `dato_viejo` int DEFAULT NULL,
  `dato_nuevo` int DEFAULT NULL,
  `tipo_operacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cuerpo_tecnico`
--

DROP TABLE IF EXISTS `cuerpo_tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuerpo_tecnico` (
  `id_ct` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `funcion` varchar(100) NOT NULL,
  `DNI` int NOT NULL,
  `edad` int NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estado_civil` varchar(100) NOT NULL,
  `id_futbol` int DEFAULT NULL,
  `id_instituto` int DEFAULT NULL,
  PRIMARY KEY (`id_ct`),
  KEY `id_futbol` (`id_futbol`),
  KEY `id_instituto` (`id_instituto`),
  CONSTRAINT `cuerpo_tecnico_ibfk_1` FOREIGN KEY (`id_futbol`) REFERENCES `futbol` (`id_futbol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cuerpo_tecnico_ibfk_2` FOREIGN KEY (`id_instituto`) REFERENCES `instituto_educativo` (`id_instituto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `tipo_pago` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `futbol`
--

DROP TABLE IF EXISTS `futbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futbol` (
  `id_futbol` int NOT NULL AUTO_INCREMENT,
  `plantel` varchar(100) NOT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_futbol`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `futbol_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instituto_educativo`
--

DROP TABLE IF EXISTS `instituto_educativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instituto_educativo` (
  `id_instituto` int NOT NULL AUTO_INCREMENT,
  `establecimiento` varchar(40) NOT NULL,
  `dirección` varchar(40) NOT NULL,
  `telefono` int NOT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_instituto`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `instituto_educativo_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugadores` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `posicion` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `peso` int NOT NULL,
  `altura` decimal(3,2) NOT NULL,
  `fecha_nacimiento` varchar(100) NOT NULL,
  `fecha_contrato` varchar(100) DEFAULT NULL,
  `nacionalidad` varchar(40) NOT NULL,
  `pie` varchar(40) NOT NULL,
  `partidos_jugados` int DEFAULT NULL,
  `goles` int DEFAULT NULL,
  `asistencias` int DEFAULT NULL,
  `id_futbol` int DEFAULT NULL,
  `id_instituto` int DEFAULT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `id_instituto` (`id_instituto`),
  KEY `id_futbol` (`id_futbol`),
  CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`id_instituto`) REFERENCES `instituto_educativo` (`id_instituto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jugadores_ibfk_2` FOREIGN KEY (`id_futbol`) REFERENCES `futbol` (`id_futbol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `id_pais` int NOT NULL AUTO_INCREMENT,
  `pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `socios`
--

DROP TABLE IF EXISTS `socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socios` (
  `Id_Socio` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Edad` int NOT NULL,
  `Id_Pais` int NOT NULL,
  `DNI` int NOT NULL,
  `Trabajo` varchar(100) NOT NULL,
  `Id_Pago` int NOT NULL,
  `Genero` varchar(100) NOT NULL,
  `Id_Departamento` int NOT NULL,
  `CBU` varchar(100) NOT NULL,
  `Ingresos_Mensuales` int NOT NULL,
  PRIMARY KEY (`Id_Socio`),
  KEY `Id_Pais` (`Id_Pais`),
  KEY `Id_Pago` (`Id_Pago`),
  KEY `Id_Departamento` (`Id_Departamento`),
  CONSTRAINT `socios_ibfk_1` FOREIGN KEY (`Id_Pais`) REFERENCES `paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `socios_ibfk_2` FOREIGN KEY (`Id_Pago`) REFERENCES `forma_pago` (`id_pago`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `socios_ibfk_3` FOREIGN KEY (`Id_Departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 14:07:21
