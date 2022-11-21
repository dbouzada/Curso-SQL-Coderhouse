---------------------------
#### TRIGGERS BOUZADA #####
---------------------------
-- Creare 5 triggers--
-- 1 Para respaldar la tabla jugadores ante la inserción de nuevos jugadores
-- 2 Para respaldar la tabla socios ante la inserción de nuevos socios
-- 3 Para dejar el registro en la tabla de bitacora cada vez que un ingreso mensual de socios se actualice (nos sirve para evaluar aumento de cuota)
-- 4 Para registrar en la tabla bitacora el nombre, dato anterior y dato nuevo de la cantidad de goles de jugadores.
-- 5 Para registrar en la tabla bitacora el ID de cada socio que se elimina de la tabla de socios.

use clubriverplate;

# Creación de 3 tablas, una de BackUp de Jugadores, otra de BackUp de Socios, y la tercer tabla es la de Bitacora.

CREATE TABLE IF NOT EXISTS _BKP_JUGADORES (
    id_jugador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    posicion VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    peso INT NOT NULL,
    altura NUMERIC (3,2) NOT NULL,
    fecha_nacimiento VARCHAR (100) NOT NULL,
    fecha_contrato VARCHAR (100),
    id_pais VARCHAR(40) NOT NULL,
	pie VARCHAR(40) NOT NULL,
    partidos_jugados INT,
    goles INT,
    asistencias INT,
    id_futbol INT,
    id_instituto INT
   );


CREATE TABLE IF NOT EXISTS _BKP_SOCIOS (
    Id_Socio INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Telefono VARCHAR(100) NOT NULL,
    Mail VARCHAR(100) NOT NULL,
    Edad INT NOT NULL,
    Id_Pais INT NOT NULL,
    DNI INT NOT NULL,
    Trabajo VARCHAR(100) NOT NULL,
    Id_Pago INT NOT NULL,
    Genero VARCHAR(100) NOT NULL,
    Id_Departamento INT NOT NULL,
    CBU VARCHAR(100) NOT NULL,
    Ingresos_Mensuales INT NOT NULL
);

CREATE TABLE IF NOT EXISTS BITACORA (
id INT NOT NULL AUTO_INCREMENT,
fecha DATE NOT NULL,
hora TIME NOT NULL,
usuario_id VARCHAR(100),
dato_viejo INT,
dato_nuevo INT,
tipo_operacion VARCHAR(100),
PRIMARY KEY(id));

############################################################################################################################
############################################################################################################################
############################################################################################################################

# TRIGGER 1: 
# Ejecuta un backup de cada ingreso de un nuevo jugador dentro de la tabla jugadores, insertando el mismo dato 
# en la tabla de BKP Jugadores.

CREATE TRIGGER Nuevo_jugador 
after insert on jugadores
for each row 
INSERT INTO _BKP_JUGADORES (`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,
`altura`,`fecha_nacimiento`,`fecha_contrato`,`id_pais`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`)
values (NEW.id_jugador, NEW.nombre, NEW.apellido, NEW.posicion, new.edad, new.peso,new.altura,
 new.fecha_nacimiento, new.fecha_contrato, new.id_pais, new.pie, new.partidos_jugados, new.goles, 
 new.asistencias, new.id_futbol, new.id_instituto);
 
Select * From Jugadores;

INSERT INTO jugadores VALUES (NULL,'Manuel','Lanzini','Mediocentro Ofensivo',31,70,1.70,'11/04/91','31/12/26',1,'Derecho',58,5,3,1,NULL);

Select * From _bkp_jugadores;

############################################################################################################################
############################################################################################################################
############################################################################################################################

# TRIGGER 2: 
# Ejecuta un backup de cada ingreso de un nuevo socio dentro de la tabla Socios, insertando el mismo dato 
# en la tabla de BKP Socios.

CREATE TRIGGER NUEVO_SOCIO
BEFORE INSERT ON SOCIOS
FOR EACH ROW
INSERT INTO _BKP_socios (`Id_Socio`,`Nombre`,`Apellido`,`TELEFONO`,`Mail`,`Edad`,`Id_Pais`,`DNI`,`Trabajo`,`Id_Pago`,`Genero`,
`Id_Departamento`,`CBU`,`Ingresos_Mensuales`)
values (NEW.Id_Socio, NEW.Nombre, NEW.Apellido, NEW.TELEFONO, new.Mail, new.Edad,new.Id_Pais,
 new.DNI, new.Trabajo, new.Id_Pago, new.Genero, new.Id_Departamento, new.CBU,new.Ingresos_Mensuales);

INSERT INTO socios VALUES (NULL,'Julian','Perez','445-56778','juliancito@gmail.com',55,1,45544474,'AOL',1,'Hombre',6,
'DFCCAFFGG915502193327',350003);

SELECT * FROM SOCIOS;
SELECT * FROM _BKP_SOCIOS;

############################################################################################################################
############################################################################################################################
############################################################################################################################

# TRIGGER 3: 
#Este trigger crea un registro de log dentro de la tabla de bitacora por cada vez que se actualice el salario mesual de un socio

CREATE TRIGGER ACTUALIZACION_SALARIO
after update on Socios
for each row
insert into BITACORA
(fecha,hora, usuario_id, dato_viejo, dato_nuevo,tipo_operacion)
values
(curdate(), curtime(),session_user(),OLD.ingresos_mensuales,NEW.ingresos_mensuales,'se actualiza salario de socio');

#test
UPDATE SOCIOS set ingresos_mensuales=1000451 where id_socio=1;

SELECT * FROM bitacora;
SELECT * FROM socios;

############################################################################################################################
############################################################################################################################
############################################################################################################################

#TRIGGER 4:
#Este trigger crea un registro de log dentro de la tabla de bitacora por cada vez que se en la tabla jugadores 
#se ingresa una actualización dentro de los goles de los jugadores.

CREATE TRIGGER NUEVOS_GOLES
after update on jugadores
for each row
insert into BITACORA
(fecha,hora, usuario_id, dato_viejo, dato_nuevo,tipo_operacion)
values
(curdate(), curtime(),session_user(),OLD.goles,NEW.goles, 'se actualizan la cantidad de goles');

UPDATE jugadores set goles = 5 where id_jugador=10;

############################################################################################################################
############################################################################################################################
############################################################################################################################

#TRIGGER 5:
#Este trigger crea un registro de log dentro de la tabla de bitacora por cada vez que se borra un registro dentro
# de la tabla socios, pudiendo llevar un control de los socios que se dan de baja

CREATE TRIGGER Baja_Socio
BEFORE delete on SOCIOS
for each row
insert into BITACORA
(fecha,hora, usuario_id, dato_viejo,tipo_operacion)
values
(curdate(), curtime(),session_user(),OLD.ID_SOCIO,'socio que se da de baja');

DELETE FROM SOCIOS where Id_Socio = 2;

select * from socios;
select * from bitacora;

#RECUPERACIÓN DEL SOCIO BORRADO
 INSERT INTO SOCIOS VALUES (2,'Rhiannon','Shepherd','611-7579','risus.at@aol.comar',90,1,27071748,'Dapibus Consulting',2,'Mujer',6,'IL832114568724497160284',348757);