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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-19 12:25:56
