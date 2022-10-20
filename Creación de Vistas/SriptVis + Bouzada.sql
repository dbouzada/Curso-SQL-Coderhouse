USE CLUBRIVERPLATE;

# ---------------
# Creacion de Vistas
# ----------------

# Vista de Mienbros del Cuerpo técnico que dan clases en Universidad River Plate

CREATE VIEW MIEMBROS_CT_UNIVERSIDAD AS(
SELECT NOMBRE, APELLIDO, ESTABLECIMIENTO FROM CUERPO_TECNICO C
INNER JOIN instituto_educativo E ON c.id_instituto = e.id_instituto
where ESTABLECIMIENTO = "UNIVERSITARIO");

# Vista de Mienbros del plantel de reserva con mas de 20 años (edad de primera)
CREATE VIEW Reserva_20 AS(
SELECT NOMBRE, APELLIDO, EDAD, PLANTEL FROM JUGADORES J
INNER JOIN FUTBOL F ON J.id_FUTBOL = F.id_FUTBOL
where PLANTEL = "RESERVA" AND EDAD >20
ORDER BY NOMBRE ASC);

# Vista de cantidad de extranjeros en el plantel jugadores.

CREATE VIEW CANT_EXTRANJEROS AS (
SELECT COUNT(*) AS EXTRANJEROS FROM JUGADORES
WHERE NACIONALIDAD <> "ARGENTINA"
);

# Vista Cantidad de Defensores Centrales Argentinos.

CREATE VIEW CANT_DEF_ARGENTINOS AS (
SELECT COUNT(*) AS DEFENSORES_CENTRALES_ARGENTINOS FROM JUGADORES
WHERE POSICION = "DEFENSOR CENTRAL" AND NACIONALIDAD = "ARGENTINA");

# Vista Nombres de Volantes que convierten goles ordenada descedentemente.

CREATE VIEW VOLANTES_CON_GOL AS (
SELECT NOMBRE, APELLIDO, GOLES FROM JUGADORES
WHERE POSICION = "MEDIOCENTRO" OR "MEDIOCENTRO OFENSIVO" OR "PIVOTE" OR "VOLANTE IZQUIERDO" AND GOLES >1
ORDER BY NOMBRE DESC);

# Vista Cantidad de Socios que abonan con Debito.

CREATE VIEW CANTIDAD_SOCIOS_DEBITO AS (
SELECT COUNT(*) AS SOCIOS_DEBITO FROM SOCIOS S 
INNER JOIN FORMA_PAGO F ON S.id_pago = f.id_pago
WHERE tipo_pago = "Debito Automatico");

# Vista de promedio de ingresos mensuales de nuestros socios

CREATE VIEW PROMEDIO_INGRESOS_MENSUALES_SOCIOS AS(
SELECT avg(ingresos_mensuales) FROM SOCIOS);

