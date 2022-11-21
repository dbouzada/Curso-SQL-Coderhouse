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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19 12:25:51
