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
  `id_pais` varchar(40) NOT NULL,
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
-- Dumping data for table `_bkp_jugadores`
--

LOCK TABLES `_bkp_jugadores` WRITE;
/*!40000 ALTER TABLE `_bkp_jugadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `_bkp_jugadores` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_bkp_socios`
--

LOCK TABLES `_bkp_socios` WRITE;
/*!40000 ALTER TABLE `_bkp_socios` DISABLE KEYS */;
/*!40000 ALTER TABLE `_bkp_socios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basquet`
--

DROP TABLE IF EXISTS `basquet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basquet` (
  `id_BASQUET` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `id_POLI` int DEFAULT NULL,
  PRIMARY KEY (`id_BASQUET`),
  KEY `id_POLI` (`id_POLI`),
  CONSTRAINT `basquet_ibfk_1` FOREIGN KEY (`id_POLI`) REFERENCES `polideportivo` (`id_poli`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basquet`
--

LOCK TABLES `basquet` WRITE;
/*!40000 ALTER TABLE `basquet` DISABLE KEYS */;
INSERT INTO `basquet` VALUES (1,'Hector','Campana',1),(2,'Facundo','Campazzo',1),(3,'Fabricio','Oberto',1),(4,'Juan','Cortijo',1),(5,'Walter','Herrman',1);
/*!40000 ALTER TABLE `basquet` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cant_def_argentinos`
--

DROP TABLE IF EXISTS `cant_def_argentinos`;
/*!50001 DROP VIEW IF EXISTS `cant_def_argentinos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cant_def_argentinos` AS SELECT 
 1 AS `DEFENSORES_CENTRALES_ARGENTINOS`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cant_extranjeros`
--

DROP TABLE IF EXISTS `cant_extranjeros`;
/*!50001 DROP VIEW IF EXISTS `cant_extranjeros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cant_extranjeros` AS SELECT 
 1 AS `EXTRANJEROS`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cantidad_socios_debito`
--

DROP TABLE IF EXISTS `cantidad_socios_debito`;
/*!50001 DROP VIEW IF EXISTS `cantidad_socios_debito`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cantidad_socios_debito` AS SELECT 
 1 AS `SOCIOS_DEBITO`*/;
SET character_set_client = @saved_cs_client;

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
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Futbol'),(2,'Prensa'),(3,'Marketing'),(4,'Polideportivo'),(5,'Educativo'),(6,'Socios');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
INSERT INTO `forma_pago` VALUES (1,'Debito Automatico'),(2,'Tarjeta de Credito'),(3,'Cobrador'),(4,'Contado');
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `futbol`
--

