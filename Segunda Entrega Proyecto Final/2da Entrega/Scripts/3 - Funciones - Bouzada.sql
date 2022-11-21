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

########################################

# Tercera función es la que me sugerías Emilio, creo haberla interpretado correctamente
# Toma el apellido del jugador en lugar del ID y muestra lo que le pasemos en la query
# Sirve para la muestra que dejo abajo, como para hacer una búsqueda rápida de que jugador es de cada ID.

DELIMITER //
CREATE FUNCTION nombre_jugador(a_id_jugador INT)
	RETURNS VARCHAR (255)
	READS SQL DATA
BEGIN 
	DECLARE resultado VARCHAR(255);
	SET resultado = (SELECT apellido from jugadores where id_jugador = a_id_jugador) ;
    RETURN resultado;
END
//

SELECT nombre_jugador (ID_JUGADOR), goles, asistencias from Jugadores;
SELECT nombre_jugador (7);