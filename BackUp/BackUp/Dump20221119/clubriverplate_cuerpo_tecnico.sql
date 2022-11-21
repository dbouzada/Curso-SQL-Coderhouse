CREATE DATABASE  IF NOT EXISTS `clubriverplate` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clubriverplate`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: clubriverplate
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo_tecnico`
--

LOCK TABLES `cuerpo_tecnico` WRITE;
/*!40000 ALTER TABLE `cuerpo_tecnico` DISABLE KEYS */;
INSERT INTO `cuerpo_tecnico` VALUES (1,'Marcelo','Gallardo','Director Técnico',21355678,47,'','Casado',1,5),(2,'Hernán','Bujan','Ayudante Tecnico',20783450,48,'','Casado',1,4),(3,'Jonhatan','La Rosa','Director Técnico',28900887,43,'','Casado',2,2),(4,'Javier ','Saviola','Director Técnico',29873450,41,'','Casado',3,3),(5,'Martin','Demichelis','Director Técnico',31355678,41,'','Casado',1,2);
/*!40000 ALTER TABLE `cuerpo_tecnico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19 12:25:50
