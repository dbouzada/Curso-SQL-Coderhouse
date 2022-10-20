##########
#FUNCIONES
##########

# Primer función hace el calculo de promedio de gol de cada jugador.

DELIMITER //
CREATE FUNCTION Promedio_gol(goles INT, partidos INT) RETURNS FLOAT
DETERMINISTIC
BEGIN
   DECLARE promedio FLOAT;
   SET promedio =  goles / partidos ;
		RETURN promedio;
END
//

# Prueba de la Función
SELECT Nombre, Apellido, Promedio_gol(Goles, partidos_jugados) from Jugadores;

########################################

# Segunda función es para saber si los ingresos de los socios son altos o bajos.alter
# Aquí se uso la vista de promedio de ingresos para medir Alto o Bajo.

DELIMITER //
CREATE FUNCTION Ingresos (sueldo float) RETURNS varchar(10) 
DETERMINISTIC
BEGIN
DECLARE a VARCHAR(10);
IF sueldo> 264825 then RETURN 'ALTO';
ELSE RETURN 'BAJO';
END IF;

END
//

# Prueba de la Funcion
SELECT Nombre, Apellido, Ingresos (ingresos_mensuales) FROM Socios;