LOCK TABLES `futbol` WRITE;
/*!40000 ALTER TABLE `futbol` DISABLE KEYS */;
INSERT INTO `futbol` VALUES (1,'Primera',1),(2,'Reserva',1),(3,'4ta Categoria',1),(4,'5ta Categoria',1),(5,'6ta Categoria',1),(6,'7ma Categoria',1);
/*!40000 ALTER TABLE `futbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `handball`
--

DROP TABLE IF EXISTS `handball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `handball` (
  `id_handball` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `id_POLI` int DEFAULT NULL,
  PRIMARY KEY (`id_handball`),
  KEY `id_POLI` (`id_POLI`),
  CONSTRAINT `handball_ibfk_1` FOREIGN KEY (`id_POLI`) REFERENCES `polideportivo` (`id_poli`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `handball`
--

LOCK TABLES `handball` WRITE;
/*!40000 ALTER TABLE `handball` DISABLE KEYS */;
INSERT INTO `handball` VALUES (1,'Lucas','Grober',2),(2,'Poli','Roste',2),(3,'Ambar','Rumenigge',2),(4,'Lita','Cuspide',2),(5,'Romina','Loire',2);
/*!40000 ALTER TABLE `handball` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `instituto_educativo`
--

LOCK TABLES `instituto_educativo` WRITE;
/*!40000 ALTER TABLE `instituto_educativo` DISABLE KEYS */;
INSERT INTO `instituto_educativo` VALUES (1,'Jardin ','Av. Figueroa Alcorta 7597',47891114,5),(2,'Primaria','Av. Figueroa Alcorta 7597',47891115,5),(3,'Secundaria','Av. Figueroa Alcorta 7597',47891144,5),(4,'Terciario','Av. Figueroa Alcorta 7597',47892222,5),(5,'Universitario','Av. Figueroa Alcorta 7597',47896778,5);
/*!40000 ALTER TABLE `instituto_educativo` ENABLE KEYS */;
UNLOCK TABLES;

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
  `id_pais` int NOT NULL,
  `pie` varchar(40) NOT NULL,
  `partidos_jugados` int DEFAULT NULL,
  `goles` int DEFAULT NULL,
  `asistencias` int DEFAULT NULL,
  `id_futbol` int DEFAULT NULL,
  `id_instituto` int DEFAULT NULL,
  PRIMARY KEY (`id_jugador`),
  KEY `id_instituto` (`id_instituto`),
  KEY `id_futbol` (`id_futbol`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`id_instituto`) REFERENCES `instituto_educativo` (`id_instituto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jugadores_ibfk_2` FOREIGN KEY (`id_futbol`) REFERENCES `futbol` (`id_futbol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jugadores_ibfk_3` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Franco','Armani','Arquero',35,88,1.89,'16/10/86','31/12/24',1,'Derecho',28,0,0,1,NULL),(2,'Ezequiel','Centurión','Arquero',25,85,1.84,'20/5/95','31/12/24',1,'Derecho',5,0,0,1,NULL),(3,'Franco','Petroli','Arquero',24,82,1.87,'11/6/98','31/12/24',1,'Izquierdo',0,0,0,1,NULL),(4,'Milton','Casco','Lateral Izquierdo',34,71,1.69,'11/4/88','31/12/24',1,'Derecho',25,0,1,1,NULL),(5,'Paulo','Díaz','Defensor Central',27,77,1.82,'25/8/94','31/12/24',8,'Derecho',18,1,0,1,NULL),(6,'Leandro','González Pirez','Defensor Central',30,81,1.86,'26/2/92','31/12/23',1,'Derecho',8,1,0,1,NULL),(7,'Elías','Gómez','Lateral Izquierdo',28,70,1.74,'9/6/94','31/12/25',1,'Izquierdo',18,1,4,1,NULL),(8,'Andres','Herrera','Lateral Derecho',23,75,1.78,'03/11/1998 ','31/12/25',1,'Derecho',19,1,1,1,NULL),(9,'Jonatan','Maidana','Defensor Central',36,81,1.85,'29/7/85','31/12/22',1,'Derecho',5,0,0,1,NULL),(10,'Emanuel','Mammana','Defensor Central',26,70,1.83,'10/2/96','31/12/22',1,'Derecho',23,2,1,1,NULL),(11,'Héctor','Martínez','Defensor Central',24,74,1.85,'21/1/98','31/12/22',1,'Izquierdo',18,1,1,1,NULL),(12,'Felipe','Peña','Defensor Central',21,77,1.80,'05/04/2001 ','31/12/24',1,'Derecho',0,0,0,1,NULL),(13,'Javier','Pinola','Defensor Central',39,75,1.80,'24/2/83','31/12/22',1,'Izquierdo',9,1,0,1,NULL),(14,'Robert','Rojas','Lateral Derecho',26,72,1.76,'30/4/96','31/12/24',16,'Derecho',7,1,0,1,NULL),(15,'Franco','Alfonso','Volante Izquierdo',20,68,1.64,'4/5/02','31/12/23',1,'Derecho',0,0,0,1,NULL),(16,'Rodrigo','Aliendro','Mediocentro',31,72,1.73,'16/2/91','31/12/25',1,'Derecho',13,1,1,1,NULL),(17,'Ezequiel','Barco','Extremo Izquierdo',23,70,1.67,'29/3/99','31/12/23',1,'Derecho',28,3,1,1,NULL),(18,'Nicolás','De La Cruz','Mediocentro',25,71,1.67,'01/06/1997 ','31/12/22',11,'Derecho',27,4,5,1,NULL),(19,'Agustín','Palavecino','Mediocentro',25,74,1.79,'9/11/96','31/12/24',1,'Derecho',27,4,4,1,NULL),(20,'José','Paradela','Volante Izquierdo',23,75,1.80,'15/12/1998 ','31/12/25',1,'Izquierdo',18,1,2,1,NULL),(21,'Tomás','Pochettino','Mediocentro',26,71,1.80,'1/2/96','31/12/22',1,'Derecho',13,1,1,1,NULL),(22,'Enzo','Pérez','Pivote',36,77,1.79,'22/02/1986 ','31/12/23',1,'Derecho',26,0,0,1,NULL),(23,'Juan','Quintero','Mediocentro Ofensivo',29,78,1.69,'18/1/93','31/12/22',3,'Izquierdo',21,1,4,1,NULL),(24,'Santiago','Simon','Extremo Derecho',20,74,1.80,'13/6/02','31/12/24',1,'Derecho',24,3,5,1,NULL),(25,'Pablo','Solari','Extremo Derecho',21,77,1.79,'22/3/01','31/12/26',1,'Derecho',14,5,0,1,NULL),(26,'Bruno','Zuculini','Pivote',29,74,1.82,'2/4/93','31/12/23',1,'Derecho',17,1,0,1,NULL),(27,'Lucas','Beltrán','Delantero Centro',21,77,1.76,'29/03/2001 ','31/12/25',1,'Derecho',20,4,2,1,NULL),(28,'Miguel','Borja','Delantero Centro',29,84,1.84,'26/1/93','31/12/25',3,'Derecho',15,6,1,1,NULL),(29,'Joaquín','Panichelli','Delantero Centro',19,77,1.97,'07/10/2002 ','31/12/24',1,'Derecho',0,0,0,1,NULL),(30,'Matías','Suárez','Extremo Izquierdo',34,75,1.83,'9/5/88','31/12/23',1,'Derecho',13,5,1,1,NULL),(31,'Flabian','Londoño','Delantero Centro',21,73,1.80,'09/07/2000 ','31/12/24',3,'Derecho',0,0,0,2,NULL),(32,'Leonardo','Diaz','Arquero',21,77,1.82,'22/01/2000 ','31/12/24',1,'Derecho',28,0,0,2,NULL),(33,'Leandro','Peña','Defensor Central',19,70,1.85,'7/5/03','31/12/23',1,'Derecho',25,0,1,2,NULL),(34,'Francisco','Petrasso','Defensor Central',20,82,1.91,'28/2/02','31/12/24',1,'Derecho',18,1,0,2,NULL),(35,'Lucas','Monzon','Defensor Central',19,74,1.82,'9/1/03','31/12/24',1,'Izquierdo',8,1,0,2,NULL),(36,'Felipe','Salomoni','Lateral Izquierdo',19,71,1.79,'28/03/2003 ','31/12/25',1,'Izquierdo',18,1,4,2,NULL),(37,'Franco','Paredes','Lateral Derecho',23,77,1.76,'18/03/1999 ','31/12/23',1,'Derecho',19,1,1,2,NULL),(38,'Manuel','Guillen','Lateral Derecho',21,71,1.78,'06/09/2001 ','31/12/24',1,'Derecho',26,0,0,2,4),(39,'Sebastian','Sanchez','Pivote',20,72,1.72,'02/02/2002 ','31/12/24',1,'Derecho',21,1,4,2,NULL),(40,'Valentin','Gargiulo','Mediocentro',21,71,1.76,'9/2/01','31/12/24',1,'Derecho',24,3,5,2,NULL),(41,'Axel','Encinas','Mediocentro Ofensivo',18,69,1.73,'7/2/04','31/12/24',1,'Derecho',14,5,0,2,4),(42,'Esteban','Fernandez','Mediocentro Ofensivo',20,72,1.72,'6/1/02','31/12/24',1,'Derecho',17,1,0,2,NULL),(43,'Matias','Gallardo','Mediocentro Ofensivo',18,68,1.75,'24/11/03','31/12/25',1,'Izquierdo',20,4,2,2,NULL),(44,'Oswaldo','Valencia','Delantero Centro',19,77,1.68,'13/3/03','31/12/25',3,'Derecho',15,6,1,2,4),(45,'Claudio','Echeverri','Mediocentro Ofensivo',16,63,1.70,'2/1/06','31/12/25',1,'Derecho',20,4,2,3,3),(46,'Diego','Guallama','Delantero Centro',18,70,1.72,'8/1/04','31/12/25',1,'Derecho',15,6,1,3,3);
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Nuevo_jugador` AFTER INSERT ON `jugadores` FOR EACH ROW INSERT INTO _BKP_JUGADORES (`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,
`altura`,`fecha_nacimiento`,`fecha_contrato`,`id_pais`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`)
values (NEW.id_jugador, NEW.nombre, NEW.apellido, NEW.posicion, new.edad, new.peso,new.altura,
 new.fecha_nacimiento, new.fecha_contrato, new.id_pais, new.pie, new.partidos_jugados, new.goles, 
 new.asistencias, new.id_futbol, new.id_instituto) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `NUEVOS_GOLES` AFTER UPDATE ON `jugadores` FOR EACH ROW insert into BITACORA
(fecha,hora, usuario_id, dato_viejo, dato_nuevo,tipo_operacion)
values
(curdate(), curtime(),session_user(),OLD.goles,NEW.goles, 'se actualizan la cantidad de goles') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `marketing`
--

DROP TABLE IF EXISTS `marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing` (
  `id_marketing` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_marketing`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `marketing_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketing`
--

LOCK TABLES `marketing` WRITE;
/*!40000 ALTER TABLE `marketing` DISABLE KEYS */;
INSERT INTO `marketing` VALUES (1,'Laura','Gorosito',3),(2,'Victor','Donadio',3),(3,'Adriana','Roman',3),(4,'Pedro','Uliambre',3),(5,'Lita','Sucarrat',3);
/*!40000 ALTER TABLE `marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `miembros_ct_universidad`
--

DROP TABLE IF EXISTS `miembros_ct_universidad`;
/*!50001 DROP VIEW IF EXISTS `miembros_ct_universidad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `miembros_ct_universidad` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `APELLIDO`,
 1 AS `ESTABLECIMIENTO`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `natacion`
--

DROP TABLE IF EXISTS `natacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `natacion` (
  `id_natacion` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `id_POLI` int DEFAULT NULL,
  PRIMARY KEY (`id_natacion`),
  KEY `id_POLI` (`id_POLI`),
  CONSTRAINT `natacion_ibfk_1` FOREIGN KEY (`id_POLI`) REFERENCES `polideportivo` (`id_poli`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `natacion`
--

LOCK TABLES `natacion` WRITE;
/*!40000 ALTER TABLE `natacion` DISABLE KEYS */;
INSERT INTO `natacion` VALUES (1,'Ian','Torphe',4),(2,'Andres','Solioz',4),(3,'Gabriel','Medina',4),(4,'Cristopher','Wandrach',4),(5,'Atila','Molnar',4);
/*!40000 ALTER TABLE `natacion` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Argentina'),(2,'Brasil'),(3,'Colombia'),(4,'Peru'),(5,'Australia'),(6,'Estados Unidos'),(7,'Canada'),(8,'Chile'),(9,'Italia'),(10,'España'),(11,'Uruguay'),(12,'China'),(13,'Japon'),(14,'Singapur'),(15,'Polonia'),(16,'Paraguay');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polideportivo`
--

DROP TABLE IF EXISTS `polideportivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `polideportivo` (
  `id_poli` int NOT NULL AUTO_INCREMENT,
  `deporte` varchar(100) NOT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_poli`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `polideportivo_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polideportivo`
--

LOCK TABLES `polideportivo` WRITE;
/*!40000 ALTER TABLE `polideportivo` DISABLE KEYS */;
INSERT INTO `polideportivo` VALUES (1,'Basquet',4),(2,'Handball',4),(3,'Voley',4),(4,'Natacion',4);
/*!40000 ALTER TABLE `polideportivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prensa`
--

DROP TABLE IF EXISTS `prensa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prensa` (
  `id_prensa` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_prensa`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `prensa_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamentos` (`id_departamento`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prensa`
--

LOCK TABLES `prensa` WRITE;
/*!40000 ALTER TABLE `prensa` DISABLE KEYS */;
INSERT INTO `prensa` VALUES (1,'Juan','Larralde',2),(2,'Ramon','Carrillo',2),(3,'Esteban','Humedes',2),(4,'Franco','Isura',2),(5,'Maria','Linfal',2);
/*!40000 ALTER TABLE `prensa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `promedio_ingresos_mensuales_socios`
--

DROP TABLE IF EXISTS `promedio_ingresos_mensuales_socios`;
/*!50001 DROP VIEW IF EXISTS `promedio_ingresos_mensuales_socios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `promedio_ingresos_mensuales_socios` AS SELECT 
 1 AS `avg(ingresos_mensuales)`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (1,'Jade','Holmes','317-5381','duis.sit.amet@aol.comar',21,1,49544474,'Urna Justo Institute',1,'Mujer',6,'BG63DUHQ53915502193327',434233),(2,'Rhiannon','Shepherd','611-7579','risus.at@aol.comar',90,1,27071748,'Dapibus Consulting',2,'Mujer',6,'IL832114568724497160284',348757),(3,'Deacon','Ramos','134-1035','mattis@aol.comar',79,1,37039053,'Ullamcorper Duis At Incorporated',1,'Hombre',6,'NL79EQRF5838023645',98554),(4,'Alea','Bruce','187-3733','vehicula@protonmail.comar',38,1,54230463,'Suspendisse Commodo Tincidunt LLP',1,'Mujer',6,'FR3496518152947057761704373',328987),(5,'Kelly','Yates','446-6363','vitae.erat@protonmail.comar',94,1,49990574,'Auctor Industries',1,'Mujer',6,'BE26485576773077',2525),(6,'Nerea','Blevins','548-4335','aliquam.eros@protonmail.comar',44,1,15862727,'Urna Ut PC',1,'Hombre',6,'PL87943783677244464025504684',408074),(7,'Hannah','Williams','285-5418','velit@outlook.comar',39,1,29154250,'Penatibus Corporation',1,'Hombre',6,'MD1328111912477251962089',458589),(8,'Rowan','Thompson','756-4704','vulputate@google.comar',51,1,42396466,'Faucibus Leo LLC',1,'Hombre',6,'FR4971185235155052138469420',218012),(9,'Celeste','Reed','315-0506','dolor.fusce.feugiat@aol.comar',16,1,42296602,'Nulla Cras Associates',1,'Hombre',6,'SK6266218224927613659219',26816),(10,'Willa','Booker','699-8998','erat.volutpat@protonmail.comar',35,1,35175695,'Enim Foundation',1,'Hombre',6,'NL71BTOY3719622478',498994),(11,'Alisa','Vaughan','867-7394','vel@icloud.comar',71,1,39034702,'Vulputate Corporation',2,'Hombre',6,'CR9288094000413995298',162467),(12,'Hedwig','Kemp','206-2779','viverra@outlook.comar',34,1,39065518,'Ligula Aenean Corporation',1,'Hombre',6,'DO48159323317261471524947952',40907),(13,'Ignacia','James','923-7616','sociosqu.ad.litora@aol.comar',79,1,34948298,'Vel Associates',2,'Mujer',6,'FI1540682476302171',487106),(14,'Karen','Soto','564-9517','phasellus.elit@aol.comar',92,1,18557949,'Cubilia Curae Ltd',2,'Mujer',6,'SI21847663375134843',75347),(15,'Jordan','Austin','274-7507','luctus@protonmail.comar',42,1,46743052,'Consectetuer Adipiscing PC',2,'Mujer',6,'LT118618283215112871',411999),(16,'Hedley','Riley','231-8753','dolor.dapibus.gravida@hotmail.comar',74,1,38595128,'Nulla Corporation',2,'Hombre',6,'SI78351264142564534',283299),(17,'Maya','Fox','247-8484','integer.tincidunt@yahoo.comar',18,1,48975941,'Praesent Eu Dui Institute',1,'Hombre',6,'BG18PWDM71287057365205',84198),(18,'Isaac','Clark','115-8838','malesuada.augue@aol.comar',68,1,46839830,'Non Enim Consulting',1,'Mujer',6,'NO3023651707574',375729),(19,'Caldwell','Bowman','827-1447','vulputate.mauris@outlook.comar',43,1,45815520,'Sagittis Semper Industries',1,'Mujer',6,'CR7162935974448321178',242859),(20,'Tatyana','Church','533-3621','pellentesque.massa@yahoo.comar',87,1,22448141,'Convallis LLC',4,'Hombre',6,'CH8665512886433723869',350202),(21,'Gary','Rich','232-8821','sodales@google.comar',83,1,53695442,'Amet Orci LLC',1,'Mujer',6,'IE92DDMC71454595530355',418597),(22,'Dean','Prince','390-4761','amet.consectetuer@outlook.comar',80,1,39448719,'Nec Ante Incorporated',3,'Hombre',6,'DO58991776724435498461427511',309189),(23,'Lucius','Moss','424-6677','nunc.ullamcorper.eu@protonmail.comar',75,1,27667195,'Amet Risus Donec Company',1,'Mujer',6,'SI15326178883311312',211144),(24,'Demetrius','Emerson','472-7555','erat@google.comar',54,1,17952235,'Nec Urna PC',4,'Hombre',6,'LU861888358643576063',24671),(25,'Louis','Carr','437-8238','egestas@outlook.comar',68,1,30238304,'Luctus Sit Amet Corp.',3,'Hombre',6,'MU3618171451543244713106143980',286916),(26,'Shea','Johnston','373-8422','arcu.sed@aol.comar',87,1,21299484,'Primis Corporation',3,'Mujer',6,'IT348IOJSI13206857886034134',365147),(27,'Walter','Trevino','817-6384','est@yahoo.comar',43,1,48820037,'Non Lacinia Ltd',3,'Hombre',6,'SA9166866296883695285580',267486),(28,'Drew','Salas','753-4165','lacus.vestibulum@protonmail.comar',87,1,35941475,'Lorem Lorem Luctus Foundation',3,'Mujer',6,'FI2497723582514026',362735),(29,'Quon','Clarke','658-0734','interdum.nunc.sollicitudin@google.comar',67,1,45407113,'Et Ultrices Incorporated',2,'Mujer',6,'DO69562148821584463123876065',414302),(30,'Harlan','Davenport','785-1454','arcu@yahoo.comar',79,1,31388942,'Eget Volutpat Foundation',2,'Mujer',6,'PS172307875182764697207765497',97407),(31,'Warren','Irwin','530-4064','nullam.suscipit@outlook.comar',83,1,17346658,'Maecenas Iaculis Limited',2,'Mujer',6,'PT74510337291537354586124',144368),(32,'Iliana','Barlow','340-8894','dolor@yahoo.comar',28,1,12519702,'Praesent Luctus Curabitur Institute',1,'Hombre',6,'IT642TNVCI55395287377204388',492844),(33,'Murphy','Goff','636-2563','laoreet@yahoo.comar',65,1,9856944,'Ac Corp.',1,'Mujer',6,'IL332120231663219865471',31857),(34,'Laura','Stein','340-2793','mauris.morbi.non@google.comar',58,1,46106379,'Natoque Penatibus LLC',1,'Hombre',6,'GE56786360133767519334',453180),(35,'Dora','Monroe','443-4335','rhoncus.id@protonmail.comar',69,1,31230707,'Nunc Incorporated',1,'Mujer',6,'RO19EKCX7218937887438197',369402),(36,'Leandra','Merrill','727-2849','nam.nulla@protonmail.comar',22,1,25420380,'Pharetra Industries',1,'Mujer',6,'CY68453285568656280181429783',456812),(37,'Ira','Le','940-6883','mollis.non@protonmail.comar',45,1,31541110,'In Company',1,'Mujer',6,'NL28ZQBC1602960752',393211),(38,'Scarlett','Gould','912-7383','aliquet@yahoo.comar',84,1,32832838,'Facilisis Suspendisse Commodo Limited',1,'Mujer',6,'CY39753392464785205678294388',204042),(39,'Irma','Nielsen','686-9955','lacus.quisque@outlook.comar',29,1,34569957,'Ipsum Nunc Industries',1,'Hombre',6,'GI02EEFM913538766614181',225253),(40,'Noelle','Watts','892-6668','nec@yahoo.comar',92,1,20871717,'Phasellus In LLC',1,'Hombre',6,'VG7247730563115739795317',413649),(41,'Jaquelyn','Buchanan','244-3556','erat@yahoo.comar',22,1,46756785,'Purus Maecenas Libero Incorporated',1,'Mujer',6,'SM6226830935345874263487357',461048),(42,'Nathaniel','Whitley','723-6779','sed.id@outlook.comar',69,1,43848390,'Tincidunt Neque Incorporated',1,'Mujer',6,'GT87906563540130111274142256',85371),(43,'Armando','Irwin','640-7332','vivamus.rhoncus@hotmail.comar',60,1,38580284,'Duis Industries',1,'Hombre',6,'AD1377117433620744657689',231616),(44,'Karleigh','Young','147-6172','et.risus@google.comar',31,1,13504762,'Euismod Enim Inc.',1,'Hombre',6,'IS374755932565153783909147',89981),(45,'Macey','Vance','787-2717','sed@hotmail.comar',93,1,49406154,'Proin PC',1,'Mujer',6,'SK7402995824406412105574',338394),(46,'Oliver','Fletcher','715-2481','et@google.comar',53,1,12375019,'Phasellus LLC',1,'Mujer',6,'RS73411678148671118743',457822),(47,'Eve','Mayer','248-1756','eu.ultrices.sit@hotmail.comar',80,1,35575617,'Morbi Non LLP',1,'Hombre',6,'RO33BACT3007875323733717',46034),(48,'Mufutau','Chase','518-0040','praesent.eu@aol.comar',91,1,16535963,'Libero Foundation',1,'Hombre',6,'CZ6522118696316314841935',306712),(49,'Liberty','Parrish','215-5161','aliquam.ultrices@hotmail.comar',83,1,12134363,'Elementum At Inc.',1,'Hombre',6,'GI39YNIX315288288240022',464617),(50,'Eagan','Mcclain','374-8320','lectus.rutrum@icloud.comar',77,1,17666830,'Pellentesque PC',1,'Hombre',6,'HR8258145454664164118',195011),(51,'Moses','Washington','374-3340','lacus.aliquam.rutrum@aol.comar',31,1,42589977,'Elementum At Egestas Ltd',1,'Hombre',6,'GL8610325984651049',387413),(52,'William','Carney','521-9281','quisque.porttitor.eros@icloud.comar',44,1,20303152,'Non Justo Associates',1,'Hombre',6,'MK81934357134817846',233945),(53,'Jakeem','Edwards','574-7777','viverra.maecenas@yahoo.comar',73,1,24336742,'Bibendum LLP',1,'Mujer',6,'GI58MUXR307669843394985',154682),(54,'Maia','Finch','981-1813','mauris.ut@outlook.comar',33,1,46992962,'Dapibus Rutrum Incorporated',1,'Hombre',6,'PS568889615214865671561613338',367354),(55,'Celeste','Hatfield','899-2383','quis@hotmail.comar',58,1,23818330,'Elementum Lorem Ut Institute',1,'Mujer',6,'TN3635754883115558872765',485444),(56,'Nolan','Valenzuela','480-3563','nunc@hotmail.comar',57,1,51157821,'Convallis Convallis Corporation',1,'Hombre',6,'AZ40608215463666236565043607',397967),(57,'Rigel','Sosa','425-6506','ac.mattis.velit@aol.comar',29,1,46553648,'Imperdiet Industries',1,'Mujer',6,'GR8386227645672184555544164',244810),(58,'Danielle','Patel','501-1578','elementum@hotmail.comar',39,1,14871483,'Magnis Corporation',1,'Mujer',6,'DO65775974747337670337112714',217347),(59,'Cara','Ingram','682-6627','vestibulum.ut@aol.comar',21,1,18778255,'Ullamcorper Duis Cursus Inc.',1,'Mujer',6,'NL81GJNU3573332214',420020),(60,'Valentine','Mercado','757-8161','phasellus.dolor@outlook.comar',82,1,50327053,'Libero Proin Incorporated',1,'Hombre',6,'LT487954527163364135',312391),(61,'Fritz','Campbell','476-2546','enim@aol.comar',59,1,40289294,'Sed Pede Limited',1,'Hombre',6,'DK4921482654561187',18145),(62,'Colt','Bolton','878-4451','risus.duis@icloud.comar',64,1,35121242,'Enim Consulting',1,'Hombre',6,'MD1683381126331976451893',171956),(63,'Sacha','Noble','344-2441','cras.lorem.lorem@hotmail.comar',46,1,7109356,'Massa Lobortis Ultrices Ltd',1,'Mujer',6,'SE0690721027615828254576',50546),(64,'Kasimir','Gardner','304-4655','molestie@outlook.comar',19,1,41874838,'Cum Sociis Ltd',1,'Mujer',6,'SI34317553885102385',57015),(65,'Preston','Sweeney','655-7039','fringilla.ornare.placerat@hotmail.comar',41,1,50382940,'Et Commodo At LLP',1,'Mujer',6,'FI3702582369894874',125790),(66,'Emi','Cannon','333-2213','dui@protonmail.comar',87,1,36258784,'Arcu Vestibulum Corp.',1,'Hombre',6,'MK80498214227361380',26937),(67,'Miranda','Kane','516-8526','vulputate.eu@icloud.comar',75,1,22445416,'Etiam Bibendum Fermentum LLC',1,'Hombre',6,'SA3576264174234292210603',350983),(68,'Heidi','Schultz','412-7818','lectus.justo@aol.comar',64,1,34756071,'Lacus Limited',1,'Hombre',6,'BA860764626131296295',417067),(69,'Noelani','Rivas','387-1451','tellus@icloud.comar',41,1,17533978,'Fringilla Inc.',1,'Hombre',6,'BA708161470451487161',407619),(70,'Chelsea','Day','666-7448','arcu.curabitur.ut@outlook.comar',37,1,36445673,'Enim Gravida Corporation',1,'Hombre',6,'AZ05158792630576363556848764',32455),(71,'Claudia','Bowen','773-4098','sagittis.duis@icloud.comar',92,1,14574436,'Et Consulting',1,'Hombre',6,'SA8550848676684166432658',319054),(72,'Beck','Faulkner','215-2236','non@outlook.comar',17,1,15398076,'Aliquam Vulputate Inc.',1,'Hombre',6,'AE861044157127218161726',493735),(73,'Brenda','Wells','895-5002','arcu.vivamus@aol.comar',29,1,6171839,'At Sem Associates',1,'Mujer',6,'EE315195548915066120',157567),(74,'Brianna','Clay','777-9758','a.dui@icloud.comar',54,1,39915856,'Euismod Associates',1,'Mujer',6,'IL638761692233544568863',35083),(75,'Maxwell','Ayers','972-2141','nunc.ac@icloud.comar',71,1,43389691,'Fames Ac Turpis Limited',1,'Hombre',6,'NO0750528683813',399326),(76,'Marvin','Cantu','873-7147','fusce@icloud.comar',27,1,53831269,'Aliquam Gravida Institute',1,'Hombre',6,'TR275122855719826985418572',79707),(77,'Jamalia','Williams','973-2866','rutrum@protonmail.comar',31,1,48547284,'Venenatis Corp.',1,'Hombre',6,'SK9887343773563327407821',164826),(78,'Duncan','Dalton','845-9129','nam@hotmail.comar',32,1,22459813,'Tincidunt Congue Turpis LLP',1,'Hombre',6,'LV77JSKN9355874072855',316328),(79,'Cooper','Forbes','744-3371','aliquam@icloud.comar',77,1,14596263,'Neque Et Limited',1,'Hombre',6,'TN7802361603254904642012',495754),(80,'Cooper','Wyatt','256-2625','auctor@outlook.comar',38,1,23206955,'Ut Lacus Limited',1,'Hombre',6,'AZ09733113503924748322267798',99103),(81,'Cullen','Washington','235-3917','et.magnis.dis@google.comar',75,1,52615842,'Nulla Cras Limited',1,'Mujer',6,'LI6146651882193381403',265998),(82,'Hedy','Larson','773-4625','tempus@aol.comar',33,1,45276828,'Ante Iaculis LLP',1,'Mujer',6,'AL39358656934362521360711176',237152),(83,'Madison','Lane','313-1641','suspendisse.sed@outlook.comar',59,1,51500247,'Nunc Lectus Inc.',1,'Mujer',6,'IE77MTYT31429232254661',67605),(84,'Bertha','Duke','641-9226','sed.nunc@yahoo.comar',25,1,52399758,'Massa Suspendisse Eleifend Consulting',1,'Mujer',6,'LB28286132363287836511271959',342696),(85,'Yoshi','Huffman','632-2467','egestas.aliquam@icloud.comar',70,1,34145542,'Magnis Dis Parturient Industries',1,'Hombre',6,'MT92CZNT90254400347844856449385',207084),(86,'Neve','Tanner','848-6892','iaculis@outlook.comar',41,1,22488398,'Dolor Fusce PC',1,'Mujer',6,'SE1670779575662357426920',294081),(87,'Hayfa','Diaz','454-5421','sodales.purus@yahoo.comar',71,1,11422400,'Urna Nec Luctus Ltd',1,'Mujer',6,'MK40213031754160181',17323),(88,'Jessica','Burke','227-6721','tincidunt.tempus@yahoo.comar',95,1,19070303,'Velit Quisque Limited',1,'Hombre',6,'BA518795490371594053',279661),(89,'Melvin','Koch','682-8465','morbi.quis@icloud.comar',84,1,21206397,'Arcu Vestibulum Institute',1,'Hombre',6,'PK5341131244585796722716',494335),(90,'Ina','Goodman','925-4463','placerat@google.comar',94,1,17873091,'Primis LLC',1,'Hombre',6,'LU651281712171485861',156360),(91,'Clio','Alford','841-1522','dolor.tempus.non@yahoo.comar',30,1,41339943,'Nonummy Ipsum Inc.',1,'Mujer',6,'NL81OBQT2818142712',357808),(92,'Vivian','Hahn','778-0624','elit.pretium@outlook.comar',17,1,49086952,'Ipsum Non Incorporated',1,'Hombre',6,'SE7461504321892263125303',449103),(93,'Maite','Mckinney','582-7546','non@icloud.comar',21,1,44469520,'Proin Institute',1,'Mujer',6,'GL8049814099415334',366866),(94,'Dacey','Orr','228-9536','lobortis.quis@outlook.comar',66,1,15678065,'Vulputate Posuere Associates',1,'Hombre',6,'GT30662157117663714855638488',284148),(95,'Kim','Douglas','678-5373','ligula@yahoo.comar',26,1,48400318,'Tempus Eu LLC',1,'Hombre',6,'DO44212745383166623688144026',222081),(96,'Quinlan','Peck','577-4266','est@aol.comar',69,1,23132572,'Egestas Associates',1,'Mujer',6,'BH55504812823522396633',98267),(97,'Jamal','Macdonald','693-9074','urna@google.comar',82,1,24197541,'Elit Pretium PC',1,'Mujer',6,'FI6302731012747853',331175),(98,'Celeste','Castillo','215-5616','elit.pharetra.ut@aol.comar',47,1,43768995,'Gravida Aliquam Incorporated',1,'Hombre',6,'KW9271771674824793351335298363',476380),(99,'Emerald','Berg','565-4512','commodo.tincidunt@google.comar',37,1,38978510,'Magnis Dis Parturient Institute',1,'Mujer',6,'CY49887629684447556478251324',397683),(100,'Shelby','Perry','745-4448','eu.odio@aol.comar',35,1,16330803,'Congue In LLC',1,'Mujer',6,'LV12OWTM3383358544421',92879),(101,'Stacey','Collins','616-2628','nulla@outlook.comar',81,1,15746209,'Suspendisse Commodo Tincidunt Ltd',1,'Hombre',6,'PK6806531123632023731526',334247),(102,'Danielle','Campos','838-7465','magna@icloud.comar',55,1,14445389,'Imperdiet Dictum Limited',1,'Mujer',6,'VG4906279310133476018291',497434),(103,'Samson','Le','886-9834','aliquet.vel@hotmail.comar',21,1,35616347,'Enim Inc.',1,'Hombre',6,'PS877083252431138121187645136',1184),(104,'Wynter','Farmer','943-5823','odio.phasellus.at@hotmail.comar',71,1,39435428,'Ullamcorper Associates',1,'Hombre',6,'BA486689337310714307',238267),(105,'Luke','Wade','984-8884','tristique.neque@hotmail.comar',36,1,14547842,'Donec Est Inc.',1,'Mujer',6,'DE87525117469584534152',58960),(106,'Zelenia','Kramer','310-7395','tempus.lorem@protonmail.comar',27,1,16258654,'Convallis PC',1,'Mujer',6,'PS056650111410054317127360857',291584),(107,'Jaquelyn','Montgomery','481-1565','vulputate@hotmail.comar',80,1,12038916,'Porttitor Interdum Ltd',1,'Mujer',6,'BG10KOMJ81436124053684',126646),(108,'Unity','Carson','385-1481','elit.a.feugiat@aol.comar',90,1,40761414,'Lectus Justo Institute',1,'Mujer',6,'BH51564465743961193769',226083),(109,'Bevis','Chapman','745-4233','euismod@icloud.comar',43,1,7638672,'Et Arcu Ltd',1,'Hombre',6,'SE3417675933025022993257',268715),(110,'Melinda','Preston','684-8476','ut.eros@google.comar',22,1,35313302,'Egestas Blandit Nam LLP',1,'Hombre',6,'FO7357460723804941',140559),(111,'Hamish','Murphy','353-3449','duis.at@icloud.comar',71,1,34025137,'Vivamus Rhoncus Ltd',1,'Mujer',6,'CY48718766474438855771441254',192645),(112,'Hector','Short','781-4142','tellus.id@yahoo.comar',90,1,34946867,'Ante Vivamus Incorporated',1,'Hombre',6,'LV14YTVX5322188134217',304115),(113,'Owen','Joyce','756-6670','tellus.imperdiet@google.comar',28,1,34995791,'Vitae Aliquet Nec Company',1,'Hombre',6,'SI09543970202261571',1063),(114,'Veda','Holland','628-5743','tortor.nibh@icloud.comar',77,1,18513680,'Porta Elit Incorporated',1,'Mujer',6,'IS817486321333832624462304',431683),(115,'Dennis','Holt','488-6155','quis.pede@hotmail.comar',93,1,20348068,'Eu Tellus Industries',1,'Hombre',6,'KW4838155896379941566636763466',398421),(116,'Jesse','Yang','242-4801','eget.ipsum@yahoo.comar',64,1,40620891,'Augue Malesuada Consulting',1,'Mujer',6,'TN5381928453409044740902',354871),(117,'Melanie','Stevens','495-6161','faucibus@hotmail.comar',58,1,13238332,'Augue Associates',1,'Hombre',6,'MU4516186150191621677983441638',175597),(118,'Buffy','Mccarty','915-1513','risus.varius.orci@protonmail.comar',26,1,30696690,'Vulputate LLC',1,'Hombre',6,'AE877877104620636233606',448407),(119,'Keaton','Graves','432-4754','amet.orci@aol.comar',78,1,36346876,'Mauris Ipsum LLC',1,'Hombre',6,'LI7251255224733827418',131747),(120,'Lance','Mitchell','838-8080','duis.cursus.diam@icloud.comar',19,1,48378836,'Quis Limited',1,'Hombre',6,'GI93NVKT253977141247472',466470),(121,'Lance','Black','222-1684','nulla.integer@yahoo.comar',65,1,11629702,'Habitant Associates',1,'Hombre',6,'RO68GHAZ1458352613076833',158998),(122,'Jenna','Singleton','371-4618','euismod.in@google.comar',73,1,28310378,'Convallis Ante Lectus Foundation',1,'Mujer',6,'AE821414791684134626786',439381),(123,'Aline','Buck','578-0618','eu.neque@protonmail.comar',80,1,15241827,'Nibh Dolor Foundation',1,'Mujer',6,'DK7275141219448619',364814),(124,'Quinlan','Christian','778-2996','blandit@aol.comar',21,1,36887638,'Mauris Corporation',1,'Hombre',6,'MU8163191855131844447316124706',55340),(125,'Brenden','Schmidt','506-6645','natoque.penatibus@protonmail.comar',64,1,38271839,'Senectus Et Netus LLP',1,'Hombre',6,'IL895516346976223263784',336188),(126,'Joseph','May','891-4823','lorem.sit.amet@yahoo.comar',83,1,39059171,'Lorem Vitae Odio Associates',1,'Mujer',6,'DE86323604747962382949',232284),(127,'Odysseus','Hughes','787-2734','arcu.eu.odio@google.comar',65,1,13039636,'Nulla Vulputate LLP',1,'Mujer',6,'GL8763665960637760',173069),(128,'Adara','Frye','808-7946','euismod.est.arcu@google.comar',52,1,21952776,'Hendrerit Incorporated',1,'Mujer',6,'HU29388382376279612551335725',410880),(129,'Jelani','Moore','397-9612','libero.donec@hotmail.comar',73,1,33797627,'Ipsum Limited',1,'Hombre',6,'TR329768517456725468413133',443136),(130,'Miranda','Casey','488-1688','mattis.semper.dui@yahoo.comar',94,1,50905064,'Malesuada Ut Inc.',1,'Mujer',6,'AL32472824015797878277203216',229030),(131,'Hammett','Poole','601-2106','auctor.quis@protonmail.comar',41,1,26590901,'Convallis Convallis Corp.',1,'Mujer',6,'IL853721872738434174644',300771),(132,'Solomon','Morse','133-7436','sagittis.semper@hotmail.comar',88,1,33319926,'Suspendisse Tristique Neque Foundation',1,'Hombre',6,'ES1146725217751763566107',47897),(133,'Rudyard','Battle','784-0228','in.faucibus.orci@protonmail.comar',56,1,48686224,'Aliquam Erat Inc.',1,'Mujer',6,'DK6128171181945582',406363),(134,'Eliana','Bruce','871-6348','purus.gravida@icloud.comar',49,1,38971583,'Nulla Cras Institute',1,'Mujer',6,'NL88PRJT4861890413',302499),(135,'Cathleen','Mays','222-4250','ut.molestie@outlook.comar',58,1,41857932,'Dapibus Id Associates',2,'Hombre',6,'AZ58982153214873833758562532',123902),(136,'Hasad','Reid','316-7277','nisi.nibh@google.comar',72,1,21947676,'Nec PC',1,'Mujer',6,'TN4734276951192442365928',216794),(137,'Harding','Holmes','978-5963','dui.cras@google.comar',53,1,6646220,'Amet Ultricies Sem Associates',1,'Hombre',6,'FO8823667149783694',178045),(138,'Brenden','Lamb','854-7915','libero@hotmail.comar',36,1,35309443,'Duis Volutpat Associates',1,'Mujer',6,'NL92MNCJ5752472635',130407),(139,'Belle','Sharpe','581-3808','nisl@protonmail.comar',84,1,19647346,'Neque Venenatis Lacus Inc.',1,'Hombre',6,'ES5542609745326872618272',231838),(140,'Knox','Gilliam','506-6677','quis.tristique@outlook.comar',77,1,9816215,'Ipsum Dolor LLP',1,'Hombre',6,'IL647535326203076713880',128835),(141,'Carly','Gamble','661-1304','lacus.aliquam@hotmail.comar',24,1,32425741,'Enim Commodo LLC',1,'Hombre',6,'NL52DVWK8314494737',3342),(142,'Harding','Gibbs','592-2985','ullamcorper@google.comar',88,1,37020743,'Auctor Velit Corporation',1,'Mujer',6,'GL1242113812769042',264893),(143,'Joel','Newton','633-2463','non.enim@google.comar',83,1,5426556,'Lorem Tristique Aliquet Inc.',1,'Hombre',6,'PK2014756013015156744731',386772),(144,'Mollie','Beasley','676-8719','dolor.sit@icloud.comar',60,1,10045198,'Eu Tellus LLP',2,'Hombre',6,'AD4283591227219053860254',403856),(145,'Tamara','Schultz','121-1238','malesuada.fames@aol.comar',26,1,54017369,'Ornare Industries',1,'Mujer',6,'BG35RCPG68768241404784',68452),(146,'Raya','Odom','261-4165','duis.elementum@outlook.comar',93,1,45839405,'Interdum Ligula LLP',2,'Mujer',6,'MU1862879643571454954767155737',242286),(147,'Omar','Wolfe','282-5259','in.consectetuer@protonmail.comar',90,1,10883606,'Et Ultrices Ltd',2,'Hombre',6,'AD4677783210419911790465',179187),(148,'Mark','Hyde','767-6768','molestie.in.tempus@aol.comar',25,1,54979998,'Lectus Pede Associates',2,'Hombre',6,'HR0248442837153476786',150002),(149,'Jescie','Osborn','465-8347','nulla.facilisis@protonmail.comar',32,1,51406174,'Habitant Morbi Tristique Corporation',2,'Hombre',6,'BG16FLGI29368744735288',78344),(150,'Debra','Wilder','651-2841','blandit.congue.in@hotmail.comar',75,1,41025427,'Non Industries',1,'Mujer',6,'DK7662346287845366',253286),(151,'Mufutau','Best','721-4136','accumsan.laoreet.ipsum@aol.comar',26,1,50066510,'Ut Corp.',1,'Hombre',6,'SA8518654787843430714824',245781),(152,'Kevyn','Pratt','747-2918','congue.in@google.comar',62,1,16318263,'Morbi LLC',1,'Hombre',6,'GT05465114142350082852278014',126423),(153,'Amelia','Barr','243-1731','hendrerit@hotmail.comar',75,1,23964659,'Ornare Tortor LLP',4,'Mujer',6,'CY21419385266660645345313994',21633),(154,'Rachel','Faulkner','767-0321','a.dui.cras@icloud.comar',58,1,35325787,'Ultrices Mauris Ipsum Industries',1,'Mujer',6,'CH3810714543632716122',231289),(155,'Yeo','Keller','441-6714','nulla.facilisi@icloud.comar',75,1,15712891,'Nibh Associates',3,'Mujer',6,'KW5126311887127905592762777457',404516),(156,'Quinn','Ferguson','671-8289','donec.porttitor.tellus@google.comar',28,1,50894279,'Sed Dictum Associates',1,'Hombre',6,'SA7360878734178443745531',362776),(157,'Nita','Calhoun','956-9348','malesuada@yahoo.comar',57,1,7841835,'Fames Corporation',4,'Hombre',6,'MU6882803181593507601745250064',20225),(158,'Timothy','Frost','455-7574','massa@yahoo.comar',67,1,53184407,'Pede Praesent Corporation',3,'Hombre',6,'CR0956843393925726210',396471),(159,'Serena','Sims','765-3461','vulputate.dui.nec@aol.comar',21,1,35801585,'Parturient Montes Institute',3,'Hombre',6,'HU06226554254813293282439773',167902),(160,'Kalia','Keith','674-1820','magna@aol.comar',45,1,45648202,'Ligula Nullam Feugiat Ltd',3,'Hombre',6,'SA8535993733211839466567',119561),(161,'Owen','Estes','760-0324','enim.consequat@aol.comar',83,1,22680491,'Consequat Auctor Ltd',3,'Hombre',6,'MC9775338776482033658063344',404034),(162,'Ora','Herman','566-3037','malesuada.fames@aol.comar',35,1,40818668,'Ornare Placerat LLP',2,'Hombre',6,'TR158292871563888215102474',470731),(163,'Damian','Garcia','775-8118','sodales.purus.in@google.comar',37,1,49181908,'Vitae Diam Company',2,'Mujer',6,'BG74XGVX58512635770345',323508),(164,'Orli','Ortega','816-4272','morbi.quis.urna@google.comar',25,1,11742433,'Diam Nunc Ullamcorper Inc.',2,'Hombre',6,'GE11174068138941818637',155506),(165,'Chanda','Nicholson','813-9456','auctor@google.comar',58,1,54355157,'Cubilia Curae Ltd',1,'Mujer',6,'IE93RPJA53884685647607',141270),(166,'Tyler','Park','354-2398','faucibus.lectus@yahoo.comar',90,1,38747956,'Vulputate Mauris Industries',1,'Hombre',6,'IT418ELKAI24714951027767278',181770),(167,'Uma','Bullock','468-2771','tincidunt@outlook.comar',82,1,25751239,'Sit Amet Nulla Incorporated',1,'Hombre',6,'SA0565634236567393917754',257335),(168,'Dillon','Downs','913-4142','dolor.tempus@outlook.comar',54,1,43452590,'Metus Facilisis Incorporated',1,'Mujer',6,'SK2974244131502489853524',312085),(169,'Price','Orr','667-7481','ad.litora@hotmail.comar',73,1,14907816,'Sed Neque Institute',1,'Mujer',6,'NO6434263853737',362689),(170,'Mercedes','Macdonald','847-8887','lectus@icloud.comar',30,1,22284612,'Suspendisse Sed Foundation',1,'Mujer',6,'KW3764457093934187336558892422',212423),(171,'Ciaran','Sellers','388-2282','mauris.sit@yahoo.comar',52,1,48189607,'Adipiscing Ligula Corp.',1,'Hombre',6,'RS28688650844048885793',267272),(172,'Boris','Kidd','350-7147','velit.aliquam.nisl@protonmail.comar',78,1,31464522,'Pharetra Ut Pharetra Associates',1,'Mujer',6,'IE84WKRJ53058252597023',111252),(173,'Fritz','Melton','582-3588','tristique.pellentesque.tellus@yahoo.comar',86,1,49933002,'Purus Duis Elementum Consulting',1,'Mujer',6,'NL44IOEB2798188248',232756),(174,'Adam','Sanford','404-8571','ligula.donec@hotmail.comar',55,1,38998441,'Eu Odio Industries',1,'Mujer',6,'AD6313151721117789084225',122654),(175,'Marshall','Ward','845-8800','nulla.cras@google.comar',38,1,11029256,'Lacus Aliquam Foundation',1,'Mujer',6,'LV49TPCY2257867385926',492870),(176,'Echo','Hines','489-9814','faucibus.morbi.vehicula@yahoo.comar',67,1,49281359,'Sapien Cursus Incorporated',1,'Hombre',6,'ES9847193673541956863856',301478),(177,'Walker','Clay','714-8697','lorem.sit.amet@google.comar',73,1,6764452,'Egestas Lacinia Limited',1,'Hombre',6,'AL06269261765822177048614375',326779),(178,'Zia','Wiggins','277-8962','duis.gravida@yahoo.comar',64,1,9289800,'Nibh Phasellus Company',1,'Hombre',6,'AZ43414540391586627398054502',319898),(179,'Nigel','Short','941-8628','consequat.nec@icloud.comar',34,1,26999219,'Pharetra Felis Eget PC',1,'Mujer',6,'AE265461698383843240727',212322),(180,'Trevor','Jensen','996-5388','ligula.consectetuer@yahoo.comar',26,1,6908662,'Nulla Interdum Ltd',1,'Hombre',6,'SI92737980326158225',392078),(181,'August','Henson','288-6304','mauris@hotmail.comar',72,1,22819572,'Euismod Urna Industries',1,'Mujer',6,'GT72036755206236538716985637',161104),(182,'Orlando','Quinn','282-7653','odio.nam.interdum@hotmail.comar',85,1,6434960,'Suspendisse Non Corp.',1,'Hombre',6,'RS33143846648858335717',108927),(183,'Delilah','Christian','812-0649','sit.amet@icloud.comar',49,1,11350514,'Curabitur Ltd',1,'Mujer',6,'BG24EVPC56617683237232',169905),(184,'Florence','Bauer','848-1042','nam@protonmail.comar',48,1,20119847,'A Arcu Sed Corporation',1,'Hombre',6,'LV64UHYS8565365125246',419223),(185,'Ignatius','Parker','632-9123','ultricies.ligula@aol.comar',78,1,48499957,'Aenean Massa PC',1,'Mujer',6,'SM2555940877958853026522660',405827),(186,'Declan','Patterson','546-3187','mauris.quis@protonmail.comar',76,1,25230704,'Amet Consectetuer Industries',1,'Hombre',6,'PK4224620732166141633032',349181),(187,'Hedwig','Hoover','849-0300','tristique.pellentesque@outlook.comar',83,1,6422523,'Aliquam Ultrices Industries',1,'Mujer',6,'GE29454817887438451701',187728),(188,'Gage','Mckee','522-7334','ac.turpis@aol.comar',82,1,24443035,'Dolor Nonummy Institute',1,'Hombre',6,'AZ23177461067544543377909465',142035),(189,'Alden','Ballard','834-1144','euismod.et@protonmail.comar',65,1,16093970,'Dolor Egestas LLP',1,'Hombre',6,'BA804938241776681189',340468),(190,'Alan','Mcgowan','776-5175','nonummy.fusce@google.comar',38,1,11157400,'Dictum Phasellus In Associates',1,'Mujer',6,'MR6171438661215336773336442',351106),(191,'Solomon','Hodges','652-5308','augue@outlook.comar',45,1,30646154,'Aliquam PC',1,'Hombre',6,'TR533134678312203856626773',199258),(192,'Fitzgerald','Saunders','584-6323','dui.nec@icloud.comar',43,1,30197829,'Lacus Quisque Corp.',1,'Hombre',6,'SE0785045373073743184668',180354),(193,'Blossom','Espinoza','425-5749','luctus.curabitur.egestas@outlook.comar',38,1,37607493,'Porta Company',1,'Hombre',6,'FO7614252059470615',222566),(194,'Nell','Small','683-6816','eu.sem.pellentesque@protonmail.comar',37,1,15739737,'Sagittis Nullam Incorporated',1,'Mujer',6,'MC9194168511168174664937877',88434),(195,'Steven','Stanley','859-1192','et.netus@protonmail.comar',89,1,54586114,'Elementum Sem Institute',1,'Mujer',6,'KW5411170846621887226368554731',7698),(196,'Joelle','Weiss','611-3994','lorem.lorem.luctus@aol.comar',67,1,17833002,'Non Arcu Industries',1,'Mujer',6,'DE64865845285433143223',127656),(197,'Neve','Pugh','685-1595','posuere.cubilia@yahoo.comar',23,1,29346571,'Arcu Ltd',1,'Hombre',6,'IT527ZQTII88953175366937854',145613),(198,'Finn','Marquez','121-0121','rhoncus.proin@icloud.comar',47,1,10795968,'Cursus Diam At Institute',1,'Hombre',6,'NO5924521515364',183838),(199,'Skyler','Baker','675-4463','sagittis.semper@icloud.comar',92,1,46534589,'At Velit Inc.',1,'Hombre',6,'KZ352536193576239649',340595),(200,'Yoko','Richards','337-5234','est.ac.mattis@outlook.comar',50,1,51328516,'Porta Elit PC',1,'Hombre',6,'FO9463606162636354',485171),(201,'Octavius','Johnson','640-3112','rutrum@yahoo.comar',75,1,54326484,'Lorem Luctus Ltd',1,'Hombre',6,'ME17955772640812185771',447332),(202,'Anika','Sutton','511-0831','enim.nunc.ut@protonmail.comar',29,1,22565192,'At Nisi Cum Corp.',1,'Hombre',6,'MT74VWQC74147283152860717591281',447040),(203,'Martha','Nielsen','559-7271','odio.nam@google.comar',21,1,54219163,'In Industries',1,'Hombre',6,'PS938385839868096854175226685',125860),(204,'Burton','Wiggins','855-6279','duis.cursus@yahoo.comar',75,1,27820358,'Lacus Nulla Tincidunt Associates',1,'Hombre',6,'AZ91431542711333966435546695',57083),(205,'Kyle','Salas','626-8186','eu.dui.cum@protonmail.comar',70,1,20524297,'Ut Sagittis Associates',1,'Mujer',6,'CZ5018853392939582745925',219000),(206,'Xenos','Wilkerson','209-6018','diam.duis@outlook.comar',77,1,25602145,'Quis Pede Suspendisse Consulting',1,'Hombre',6,'AD5322303898089167836634',367925),(207,'Scott','Weber','728-7832','vitae@protonmail.comar',24,1,44151364,'Praesent Interdum Company',1,'Hombre',6,'PL51585452028155241387866588',439346),(208,'Zahir','Blackwell','982-7275','nibh@outlook.comar',72,1,9990290,'Ut Quam Vel Inc.',1,'Mujer',6,'GB43HPSD48288475258866',387693),(209,'Yuli','Winters','823-5059','fusce.aliquet@google.comar',57,1,22328921,'Sed Diam Institute',1,'Mujer',6,'KW9161353524403035117185433787',483254),(210,'Kane','White','982-4948','dui.fusce.diam@icloud.comar',81,1,52761880,'Iaculis Inc.',1,'Hombre',6,'DO47273226043775457140154415',399001),(211,'Asher','Hughes','588-1508','augue.malesuada@aol.comar',63,1,28586189,'Nibh Sit Amet Institute',1,'Mujer',6,'LT981824335478485883',266850),(212,'Nolan','Phelps','340-4575','semper.dui@hotmail.comar',44,1,50725628,'Elit Pharetra Ut Associates',1,'Hombre',6,'IE89IVTN64661922739373',60515),(213,'Jasmine','Forbes','464-3521','dictum.magna@yahoo.comar',56,1,30553334,'Rutrum Eu Company',1,'Mujer',6,'MD2742385824595614158483',243159),(214,'Blaze','Hubbard','519-9136','cursus@yahoo.comar',87,1,26374476,'Bibendum Sed Consulting',1,'Mujer',6,'LV24JKQX8683406896817',275575),(215,'Marvin','Erickson','984-7051','penatibus.et@icloud.comar',63,1,38665015,'Odio A Ltd',1,'Mujer',6,'GT44389518263572707232788620',471081),(216,'August','Daugherty','447-9228','aliquam@yahoo.comar',58,1,26862827,'Tincidunt Tempus Foundation',1,'Mujer',6,'DO74596540348551850871113268',423058),(217,'Lana','Garrison','177-6091','in.hendrerit.consectetuer@yahoo.comar',86,1,36244942,'Nullam Enim Corporation',1,'Hombre',6,'GI56IFJQ176246061419382',340573),(218,'Melodie','Whitney','109-1888','vestibulum.mauris@aol.comar',17,1,46873635,'Urna LLP',1,'Mujer',6,'PL02139735104576334473965443',136540),(219,'Lucian','Mendez','843-6643','lacus.cras@hotmail.comar',40,1,54099050,'Vitae Odio Associates',1,'Mujer',6,'MD4166711211174697513851',166315),(220,'Shelley','Baird','232-6757','risus.nunc.ac@google.comar',80,1,37749066,'Libero Dui Incorporated',1,'Hombre',6,'VG1147145419756367852140',290743),(221,'Cameran','Hill','861-0476','elit.pellentesque.a@aol.comar',39,1,46000215,'Cursus Et Incorporated',1,'Hombre',6,'IT752GWYTI03665692130592918',79933),(222,'Alana','Fisher','683-4273','sed.eu@protonmail.comar',41,1,50117936,'Pretium Inc.',1,'Mujer',6,'PK1154873664383228450248',176497),(223,'Vivian','Meyers','313-5493','lacinia.vitae@icloud.comar',81,1,12012636,'Faucibus Lectus A Company',1,'Hombre',6,'KW6507851188183272275616326173',48125),(224,'Micah','Bender','922-2235','eros.proin.ultrices@protonmail.comar',56,1,8143923,'Mauris Non Foundation',1,'Hombre',6,'CY68234123632629324557336753',450330),(225,'Maya','Ashley','963-6964','mauris.sagittis@yahoo.comar',42,1,11238128,'Nulla Corporation',1,'Mujer',6,'AE374248055461341638769',21117),(226,'India','Santana','851-0584','dolor.egestas@google.comar',59,1,17196935,'Ornare Sagittis Associates',1,'Hombre',6,'KZ075853675727388876',172786),(227,'Oleg','Sawyer','672-6682','aliquet.vel@icloud.comar',72,1,30265697,'Nunc Risus Varius Foundation',1,'Hombre',6,'AT177990585479757885',198942),(228,'Zia','Pace','252-7598','maecenas.ornare@protonmail.comar',63,1,41932313,'Dictum Cursus Nunc Consulting',1,'Hombre',6,'KZ276662845462843753',266475),(229,'Kane','Oneal','266-1254','porttitor.eros@protonmail.comar',70,1,11852955,'Augue Porttitor Institute',1,'Hombre',6,'GT19155338630350036910112770',2592),(230,'Fritz','Woodard','630-0337','sit.amet.faucibus@google.comar',57,1,19807235,'Id Enim Curabitur Company',1,'Hombre',6,'TR022749004466274308418578',144961),(231,'Noelani','Bullock','533-6145','etiam.bibendum.fermentum@hotmail.comar',94,1,44910195,'Massa Corporation',1,'Hombre',6,'LU153384176580071602',368617),(232,'Kelsey','Benton','384-6867','mauris.ut@hotmail.comar',28,1,12366041,'Ipsum Ac Institute',1,'Hombre',6,'ME24888168027585535861',38455),(233,'Lacota','Patrick','688-5361','nunc.sollicitudin@google.comar',38,1,24660941,'Velit Sed Incorporated',1,'Mujer',6,'ME97432294416528522433',245005),(234,'Kristen','Garner','928-8710','pede@aol.comar',71,1,11924560,'Neque Venenatis Lacus Foundation',1,'Hombre',6,'HR7621025212681574741',218998),(235,'Hyatt','Burgess','704-0796','sed@yahoo.comar',84,1,13360931,'Aliquet Phasellus Fermentum LLC',1,'Mujer',6,'BH56187165779473334014',488369),(236,'Laith','Cline','626-2893','eu.sem@hotmail.comar',45,1,20670272,'Arcu Sed Industries',1,'Mujer',6,'MR4743285473832296763199932',353730),(237,'Irma','Kent','965-1625','sem.ut@aol.comar',75,1,11380733,'Dolor Donec Corp.',1,'Hombre',6,'CR1238788244950878055',169902),(238,'Hakeem','Mendoza','831-4826','magna.nec.quam@protonmail.comar',84,1,51369950,'Molestie Tortor Ltd',1,'Hombre',6,'MC1227626835265747220179152',326135),(239,'Derek','Edwards','189-2875','auctor@aol.comar',69,1,42951833,'Libero Proin Limited',1,'Hombre',6,'ME56030217821582681688',392033),(240,'Anastasia','Jennings','264-5386','magna.a@outlook.comar',27,1,54082374,'Dis Parturient Montes Limited',1,'Mujer',6,'GL3365146376817158',394485),(241,'Nola','Savage','924-3668','lacus.quisque.purus@protonmail.comar',63,1,31401077,'In At Pede LLC',1,'Mujer',6,'SE3982245934603350476878',172367),(242,'Harlan','Reynolds','356-2637','bibendum@yahoo.comar',37,1,41362420,'Dui Associates',1,'Hombre',6,'SE7937385568810256721336',442355),(243,'Gil','Cochran','538-0313','ultricies.dignissim@google.comar',35,1,27977556,'Neque Sed Dictum Company',1,'Hombre',6,'FO9717334405404995',257574),(244,'Harrison','Huffman','861-6482','aliquam@yahoo.comar',47,1,38508011,'Eget Metus LLC',1,'Hombre',6,'CR6173162742704336433',131456),(245,'Eaton','Pena','629-6058','duis@hotmail.comar',90,1,16242258,'Suspendisse Aliquet Inc.',1,'Hombre',6,'AT923355632865786824',413558),(246,'Aiko','Austin','709-5231','imperdiet.ullamcorper@protonmail.comar',31,1,46871835,'Orci Donec Incorporated',1,'Hombre',6,'KZ905534714527258317',450397),(247,'Priscilla','Stewart','325-4513','enim.nec@protonmail.comar',16,1,12747601,'Dictum Mi Ac Inc.',1,'Hombre',6,'IT493CPNGI81875563562457234',407440),(248,'Brynn','Hodges','901-8715','malesuada.fringilla@protonmail.comar',69,1,30312975,'Fermentum Institute',1,'Hombre',6,'PK2066666484982159141146',61790),(249,'Rama','Contreras','627-6262','vestibulum.ante.ipsum@google.comar',87,1,7602450,'Adipiscing Corp.',1,'Mujer',6,'GT46884337742712636081777560',223084),(250,'Orson','Garrison','566-6185','fringilla.ornare.placerat@icloud.comar',16,1,5937852,'Ornare In Faucibus Institute',1,'Hombre',6,'IE95EMGC42611706763862',465109),(251,'Hanae','Battle','625-2228','est.mauris@protonmail.comar',63,1,31948455,'Porttitor Scelerisque Institute',1,'Hombre',6,'TN5211497526422670450574',428507),(252,'Jack','Cummings','507-8929','risus.duis@outlook.comar',29,1,27844058,'Enim Corporation',1,'Mujer',6,'KW4266219836802522671237790031',307877),(253,'Elmo','Bray','216-4689','lectus.convallis.est@google.comar',55,1,7102542,'Ultrices Corporation',1,'Hombre',6,'CR2132577953354028748',439275),(254,'Sage','Rutledge','568-6821','elementum@aol.comar',79,1,24911260,'Auctor Vitae Aliquet Corporation',1,'Hombre',6,'SK2874735238333214558356',361734),(255,'Quamar','Dennis','384-8656','pellentesque.sed@outlook.comar',76,1,19137901,'Ligula Elit Associates',1,'Hombre',6,'BG53VBNT58348761389494',337256),(256,'Stewart','Workman','522-0338','eros.proin@protonmail.comar',48,1,42851584,'Orci Lacus Inc.',1,'Hombre',6,'GR1923460948821264810734655',448606),(257,'Curran','Medina','618-3262','nonummy@protonmail.comar',18,1,31380883,'Tellus Nunc LLC',1,'Mujer',6,'FO0825693385445941',479948),(258,'Christian','Bryan','436-2731','adipiscing.mauris.molestie@google.comar',82,1,49768814,'Fermentum Vel LLP',1,'Mujer',6,'FI5625238991953274',262819),(259,'Brynn','Sawyer','517-7697','montes.nascetur@outlook.comar',54,1,12249369,'Velit Dui LLP',1,'Mujer',6,'IL406672014597633739633',192733),(260,'Lesley','Summers','354-7911','augue@protonmail.comar',42,1,16404139,'Orci Inc.',1,'Mujer',6,'RO29GNFI5662548848372574',485563),(261,'Linda','Mason','756-6502','sit.amet.consectetuer@google.comar',80,1,44874505,'Aliquam Tincidunt Institute',1,'Hombre',6,'MK55231172444253573',389524),(262,'Jameson','Park','830-4937','magna@icloud.comar',35,1,35720177,'Tincidunt Dui Inc.',1,'Hombre',6,'GR6534136230371862413238006',349299),(263,'Melvin','Santana','688-7532','amet@icloud.comar',28,1,52257040,'Risus Donec Corporation',1,'Hombre',6,'FR3636088513220247698788755',132129),(264,'Eagan','Guzman','732-1759','magna@aol.comar',38,1,17891681,'Natoque Penatibus Limited',1,'Hombre',6,'LV73SPDT5083624381087',393589),(265,'Duncan','Jacobs','731-2352','pharetra@outlook.comar',78,1,37889480,'Imperdiet Nec Ltd',1,'Mujer',6,'AZ34482427284184199655611082',76197),(266,'Dorian','Moody','847-9474','justo.nec@protonmail.comar',19,1,46399349,'Diam Luctus Lobortis Incorporated',1,'Mujer',6,'MU9548365884972219952515732267',298951),(267,'Tucker','Lindsey','674-6224','nisi.cum.sociis@google.comar',22,1,17076928,'Aliquam Nec Ltd',1,'Mujer',6,'TR372346535842594816153239',311670),(268,'Felix','Burton','773-7613','eu.placerat@outlook.comar',17,1,37816120,'Risus Odio Auctor LLC',2,'Mujer',6,'PT59610676679343260116831',134314),(269,'Virginia','Garcia','832-5248','lobortis.mauris@google.comar',26,1,27068005,'Placerat Augue Corp.',1,'Hombre',6,'MC6277295705821244667511351',19259),(270,'Petra','Hinton','553-4505','pellentesque.tellus@google.comar',25,1,11642765,'Lacus Nulla Inc.',1,'Hombre',6,'KW2503798747591363929894923371',367867),(271,'Ursa','Jacobson','116-3575','imperdiet.erat.nonummy@protonmail.comar',17,1,42570587,'Dapibus Ltd',1,'Mujer',6,'NO3114749860125',103960),(272,'Denton','Maxwell','476-7215','blandit@icloud.comar',64,1,54981034,'Porttitor Tellus Non Incorporated',1,'Hombre',6,'NL10FKFN9915196281',448001),(273,'Tatyana','Horne','866-8718','libero.proin@icloud.comar',15,1,20018752,'Cursus Nunc Limited',1,'Mujer',6,'KZ370806720632472747',146326),(274,'Baxter','Davis','527-8536','phasellus.vitae@outlook.comar',58,1,8644089,'Purus Institute',1,'Hombre',6,'FI1537218164720535',39846),(275,'Jarrod','Hopkins','815-9638','porttitor.interdum@hotmail.comar',69,1,53451141,'Mauris Suspendisse Aliquet PC',1,'Mujer',6,'LI0422464222182332661',369241),(276,'Hillary','Randall','636-8138','felis.orci@google.comar',81,1,6841837,'Ultrices Vivamus Rhoncus Inc.',1,'Hombre',6,'AD8048535621711768268115',455033),(277,'Hiram','Haney','254-5247','consectetuer.cursus@outlook.comar',93,1,34017576,'Ac Sem Ut Corporation',2,'Mujer',6,'GB11OXRG31122354611263',298615),(278,'Oren','O\'connor','846-8463','arcu@yahoo.comar',79,1,11887470,'Facilisis Lorem Inc.',1,'Hombre',6,'MT59TKRJ96586070728332236720974',340572),(279,'Megan','Donovan','847-8766','pede.suspendisse@outlook.comar',43,1,51447190,'Integer Aliquam PC',2,'Mujer',6,'LI7293478986506669663',245609),(280,'Kirsten','Shaffer','265-8800','nibh.phasellus@hotmail.comar',53,1,9577535,'Magna Sed Foundation',2,'Hombre',6,'SM8815645646474654039854962',290477),(281,'Xavier','Marks','658-1144','donec.fringilla.donec@yahoo.comar',53,1,39392758,'Litora Torquent Per Limited',2,'Mujer',6,'ES5737888533123369812779',497914),(282,'Evangeline','Howard','868-4551','metus.facilisis@aol.comar',39,1,38595354,'Mollis Vitae Limited',2,'Mujer',6,'BG90VKUD59416254120117',235745),(283,'Octavius','Herrera','545-2173','cursus.non@icloud.comar',84,1,34985663,'Lacus Limited',1,'Mujer',6,'PL91813612257185754414537745',396606),(284,'Haviva','Burke','223-8712','vestibulum@google.comar',78,1,31527522,'Dictum Mi Inc.',1,'Mujer',6,'NO7733186555595',122580),(285,'Justine','Hale','350-1154','lectus.sit@aol.comar',46,1,42808465,'Consectetuer Mauris Associates',1,'Mujer',6,'BG71KGYD75926873458706',207197),(286,'Barry','Cobb','448-2672','ac.facilisis@yahoo.comar',89,1,28337127,'A Odio PC',4,'Hombre',6,'AD0546435552360368726545',205444),(287,'Hu','Britt','175-4371','sed.tortor@protonmail.comar',32,1,45824380,'Enim Nisl Company',1,'Mujer',6,'SE5314354058044365876376',242215),(288,'Lunea','Nguyen','132-2248','dignissim@aol.comar',64,1,28890494,'Elit Pharetra Institute',3,'Mujer',6,'GR3038183636701318980352434',319251),(289,'Tanek','Dyer','480-8727','molestie.tortor.nibh@yahoo.comar',62,1,25713429,'Magnis Dis Company',1,'Hombre',6,'FR1748278478663960642435815',481043),(290,'Patrick','Burton','737-3315','at.sem@icloud.comar',73,1,26533355,'Cursus Purus Ltd',4,'Hombre',6,'LT235216432421845106',419115),(291,'Tarik','Ochoa','669-1939','vulputate@hotmail.comar',35,1,13578957,'Massa Lobortis Ultrices Corp.',3,'Hombre',6,'PK4218244552530057897213',415995),(292,'Adena','Justice','248-0565','egestas@yahoo.comar',26,1,39414607,'Ac LLP',3,'Mujer',6,'SE9700184176323142241317',202990),(293,'Doris','Potter','266-4462','consequat.auctor.nunc@icloud.comar',33,1,31400996,'A Enim PC',3,'Hombre',6,'TN7286359897244392867386',321050),(294,'Curran','Moon','908-1735','arcu.iaculis@aol.comar',47,1,29975188,'Arcu Vestibulum Ante Limited',3,'Mujer',6,'SM9429846153045362382456372',30393),(295,'Germaine','Perez','563-9214','dui.nec@yahoo.comar',46,1,36281455,'Quis Massa Mauris Ltd',2,'Hombre',6,'BA484471872428455407',67514),(296,'Denise','Hale','619-0428','tincidunt.nibh.phasellus@outlook.comar',36,1,36448749,'Tristique Senectus LLP',2,'Mujer',6,'TN4758814955676548619309',116869),(297,'Elijah','Mclean','327-2786','sed@icloud.comar',92,1,34406420,'Ac Arcu Inc.',2,'Mujer',6,'PK6952437404613484202654',215111),(298,'Yuli','Rutledge','856-1577','metus.urna.convallis@google.comar',59,1,18501122,'Justo Nec Institute',1,'Mujer',6,'PL70133721852532623242461436',107927),(299,'Xena','Chan','778-8271','malesuada@icloud.comar',74,1,44267421,'Enim Diam Vel Corp.',1,'Hombre',6,'SE4210266019310755710685',413884),(300,'September','Floyd','582-8762','aliquam.ultrices@hotmail.comar',56,1,31354534,'Id Libero Industries',1,'Hombre',6,'VG3524386369189245880883',439867),(301,'Medge','Graham','717-2065','erat.nonummy.ultricies@yahoo.comar',79,1,25470489,'Phasellus Libero Foundation',1,'Mujer',6,'NL72FSLD8138246693',214844),(302,'Inez','Alford','672-6717','metus.in@google.comar',78,1,33266129,'Odio LLP',1,'Hombre',6,'BA488785853560713544',62246),(303,'Emi','Joyner','314-1889','tempor@yahoo.comar',74,1,34890504,'Aenean Egestas Corporation',1,'Mujer',6,'MC0950761438034369930929225',94757),(304,'Mercedes','Moody','135-3410','euismod.enim@protonmail.comar',20,1,47788832,'Arcu Et Industries',1,'Hombre',6,'CZ2111162486764753918746',417324),(305,'Winifred','Gillespie','656-5711','magna@outlook.comar',92,1,54490009,'Suscipit Nonummy LLC',1,'Mujer',6,'PL70375238766481333277774651',448862),(306,'Olga','Mayo','523-1861','augue.ut@protonmail.comar',68,1,41337969,'Est Mauris Corporation',1,'Mujer',6,'FO6638584213152091',44803),(307,'Lysandra','O\'connor','534-2229','elit.pede@icloud.comar',31,1,48357388,'Et Ltd',1,'Mujer',6,'SI88631861248128718',158248),(308,'Maile','Pierce','891-8524','odio.a@protonmail.comar',18,1,35828732,'Luctus Et Ultrices PC',1,'Mujer',6,'DE25212171254825740971',204891),(309,'Brenden','Stafford','891-5442','nec@aol.comar',93,1,24235683,'Mauris Company',1,'Hombre',6,'GB53MDTN47617544483157',303929),(310,'Riley','Kim','255-1700','quisque.porttitor@icloud.comar',83,1,41165483,'Vulputate Posuere Industries',1,'Hombre',6,'PT31555428761670453271362',413454),(311,'Giselle','Fitzpatrick','152-5434','ridiculus.mus@protonmail.comar',56,1,50442982,'Lectus Pede Incorporated',1,'Mujer',6,'CZ1717561795152969187487',50657),(312,'Perry','Bailey','433-3445','nisl.elementum.purus@hotmail.comar',35,1,47130545,'Enim Sed LLP',1,'Mujer',6,'LB41502244626311672684098834',290750),(313,'Acton','Pierce','723-2302','magna@google.comar',89,1,53258482,'In Hendrerit Consectetuer Associates',1,'Mujer',6,'FO6826826863284599',350078),(314,'Felix','Lowe','265-4592','suspendisse.sed@outlook.comar',71,1,53746287,'Auctor Mauris Vel LLC',1,'Mujer',6,'IL510665054864744259542',196472),(315,'Christian','Molina','745-9056','non.sollicitudin.a@aol.comar',36,1,31493898,'Eget Corporation',1,'Mujer',6,'CY53774129352698391607535728',410529),(316,'Shelby','Barnes','374-4340','ac@google.comar',25,1,27867149,'Lorem Fringilla Industries',1,'Mujer',6,'CH5582955581765913117',218242),(317,'Tarik','Camacho','872-3301','augue@protonmail.comar',91,1,47779405,'Et Limited',1,'Hombre',6,'FR1516160071174314199715183',386376),(318,'Kamal','Lynn','279-7988','augue.sed@hotmail.comar',24,1,41448193,'Laoreet LLP',1,'Hombre',6,'HR6764928061631567185',373856),(319,'Emily','Dunlap','337-2230','neque.non@outlook.comar',29,1,42065183,'Non Ante Bibendum Corporation',1,'Hombre',6,'SI56864385175717217',155462),(320,'Eve','Macias','233-7751','scelerisque.mollis@protonmail.comar',55,1,24093647,'Nisl Maecenas Malesuada Limited',1,'Mujer',6,'AD7498152227223660214195',461098),(321,'Quon','Sears','472-6920','aenean.massa@google.comar',69,1,19129507,'Lacinia Vitae Industries',1,'Hombre',6,'FO7651045920418800',337649),(322,'Whitney','Everett','326-8637','libero.proin.sed@google.comar',81,1,25700348,'Eget Tincidunt Institute',1,'Hombre',6,'IL257565557843112093361',385195),(323,'Oren','Mcclain','364-8286','at.augue@aol.comar',68,1,33727249,'Aliquam Rutrum Lorem Inc.',1,'Mujer',6,'BE85373261813525',390607),(324,'Regina','Drake','722-1130','cras@aol.comar',55,1,25986394,'Mauris Corporation',1,'Mujer',6,'HR0251885682341904484',154806),(325,'Judith','Contreras','437-4968','interdum.enim.non@icloud.comar',68,1,10862671,'Arcu LLC',1,'Mujer',6,'BG08OIWD56360162632163',224534),(326,'Hamish','Fleming','792-3158','egestas.fusce@aol.comar',22,1,20132476,'Tristique Pellentesque PC',1,'Hombre',6,'CZ3103168746756162976557',493597),(327,'Tarik','Carson','425-3333','lectus.sit@yahoo.comar',66,1,32534550,'Mollis Nec Cursus Institute',1,'Mujer',6,'CH4478318926616168622',293728),(328,'Branden','Buckner','948-2113','cubilia@icloud.comar',42,1,20537271,'Malesuada Id Erat Company',1,'Hombre',6,'FR6153682491625635808716707',337965),(329,'Henry','Diaz','583-2169','orci.adipiscing@outlook.comar',35,1,45931362,'Vel Vulputate Eu LLP',1,'Hombre',6,'CZ5934514353326487674371',305227),(330,'Peter','Workman','431-7332','nullam@yahoo.comar',95,1,31686895,'Nec Cursus Corp.',1,'Hombre',6,'EE936787769780932911',383353),(331,'Jeremy','Mason','548-8135','sed.tortor.integer@google.comar',43,1,16651673,'In Faucibus Institute',1,'Mujer',6,'PK5845317552243374503757',188888),(332,'Reed','Gentry','861-6992','pharetra@outlook.comar',33,1,5580929,'Ullamcorper Eu Ltd',1,'Hombre',6,'MT37THBH36393583933381535305533',140482),(333,'Rafael','Pace','361-0747','lacus.etiam.bibendum@yahoo.comar',71,1,37923595,'At Egestas A PC',1,'Hombre',6,'MD1868262314416617132843',28196),(334,'Zane','Bass','822-2075','malesuada.fames.ac@hotmail.comar',26,1,5739358,'Elit Sed Incorporated',1,'Hombre',6,'SE0774557547174517834120',128818),(335,'Baxter','Chandler','797-0417','eleifend@google.comar',36,1,38522415,'Eu Limited',1,'Mujer',6,'KZ491117460347935721',24258),(336,'Brock','Hooper','543-2483','vestibulum@icloud.comar',83,1,20830755,'Dis Parturient Associates',1,'Hombre',6,'AL31585250258265584484239723',176325),(337,'Ann','Montgomery','327-6840','ac.turpis@protonmail.comar',40,1,53203254,'Odio LLP',1,'Mujer',6,'SK8237118033207637525789',438977),(338,'Sarah','Sears','794-2154','tincidunt@hotmail.comar',56,1,45861943,'Ligula Elit Ltd',1,'Hombre',6,'SM1853434003465975601082415',208132),(339,'Destiny','Finch','654-3514','ullamcorper.eu.euismod@aol.comar',56,1,6049877,'Neque Vitae LLP',1,'Mujer',6,'MK68863868958113872',478298),(340,'Arthur','Orr','599-9192','vitae@outlook.comar',84,1,36046649,'Pede Et Associates',1,'Hombre',6,'RO03DDQJ0283478688396256',316341),(341,'Salvador','Diaz','761-6645','a.mi@google.comar',26,1,27051972,'Urna Vivamus Molestie Foundation',1,'Mujer',6,'KW8752309216863737484681573416',406735),(342,'Lani','Rowe','437-1426','arcu.sed@google.comar',70,1,16353963,'Metus Aenean Foundation',1,'Hombre',6,'AD6843373898145611531691',432512),(343,'Meredith','Drake','859-8773','eleifend.egestas.sed@yahoo.comar',34,1,52454874,'Et Rutrum Eu Industries',1,'Hombre',6,'TN5689160576311225552718',202699),(344,'Gage','Thomas','444-7742','iaculis.enim@protonmail.comar',68,1,35243679,'Habitant Limited',1,'Mujer',6,'SM3045113533048874124524420',349109),(345,'Lester','Blackwell','762-1327','cubilia.curae@yahoo.comar',17,1,5360807,'Dictum Eleifend Institute',1,'Hombre',6,'KZ072322480740459185',24084),(346,'Blythe','Sheppard','621-6623','tincidunt@aol.comar',89,1,40639472,'Dolor Quisque Associates',1,'Mujer',6,'NL34MONG6122968118',44983),(347,'Ivory','Daniels','688-3741','pharetra.sed@yahoo.comar',63,1,13456955,'Donec Nibh Quisque Ltd',1,'Mujer',6,'PK3070475410727501175621',495215),(348,'Jerome','Vincent','488-3261','luctus.lobortis@google.comar',56,1,42894305,'Ac LLC',1,'Mujer',6,'GB76KXMD75783621188546',336241),(349,'Kai','Sweet','506-3448','aliquam.ultrices@hotmail.comar',86,1,38831711,'Consequat Auctor Ltd',1,'Hombre',6,'BA664037635563495843',52899),(350,'Hunter','Hopkins','392-3515','mi.felis@icloud.comar',81,1,12215776,'Adipiscing Lobortis Risus Associates',1,'Mujer',6,'DK3812657252443646',327772),(351,'Brett','Patton','342-4118','suspendisse.aliquet.sem@google.comar',22,1,45848031,'Sit Amet Consectetuer Industries',1,'Hombre',6,'LU580607261597537875',330316),(352,'David','Cabrera','734-5042','ornare.lectus@yahoo.comar',81,1,28283348,'Cras Convallis Convallis Industries',1,'Mujer',6,'LU468329193958196063',487815),(353,'Hall','Ward','507-3479','in.ornare@outlook.comar',72,1,16814336,'Posuere Enim LLC',1,'Mujer',6,'AT586621358409124486',59057),(354,'Medge','Short','439-5542','nunc@yahoo.comar',51,1,25398653,'Ut Pellentesque Eget Associates',1,'Hombre',6,'VG3769056432692423263488',348390),(355,'Montana','West','645-4527','enim@protonmail.comar',43,1,45228293,'Rutrum Magna Cras Ltd',1,'Hombre',6,'SE4967943656304037922139',454965),(356,'Tatyana','Sweeney','564-1612','vitae.orci@icloud.comar',77,1,30021655,'Tempor Augue Corporation',1,'Mujer',6,'AE721254065220266322517',154220),(357,'Micah','Porter','552-8830','lectus@aol.comar',77,1,13335468,'Justo Faucibus Foundation',1,'Mujer',6,'AL39142721982558682397631044',96745),(358,'Galvin','Beck','127-3274','massa.vestibulum.accumsan@aol.comar',68,1,32635540,'Tristique Pharetra Quisque Foundation',1,'Mujer',6,'SI77386052238675767',324768),(359,'Patricia','Velazquez','526-0046','erat.volutpat@yahoo.comar',41,1,18986247,'Et Institute',1,'Mujer',6,'BE48051704442444',259205),(360,'Coby','Nicholson','755-6374','aliquet.metus.urna@yahoo.comar',26,1,9209947,'Adipiscing Incorporated',1,'Hombre',6,'HR1362288365768414134',119048),(361,'Pamela','Molina','563-4125','diam.nunc@aol.comar',51,1,41689358,'Sed Diam Lorem Incorporated',1,'Hombre',6,'MU6648067619581829161349124720',148149),(362,'Barclay','Crosby','139-4131','donec.sollicitudin.adipiscing@aol.comar',59,1,28874347,'Nulla Tempor Foundation',1,'Hombre',6,'IE71ZQKN52883104821333',161223),(363,'Zoe','Bradshaw','554-3386','urna.nunc@yahoo.comar',37,1,5259678,'Hendrerit Id Ante LLC',1,'Mujer',6,'AZ49389767307744868205248747',475794),(364,'Zeph','Kemp','572-6073','egestas.blandit.nam@icloud.comar',89,1,15469999,'Pellentesque Tincidunt Limited',1,'Hombre',6,'AD5582339532228053393397',336543),(365,'Garth','Joseph','487-8642','faucibus.orci@outlook.comar',41,1,31341132,'Ac Mi Institute',1,'Mujer',6,'BH46777416961775126619',250612),(366,'Clinton','Potts','817-6774','pellentesque.massa@yahoo.comar',72,1,52828634,'Eleifend Nunc LLP',1,'Mujer',6,'MC8082472642435851485814934',419661),(367,'Harriet','Knight','563-3035','nulla.integer@hotmail.comar',70,1,18807828,'Auctor Velit Corporation',1,'Mujer',6,'MR4271532698818393447688751',154210),(368,'Imelda','Copeland','615-2786','eget.ipsum@google.comar',17,1,34514331,'Nulla Magna Foundation',1,'Mujer',6,'LB30751177410647398358796205',204100),(369,'Bevis','Steele','817-6855','quis.turpis@yahoo.comar',66,1,28838017,'Turpis PC',1,'Mujer',6,'GR6129382717317215884888318',296423),(370,'Aretha','David','535-7938','nunc.sed.orci@protonmail.comar',64,1,12808541,'Hendrerit Consectetuer Cursus Incorporated',1,'Hombre',6,'FI4901449232925627',489036),(371,'Nora','Chaney','255-2368','non.leo.vivamus@yahoo.comar',59,1,29296094,'Vel Arcu Curabitur LLP',1,'Mujer',6,'GI95JDRV886908879489263',97063),(372,'Laura','Everett','960-4602','luctus@hotmail.comar',88,1,39224182,'Mi Incorporated',1,'Mujer',6,'AZ91765147653649311143349368',123547),(373,'Lacey','Huffman','780-9728','massa.lobortis@icloud.comar',45,1,46630352,'Orci Lobortis Corp.',1,'Mujer',6,'HU38319442079947889975015712',448302),(374,'Imelda','Park','282-6295','enim.nunc.ut@google.comar',42,1,45721248,'Turpis Aliquam Corp.',1,'Hombre',6,'TR133321812528325481018288',72243),(375,'Phillip','Wiley','513-6930','sed@icloud.comar',16,1,28608205,'Arcu Industries',1,'Hombre',6,'LT075483466659556354',365016),(376,'Nathaniel','Pollard','121-8319','dapibus.quam@hotmail.comar',33,1,44907130,'Magnis Dis Parturient Company',1,'Mujer',6,'AZ72439721373188538386584165',316648),(377,'Melissa','Lewis','984-5577','vehicula.risus@hotmail.comar',28,1,18006967,'Neque Morbi Ltd',1,'Hombre',6,'FO0980158532939193',483421),(378,'Leilani','Mccall','880-4073','at.fringilla@aol.comar',31,1,12433436,'Cum Sociis Natoque LLC',1,'Hombre',6,'SI17746137521401548',370965),(379,'Coby','Jacobs','515-6454','fusce@aol.comar',47,1,44451383,'Malesuada Limited',1,'Hombre',6,'CZ4931250358455561754172',25469),(380,'Chancellor','Reeves','340-5931','libero.est@yahoo.comar',67,1,11695895,'Vitae Velit PC',1,'Hombre',6,'FO1932763766681822',243169),(381,'Martena','Pennington','450-8765','ornare.placerat.orci@outlook.comar',72,1,53758078,'Nullam Feugiat Associates',1,'Hombre',6,'GL1519367152470959',343781),(382,'Robin','Richards','495-6178','vivamus@hotmail.comar',70,1,39655103,'Semper Cursus Corp.',1,'Hombre',6,'CZ2927581118258422420228',133891),(383,'Hanae','Bryan','753-2524','aenean.euismod@icloud.comar',62,1,51810869,'Sagittis Associates',1,'Mujer',6,'RO44XSUW5711768618722066',262892),(384,'Isaiah','Whitfield','383-3786','pretium.neque@outlook.comar',83,1,44725671,'Nunc Company',1,'Hombre',6,'PS653153360558991753887366775',111579),(385,'Shelly','Gamble','217-1502','nulla.tempor.augue@outlook.comar',33,1,50812084,'Nunc Foundation',1,'Hombre',6,'PS199148281238443838182414536',326685),(386,'Laith','Velez','230-9761','vestibulum.lorem.sit@yahoo.comar',39,1,10215678,'Pharetra Limited',1,'Hombre',6,'LV55KFPS3457832587434',149422),(387,'Rigel','Flores','587-5571','massa.non@google.comar',42,1,43839163,'Duis Ac Ltd',1,'Mujer',6,'BG62KVLY86144464230564',377410),(388,'Anastasia','Levy','744-0585','tellus.nunc@protonmail.comar',47,1,33203441,'Nisi Aenean Consulting',1,'Hombre',6,'SI41684513724191175',451323),(389,'Grant','Noble','265-3018','risus.donec@protonmail.comar',93,1,28885776,'Et Magnis Dis Corp.',1,'Mujer',6,'NL83FHPH7348393045',409080),(390,'Duncan','Conner','238-2179','nisi.nibh.lacinia@yahoo.comar',89,1,5918901,'Vel Turpis Corporation',1,'Hombre',6,'PS045646494425626046684236677',444016),(391,'Bianca','Serrano','711-2104','eu.nulla.at@aol.comar',33,1,10672666,'Lacinia Mattis Corp.',1,'Hombre',6,'MU5857211734431688063543684402',429504),(392,'Amelia','Armstrong','330-0869','molestie.tellus.aenean@hotmail.comar',60,1,42776869,'Suspendisse Sagittis LLC',1,'Hombre',6,'GI39LDOL546200336647734',264574),(393,'Gregory','Parsons','676-1421','eu.nulla.at@google.comar',91,1,43470871,'Nostra Corp.',1,'Hombre',6,'IS617470873765144335760795',202379),(394,'September','Cook','454-3704','montes.nascetur.ridiculus@protonmail.comar',15,1,33672508,'Egestas Limited',1,'Mujer',6,'IL953076954711188745881',44439),(395,'Gretchen','Flores','802-4660','aliquet.libero@icloud.comar',73,1,50945142,'Augue LLP',1,'Mujer',6,'BE81970850852183',362143),(396,'Althea','Salazar','488-2458','nulla@protonmail.comar',19,1,6017246,'Nam Ligula LLP',1,'Hombre',6,'GR8028213846137284745770997',342032),(397,'Roanna','Patton','965-1786','faucibus.orci@icloud.comar',89,1,43090772,'Curabitur Egestas Nunc PC',1,'Hombre',6,'LT473732323564314215',498187),(398,'Thane','Simmons','101-6447','quisque.imperdiet@icloud.comar',68,1,24527970,'Eget Metus In Industries',1,'Mujer',6,'PT38758775858326871634403',45338),(399,'Hector','Pace','165-9667','diam.eu.dolor@protonmail.comar',86,1,46483351,'Semper Dui Associates',1,'Mujer',6,'MR0783649484642840865343121',53069),(400,'Jocelyn','Middleton','875-9578','curabitur.sed.tortor@hotmail.comar',43,1,43239285,'Senectus Et Netus LLC',1,'Hombre',6,'MC7521143250529812226013814',264361),(401,'Kenneth','Whitfield','380-5954','semper.auctor@protonmail.comar',38,1,26826550,'Sed LLC',2,'Hombre',6,'RO80HDYC2767135743588444',668),(402,'Colt','Mejia','242-8341','auctor@aol.comar',46,1,26655290,'Augue Malesuada Inc.',1,'Mujer',6,'SK0589636874915327254760',95505),(403,'Lunea','Bernard','868-1063','dui.lectus@aol.comar',29,1,16995371,'Eu Nulla Company',1,'Hombre',6,'GB37HEUE31635831514793',187857),(404,'Eliana','Morrison','586-8680','risus.donec@aol.comar',62,1,31081740,'Nibh Incorporated',1,'Hombre',6,'AL09273426216897638377272723',380884),(405,'Micah','Hess','688-8322','ridiculus.mus@yahoo.comar',77,1,17846196,'Odio Aliquam Vulputate Limited',1,'Mujer',6,'MT77UWOL72570876526094423858582',396184),(406,'Ivan','Benjamin','140-7823','mollis.integer@aol.comar',70,1,16175477,'Molestie Dapibus Ligula Corp.',1,'Mujer',6,'FR3023865444746684255522009',137792),(407,'Todd','Lopez','846-7283','convallis.dolor@outlook.comar',81,1,52932199,'Ante Nunc LLC',1,'Hombre',6,'GE39961952536767477872',137068),(408,'Astra','Horton','975-8345','nec.urna.et@yahoo.comar',88,1,39324464,'Pharetra Inc.',1,'Mujer',6,'FI6165250455985327',491753),(409,'Slade','Donaldson','374-3426','nulla.at.sem@google.comar',30,1,15624393,'Nunc Id Corp.',1,'Hombre',6,'CY50196352213518312318071122',19068),(410,'Thor','Sloan','614-6101','magnis.dis.parturient@hotmail.comar',81,1,34138476,'Quam Incorporated',2,'Hombre',6,'GI94PTLM651648904547081',459784),(411,'Branden','Aguirre','115-9846','ultricies.ligula.nullam@protonmail.comar',41,1,33415121,'Tristique Limited',1,'Hombre',6,'LU625687854541836677',47627),(412,'Gary','Clemons','574-7616','sociis.natoque.penatibus@google.comar',22,1,24313743,'Ante Bibendum Associates',2,'Hombre',6,'VG7674525895610317368557',471550),(413,'Haviva','Frye','630-6186','sed@protonmail.comar',58,1,47059488,'Risus At Fringilla PC',2,'Mujer',6,'LT712452853865307113',461568),(414,'Wade','Gutierrez','636-8183','parturient.montes@aol.comar',88,1,38872957,'Aenean Incorporated',2,'Hombre',6,'AT154968768597581550',250799),(415,'Herman','Fleming','228-5393','eu@protonmail.comar',72,1,16021806,'Velit Eu Sem Limited',2,'Mujer',6,'BH75962665423577398135',351980),(416,'Jordan','Snider','933-2674','malesuada@aol.comar',26,1,10444089,'Erat Eget Tincidunt Ltd',1,'Mujer',6,'GE98316886826285200046',88298),(417,'Craig','Burch','735-8732','suspendisse.aliquet@outlook.comar',23,1,19076200,'In Hendrerit Consulting',1,'Mujer',6,'MT55LWQQ27638632915074103877211',416451),(418,'Ruby','Brennan','174-4035','in.at.pede@icloud.comar',38,1,11692198,'Varius Nam Foundation',1,'Hombre',6,'TN9711984514563668666791',42828),(419,'Nathaniel','Wood','315-9416','cras.dolor.dolor@aol.comar',40,1,52687576,'Diam Proin Dolor LLP',4,'Hombre',6,'HR6281484736575694245',39338),(420,'Malcolm','Lopez','606-6053','lobortis@aol.comar',51,1,43992566,'Mauris Non LLC',1,'Hombre',6,'CR2525114310628491756',339192),(421,'Gemma','French','834-4185','eu.nibh.vulputate@outlook.comar',22,1,20524712,'Ipsum Donec Limited',3,'Mujer',6,'KZ826035418659684656',190237),(422,'Linus','Buckner','220-1346','eleifend.non@google.comar',47,1,47679407,'Elementum Purus Incorporated',1,'Mujer',6,'NO0692307605920',318690),(423,'Aquila','Solomon','561-7533','erat.vitae.risus@outlook.comar',71,1,11872110,'Senectus Et Netus Foundation',4,'Hombre',6,'KW7288306725156485544687130678',402722),(424,'Yoshi','Whitney','436-4140','mattis.ornare@protonmail.comar',79,1,35868568,'Odio Tristique Corp.',3,'Mujer',6,'LU912112653306375468',220157),(425,'Thane','Riggs','521-2112','et@yahoo.comar',43,1,27805052,'Blandit Enim Ltd',3,'Mujer',6,'FO4232834117113256',357417),(426,'Lamar','Bray','711-8487','velit@outlook.comar',65,1,7773821,'Sed Nulla Ante PC',3,'Hombre',6,'MU4733448382798361785661617990',168361),(427,'Bernard','Anthony','708-1668','sagittis.felis@yahoo.comar',87,1,22998529,'Lectus LLP',3,'Hombre',6,'IS028758164925465570411468',223799),(428,'Finn','Harding','345-8672','vitae.aliquet.nec@hotmail.comar',52,1,53696975,'Massa Associates',2,'Mujer',6,'EE233323058581285161',230943),(429,'Stewart','Norman','537-3512','tincidunt.dui@aol.comar',43,1,15309896,'Ipsum Dolor Sit Foundation',2,'Hombre',6,'AZ27221686624589581357506171',36930),(430,'Reese','Richardson','984-8649','ipsum@hotmail.comar',79,1,46742486,'Ac Eleifend Corporation',2,'Mujer',6,'KZ327856257429670598',165738),(431,'Kenneth','Cross','345-4044','auctor.non@hotmail.comar',45,1,30314613,'Tristique Aliquet Phasellus Company',1,'Mujer',6,'KW5610314559542876582109406481',242005),(432,'Mohammad','Marks','528-5139','fusce.feugiat@hotmail.comar',88,1,18969160,'Cursus Luctus Ipsum Ltd',1,'Hombre',6,'AL42832529523705730688522808',456992),(433,'Buckminster','Mclaughlin','576-7106','blandit@hotmail.comar',23,1,8543328,'Convallis Ligula Donec Incorporated',1,'Hombre',6,'BE12584558222399',248307),(434,'Ila','Wallace','429-3447','odio.phasellus@google.comar',70,1,15126027,'Hendrerit Corporation',1,'Mujer',6,'GI16QIXO089442668334247',98004),(435,'Honorato','Mcintyre','473-8795','nunc@google.comar',26,2,50350938,'Neque Corp.',1,'Mujer',6,'AE793136746446031047888',481948),(436,'Kelsey','Boone','646-6154','venenatis.lacus@aol.comar',45,2,19321867,'Massa LLP',1,'Mujer',6,'AL68152770537195719287417412',413819),(437,'Erich','Rollins','857-9185','pellentesque.ultricies@yahoo.comar',67,2,38270812,'Eget Dictum Placerat Ltd',1,'Hombre',6,'MT50ITQE01322621141813845742121',288124),(438,'Brent','Kirkland','825-5139','arcu.sed@google.comar',64,2,28214278,'Sapien Gravida Associates',1,'Hombre',6,'NL13ZIFD1388186125',318904),(439,'Caleb','Pugh','484-3027','vitae.purus@outlook.comar',67,3,15036003,'Mauris Ipsum Corp.',1,'Hombre',6,'PL50811235021013882821652453',436247),(440,'Deirdre','Ramirez','753-4580','nibh.aliquam.ornare@protonmail.comar',90,4,25978660,'Semper Auctor Limited',1,'Hombre',6,'FR0225554810582778153619560',430933),(441,'Prescott','Howard','311-8452','mus.aenean@icloud.comar',76,5,14576585,'Velit In Company',1,'Hombre',6,'DE36263748214705407708',32309),(442,'Prescott','Gray','942-0554','integer@yahoo.comar',53,6,53840920,'Sed LLP',1,'Hombre',6,'LI1927861044557898876',415876),(443,'Belle','Hicks','314-3824','lorem@hotmail.comar',52,7,21582821,'In Condimentum Company',1,'Hombre',6,'LB22428174155866115272816537',467965),(444,'Hanna','Osborn','758-0761','nunc.lectus@aol.comar',57,4,9816882,'Morbi LLP',1,'Mujer',6,'ES1482544474741133503326',477287),(445,'Griffith','Mcfadden','717-1042','commodo@icloud.comar',76,7,46052572,'Morbi Accumsan Laoreet Corporation',1,'Hombre',6,'BG53YOZE77074704976679',498523),(446,'Briar','Oneil','782-8357','ullamcorper.duis@icloud.comar',74,2,9100429,'Risus Donec Associates',1,'Hombre',6,'AD6522710002773646824774',337167),(447,'Jasper','Gonzalez','871-2483','felis.adipiscing@google.comar',27,2,37907900,'Laoreet Libero Ltd',1,'Mujer',6,'MK38178237192558137',467635),(448,'Cameron','Gross','656-8598','sem.consequat@outlook.comar',18,2,6994268,'Facilisis Lorem Tristique LLP',1,'Hombre',6,'LI8086286202778477101',310050),(449,'Darryl','Callahan','679-4520','sed.pharetra@google.comar',22,8,17442381,'Vestibulum Ante Ipsum Ltd',1,'Mujer',6,'LT567123655815959474',480914),(450,'Oprah','Chang','322-0258','magna@aol.comar',77,8,19694260,'Maecenas Malesuada LLP',1,'Hombre',6,'BH65342154132655461493',319861),(451,'Honorato','Woods','406-5769','class.aptent@yahoo.comar',70,8,22098118,'Amet Orci Ltd',1,'Hombre',6,'ME09414031604880068800',452708),(452,'Amaya','Gonzalez','726-2376','quam.curabitur@icloud.comar',36,8,33303215,'Magnis Dis Corp.',1,'Mujer',6,'CH9333334586460216553',441257),(453,'Calista','Sparks','842-7067','eget.magna.suspendisse@outlook.comar',37,8,9916733,'Rutrum Justo Institute',1,'Mujer',6,'CR1372449702446172917',46209),(454,'Kylee','Benjamin','850-2950','aliquam.nisl.nulla@hotmail.comar',63,8,25644712,'Quisque Ornare Limited',1,'Hombre',6,'RO64GZWP0314452772851066',184579),(455,'Mara','Sloan','378-2879','a@aol.comar',92,8,46092745,'Feugiat Metus Sit Industries',1,'Mujer',6,'NO8870914182373',260348),(456,'Ryder','Shepard','843-2595','interdum@aol.comar',72,8,25060676,'Ut Nisi Foundation',1,'Hombre',6,'FI2329888225399156',92300),(457,'Marsden','Fischer','811-1139','augue@outlook.comar',29,9,15928920,'Mauris Eu LLP',1,'Hombre',6,'EE892056861927118328',32047),(458,'Brody','Spence','316-8012','laoreet.ipsum.curabitur@hotmail.comar',64,10,43227228,'Pede Ac Associates',1,'Mujer',6,'FR5231502561553807793593315',47764),(459,'Demetria','Hampton','567-7197','ac.urna@aol.comar',76,10,8301787,'Consequat Institute',1,'Hombre',6,'CR7818928147563643566',58455),(460,'Carly','Torres','748-3063','sapien.cursus@aol.comar',36,10,34118730,'Semper Limited',1,'Mujer',6,'CZ8955465162420015658151',7416),(461,'Summer','Juarez','237-9445','tempor.est.ac@icloud.comar',46,10,23263297,'At Velit LLC',1,'Hombre',6,'SA1348896329901283446254',288373),(462,'Imelda','Sweet','371-7670','purus.gravida@yahoo.comar',75,10,42398639,'Tristique Senectus Et Company',1,'Mujer',6,'HU40463753665221241558435445',37709),(463,'Kameko','Tucker','877-8713','gravida.sagittis@icloud.comar',23,10,52196645,'Ipsum Dolor Sit LLP',1,'Mujer',6,'HR9820812445788371551',228735),(464,'Alfreda','Lara','472-6213','lobortis.class@icloud.comar',76,10,29027832,'Faucibus Institute',1,'Hombre',6,'DO81687922692514420133132279',270175),(465,'Dieter','Lester','887-3732','cum.sociis@yahoo.comar',84,10,41060275,'Viverra Donec Industries',1,'Mujer',6,'IL148525737626727616266',305401),(466,'Tate','Shepard','268-5120','nisi.cum@protonmail.comar',29,10,45711797,'Id Ante LLP',1,'Mujer',6,'DK4944844350705899',455589),(467,'Katelyn','Mckee','583-7568','semper.cursus@outlook.comar',25,10,35432003,'Non Magna Inc.',1,'Hombre',6,'BH72792847866427341398',350317),(468,'Alexander','Ochoa','588-8723','mauris@hotmail.comar',79,10,8226861,'Mauris Id Industries',1,'Mujer',6,'IE69QKXP86423374463481',102601),(469,'Kellie','Page','244-1630','feugiat.sed@google.comar',28,9,20483384,'Congue A Incorporated',1,'Hombre',6,'GR6313279968527831220985877',21919),(470,'Mollie','Kelly','495-0622','nec@aol.comar',27,9,20985841,'Amet Incorporated',1,'Mujer',6,'BE29919868266450',429054),(471,'Quamar','Leonard','754-6315','etiam.bibendum.fermentum@yahoo.comar',68,9,14134473,'Et Magna Praesent Institute',1,'Mujer',6,'LI2175288230628443535',313086),(472,'Kay','Powell','702-1308','convallis.ligula@yahoo.comar',40,9,22829330,'Tempus Scelerisque Foundation',1,'Mujer',6,'IS105941234189956200688692',473481),(473,'Lucy','Conway','213-9726','imperdiet@outlook.comar',90,9,37776265,'Donec Corporation',1,'Hombre',6,'GL6755673386778294',346579),(474,'Tanya','Mays','784-7812','sem.mollis.dui@aol.comar',92,9,27574416,'Mollis Associates',1,'Hombre',6,'IL907098379948427136900',277866),(475,'Christen','Carson','810-5196','egestas.hendrerit@hotmail.comar',33,9,14292716,'Tortor Nunc Inc.',1,'Hombre',6,'IL592279153762467774862',225390),(476,'Nyssa','Alston','848-7746','dolor.nulla@protonmail.comar',30,9,42619189,'Tortor Nunc PC',1,'Hombre',6,'IE68QDMQ01656168220649',388925),(477,'Cally','Slater','586-8656','rhoncus@yahoo.comar',30,9,43439030,'Ac Metus Vitae Corp.',1,'Mujer',6,'ME22925874761243678374',285074),(478,'Gabriel','Banks','267-5112','lorem.eget@yahoo.comar',82,9,54782455,'Augue Sed Molestie LLP',1,'Hombre',6,'ES6666048735606485670548',147417),(479,'Laura','Cortez','330-4346','morbi.tristique@aol.comar',19,9,29539168,'Risus A Industries',1,'Mujer',6,'NL72CLSA4495207086',363198),(480,'Dolan','Barrera','477-8267','dui.fusce.aliquam@google.comar',32,9,42193449,'Suscipit Est Ac LLC',1,'Hombre',6,'SA8085722443951561584156',90677),(481,'Tanya','Espinoza','159-9492','quis.tristique@hotmail.comar',17,9,37518580,'In Mi Pede Institute',1,'Mujer',6,'TR974157723634133003439885',448247),(482,'Sonia','Short','448-7114','nunc.in@aol.comar',59,9,49448644,'Vitae Velit Egestas LLP',1,'Mujer',6,'AL22980455186425873804533483',239665),(483,'Cally','Lester','433-2346','quisque.porttitor@yahoo.comar',74,9,14176442,'Maecenas Mi PC',1,'Mujer',6,'MT18GXQP44977266287616202607665',189328),(484,'Melissa','Kelly','393-7283','malesuada.malesuada@hotmail.comar',60,9,10097829,'Nulla Corp.',1,'Hombre',6,'IS688215299863446666551074',186807),(485,'Ira','Cross','780-1493','sed.eget@yahoo.comar',42,9,51483689,'Molestie Orci Limited',1,'Mujer',6,'PT34474485352223713507116',323324),(486,'Rylee','Drake','357-0185','neque@hotmail.comar',40,9,23737207,'Facilisis Eget Industries',1,'Mujer',6,'PK6744752783810669232595',179274),(487,'Laura','Mosley','249-3377','dui.fusce.aliquam@icloud.comar',85,9,22342782,'In Molestie PC',1,'Mujer',6,'PT97529424443893357461282',100070),(488,'Kalia','Calhoun','704-0643','eu.lacus.quisque@outlook.comar',43,9,34285029,'Egestas LLP',1,'Hombre',6,'HU23342146542525352566886683',88691),(489,'Steven','Pittman','221-4225','risus@hotmail.comar',63,9,25486448,'Magna Nec LLC',1,'Hombre',6,'SE8952283136763635646778',207369),(490,'Bert','Glenn','372-4321','semper@yahoo.comar',16,9,23604354,'Laoreet LLC',1,'Hombre',6,'PT35596722949252688123383',58192),(491,'Naida','Snyder','881-1671','vestibulum@protonmail.comar',22,9,13877499,'Fermentum Risus LLC',1,'Hombre',6,'TR931459742615852449892394',291857),(492,'Lee','Mcleod','391-2893','eleifend.vitae.erat@outlook.comar',70,9,37327156,'Dolor Quam Foundation',1,'Mujer',6,'GE18308616787288735347',394323),(493,'Dai','Wall','217-5484','arcu.sed@yahoo.comar',43,9,35574400,'Erat Eget Tincidunt Corp.',1,'Hombre',6,'IL952873052191475173727',331106),(494,'Fallon','Melton','700-8711','ornare.libero@aol.comar',74,9,33769610,'Felis Orci Ltd',1,'Hombre',6,'AL76088888126244347377188264',292012),(495,'Chase','Shaffer','754-3246','ac.arcu@icloud.comar',36,9,33638450,'Non Associates',1,'Mujer',6,'TN8659348802290208882551',265028),(496,'Judah','Wong','887-5857','at.pretium@aol.comar',47,9,50450085,'Vel Lectus PC',1,'Hombre',6,'GI32VMJB519344951627104',146784),(497,'Hakeem','Edwards','774-5268','curabitur.ut@google.comar',60,9,42494283,'Integer Vulputate Foundation',1,'Hombre',6,'AZ72853513455121061718771904',415946),(498,'Peter','Copeland','881-5163','id.risus.quis@outlook.comar',50,9,12106021,'Non Lacinia At Limited',1,'Mujer',6,'FI7557057536989365',463777),(499,'Lani','Larsen','338-3491','penatibus@icloud.comar',58,9,20009539,'Vehicula Pellentesque Tincidunt Inc.',1,'Hombre',6,'LB37100737678161182234116776',183254),(500,'Malik','Bonner','452-8182','neque.sed@google.comar',70,9,49454143,'Sociis Natoque Penatibus LLP',1,'Mujer',6,'IE98QDYI73864338444311',9016);
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `NUEVO_SOCIO` BEFORE INSERT ON `socios` FOR EACH ROW INSERT INTO _BKP_socios (`Id_Socio`,`Nombre`,`Apellido`,`TELEFONO`,`Mail`,`Edad`,`Id_Pais`,`DNI`,`Trabajo`,`Id_Pago`,`Genero`,
`Id_Departamento`,`CBU`,`Ingresos_Mensuales`)
values (NEW.Id_Socio, NEW.Nombre, NEW.Apellido, NEW.TELEFONO, new.Mail, new.Edad,new.Id_Pais,
 new.DNI, new.Trabajo, new.Id_Pago, new.Genero, new.Id_Departamento, new.CBU,new.Ingresos_Mensuales) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ACTUALIZACION_SALARIO` AFTER UPDATE ON `socios` FOR EACH ROW insert into BITACORA
(fecha,hora, usuario_id, dato_viejo, dato_nuevo,tipo_operacion)
values
(curdate(), curtime(),session_user(),OLD.ingresos_mensuales,NEW.ingresos_mensuales,'se actualiza salario de socio') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Baja_Socio` BEFORE DELETE ON `socios` FOR EACH ROW insert into BITACORA
(fecha,hora, usuario_id, dato_viejo,tipo_operacion)
values
(curdate(), curtime(),session_user(),OLD.ID_SOCIO,'socio que se da de baja') */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `volantes_con_gol`
--

DROP TABLE IF EXISTS `volantes_con_gol`;
/*!50001 DROP VIEW IF EXISTS `volantes_con_gol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `volantes_con_gol` AS SELECT 
 1 AS `NOMBRE`,
 1 AS `APELLIDO`,
 1 AS `GOLES`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `voley`
--

DROP TABLE IF EXISTS `voley`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voley` (
  `id_voley` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `id_POLI` int DEFAULT NULL,
  PRIMARY KEY (`id_voley`),
  KEY `id_POLI` (`id_POLI`),
  CONSTRAINT `voley_ibfk_1` FOREIGN KEY (`id_POLI`) REFERENCES `polideportivo` (`id_poli`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voley`
--

LOCK TABLES `voley` WRITE;
/*!40000 ALTER TABLE `voley` DISABLE KEYS */;
INSERT INTO `voley` VALUES (1,'Guillermo','Quainni',3),(2,'Hugo','Conte',3),(3,'Facundo','Conte',3),(4,'Lucas','Weber',3),(5,'Martina','Del Trecco',3);
/*!40000 ALTER TABLE `voley` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clubriverplate'
--

--
-- Dumping routines for database 'clubriverplate'
--
/*!50003 DROP FUNCTION IF EXISTS `Ingresos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Ingresos`(sueldo float) RETURNS varchar(10) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE a VARCHAR(10);
IF sueldo> 264825 then RETURN 'ALTO';
ELSE RETURN 'BAJO';
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nombre_jugador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `nombre_jugador`(a_id_jugador INT) RETURNS varchar(255) CHARSET utf8mb4
    READS SQL DATA
BEGIN 
	DECLARE resultado VARCHAR(255);
	SET resultado = (SELECT apellido from jugadores where id_jugador = a_id_jugador) ;
    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Promedio_gol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Promedio_gol`(goles INT, partidos INT) RETURNS float
    DETERMINISTIC
BEGIN
   DECLARE promedio FLOAT;
   SET promedio =  goles / partidos ;
		RETURN promedio;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nuevo_departamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevo_departamento`(
in iddep INT,
in nombredep varchar(100)
)
BEGIN
insert into departamentos (id_departamento, nombre)
			VALUES (NULL, nombredep);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ordenamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenamiento`()
begin
set @o= "Select Nombre, Apellido, goles From Jugadores";
set @ob=' order by goles desc;';
set @ord=concat(@o,@ob);
prepare ejecutar from @ord;
execute ejecutar ;
deallocate prepare ejecutar;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ordenamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ordenamiento`( IN campo VARCHAR(255) , IN tipo_ordenamiento ENUM('ASC' ,'DESC',''), IN tabla VARCHAR(200))
BEGIN
    
    IF campo != '' THEN
		SET @ordenar = CONCAT(' ORDER BY ' , campo);
	ELSE
		SET @ordenar = '';
	END IF;
    
    IF tipo_ordenamiento != '' THEN
		SET @tipo = CONCAT(' ' , tipo_ordenamiento); -- ' DESC'
	ELSE
		SET @tipo = '';
	END IF;
    
    SET @clausula_alias = CONCAT('SELECT * FROM ', tabla ,@ordenar,@tipo);
    
    PREPARE runSQL FROM @clausula_alias;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cant_def_argentinos`
--

/*!50001 DROP VIEW IF EXISTS `cant_def_argentinos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cant_def_argentinos` AS select count(0) AS `DEFENSORES_CENTRALES_ARGENTINOS` from `jugadores` where ((`jugadores`.`posicion` = 'DEFENSOR CENTRAL') and (`jugadores`.`id_pais` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cant_extranjeros`
--

/*!50001 DROP VIEW IF EXISTS `cant_extranjeros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cant_extranjeros` AS select count(0) AS `EXTRANJEROS` from `jugadores` where (`jugadores`.`id_pais` <> 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cantidad_socios_debito`
--

/*!50001 DROP VIEW IF EXISTS `cantidad_socios_debito`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cantidad_socios_debito` AS select count(0) AS `SOCIOS_DEBITO` from (`socios` `s` join `forma_pago` `f` on((`s`.`Id_Pago` = `f`.`id_pago`))) where (`f`.`tipo_pago` = 'Debito Automatico') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `miembros_ct_universidad`
--

/*!50001 DROP VIEW IF EXISTS `miembros_ct_universidad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `miembros_ct_universidad` AS select `c`.`nombre` AS `NOMBRE`,`c`.`apellido` AS `APELLIDO`,`e`.`establecimiento` AS `ESTABLECIMIENTO` from (`cuerpo_tecnico` `c` join `instituto_educativo` `e` on((`c`.`id_instituto` = `e`.`id_instituto`))) where (`e`.`establecimiento` = 'UNIVERSITARIO') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `promedio_ingresos_mensuales_socios`
--

/*!50001 DROP VIEW IF EXISTS `promedio_ingresos_mensuales_socios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `promedio_ingresos_mensuales_socios` AS select avg(`socios`.`Ingresos_Mensuales`) AS `avg(ingresos_mensuales)` from `socios` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `volantes_con_gol`
--

/*!50001 DROP VIEW IF EXISTS `volantes_con_gol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `volantes_con_gol` AS select `jugadores`.`nombre` AS `NOMBRE`,`jugadores`.`apellido` AS `APELLIDO`,`jugadores`.`goles` AS `GOLES` from `jugadores` where ((`jugadores`.`posicion` = 'MEDIOCENTRO') or (0 <> 'MEDIOCENTRO OFENSIVO') or (0 <> 'PIVOTE') or ((0 <> 'VOLANTE IZQUIERDO') and (`jugadores`.`goles` > 1))) order by `jugadores`.`nombre` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19 11:00:10
