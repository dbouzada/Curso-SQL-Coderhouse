CREATE DATABASE ClubRiverPlate;
---------------------------------------
USE ClubRiverPlate;

CREATE TABLE IF NOT EXISTS DEPARTAMENTOS (
    id_departamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100) NOT NULL
    );

CREATE TABLE IF NOT EXISTS futbol (
    id_futbol INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    plantel VARCHAR (100) NOT NULL,
    id_departamento INT,
	FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTOS(id_departamento)
    );

CREATE TABLE IF NOT EXISTS Instituto_Educativo(
    id_instituto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    establecimiento VARCHAR (40) NOT NULL,
    dirección	VARCHAR (40) not null,
    telefono	INT not null,
	id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTOS(id_departamento)
    );

CREATE TABLE IF NOT EXISTS cuerpo_tecnico(
    id_ct INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    funcion VARCHAR(100) NOT NULL,
    DNI INT NOT NULL,
    edad INT NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    estado_civil VARCHAR(100) NOT NULL,
    id_futbol INT,
    id_instituto INT,
    FOREIGN KEY (id_futbol) REFERENCES FUTBOL(id_futbol),
    FOREIGN KEY (id_instituto) REFERENCES Instituto_Educativo(id_instituto)
    ); 

----------------------------------------------
CREATE TABLE IF NOT EXISTS JUGADORES (
    id_jugador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    posicion VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    peso INT NOT NULL,
    altura NUMERIC (3,2) NOT NULL,
    fecha_nacimiento VARCHAR (100) NOT NULL,
    fecha_contrato VARCHAR (100),
    nacionalidad VARCHAR(40) NOT NULL,
	pie VARCHAR(40) NOT NULL,
    partidos_jugados INT,
    goles INT,
    asistencias INT,
    id_futbol INT,
    id_instituto INT,
    FOREIGN KEY (id_instituto) REFERENCES Instituto_Educativo(id_instituto),
    FOREIGN KEY (id_futbol) REFERENCES futbol(id_futbol)
);

INSERT INTO departamentos (`id_departamento`,`nombre`) VALUES (1,'Futbol');
INSERT INTO departamentos (`id_departamento`,`nombre`) VALUES (2,'Prensa');
INSERT INTO departamentos (`id_departamento`,`nombre`) VALUES (3,'Marketing');
INSERT INTO departamentos (`id_departamento`,`nombre`) VALUES (4,'Polideportivo');
INSERT INTO departamentos (`id_departamento`,`nombre`) VALUES (5,'Educativo');

INSERT INTO futbol (`id_futbol`,`plantel`,`id_departamento`) VALUES (1,'Primera',1);
INSERT INTO futbol (`id_futbol`,`plantel`,`id_departamento`) VALUES (2,'Reserva',1);
INSERT INTO futbol (`id_futbol`,`plantel`,`id_departamento`) VALUES (3,'4ta Categoria',1);
INSERT INTO futbol (`id_futbol`,`plantel`,`id_departamento`) VALUES (4,'5ta Categoria',1);
INSERT INTO futbol (`id_futbol`,`plantel`,`id_departamento`) VALUES (5,'6ta Categoria',1);
INSERT INTO futbol (`id_futbol`,`plantel`,`id_departamento`) VALUES (6,'7ma Categoria',1);

INSERT INTO instituto_educativo (`id_instituto`,`establecimiento`,`dirección`,`telefono`,`id_departamento`) VALUES (1,'Jardin ','Av. Figueroa Alcorta 7597',47891114,5);
INSERT INTO instituto_educativo (`id_instituto`,`establecimiento`,`dirección`,`telefono`,`id_departamento`) VALUES (2,'Primaria','Av. Figueroa Alcorta 7597',47891115,5);
INSERT INTO instituto_educativo (`id_instituto`,`establecimiento`,`dirección`,`telefono`,`id_departamento`) VALUES (3,'Secundaria','Av. Figueroa Alcorta 7597',47891144,5);
INSERT INTO instituto_educativo (`id_instituto`,`establecimiento`,`dirección`,`telefono`,`id_departamento`) VALUES (4,'Terciario','Av. Figueroa Alcorta 7597',47892222,5);
INSERT INTO instituto_educativo (`id_instituto`,`establecimiento`,`dirección`,`telefono`,`id_departamento`) VALUES (5,'Universitario','Av. Figueroa Alcorta 7597',47896778,5);

INSERT INTO cuerpo_tecnico (`id_ct`,`nombre`,`apellido`,`funcion`,`DNI`,`edad`,`direccion`,`estado_civil`,`id_futbol`,`id_instituto`) VALUES (1,'Marcelo','Gallardo','Director Técnico',21355678,47,'','Casado',1,5);
INSERT INTO cuerpo_tecnico (`id_ct`,`nombre`,`apellido`,`funcion`,`DNI`,`edad`,`direccion`,`estado_civil`,`id_futbol`,`id_instituto`) VALUES (2,'Hernán','Bujan','Ayudante Tecnico',20783450,48,'','Casado',1,4);
INSERT INTO cuerpo_tecnico (`id_ct`,`nombre`,`apellido`,`funcion`,`DNI`,`edad`,`direccion`,`estado_civil`,`id_futbol`,`id_instituto`) VALUES (3,'Jonhatan','La Rosa','Director Técnico',28900887,43,'','Casado',2,2);
INSERT INTO cuerpo_tecnico (`id_ct`,`nombre`,`apellido`,`funcion`,`DNI`,`edad`,`direccion`,`estado_civil`,`id_futbol`,`id_instituto`) VALUES (4,'Javier ','Saviola','Director Técnico',29873450,41,'','Casado',3,3);

INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (1,'Franco','Armani','Arquero',35,88,1.89,'16/10/86','31/12/24','Argentina','Derecho',28,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (2,'Ezequiel','Centurión','Arquero',25,85,1.84,'20/5/95','31/12/24','Argentina','Derecho',5,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (3,'Franco','Petroli','Arquero',24,82,1.87,'11/6/98','31/12/24','Argentina','Izquierdo',0,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (4,'Milton','Casco','Lateral Izquierdo',34,71,1.69,'11/4/88','31/12/24','Argentina','Derecho',25,0,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (5,'Paulo','Díaz','Defensor Central',27,77,1.82,'25/8/94','31/12/24','Chilena','Derecho',18,1,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (6,'Leandro','González Pirez','Defensor Central',30,81,1.86,'26/2/92','31/12/23','Argentina','Derecho',8,1,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (7,'Elías','Gómez','Lateral Izquierdo',28,70,1.74,'9/6/94','31/12/25','Argentina','Izquierdo',18,1,4,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (8,'Andres','Herrera','Lateral Derecho',23,75,1.78,'03/11/1998 ','31/12/25','Argentina','Derecho',19,1,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (9,'Jonatan','Maidana','Defensor Central',36,81,1.85,'29/7/85','31/12/22','Argentina','Derecho',5,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (10,'Emanuel','Mammana','Defensor Central',26,70,1.83,'10/2/96','31/12/22','Argentina','Derecho',23,2,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (11,'Héctor','Martínez','Defensor Central',24,74,1.85,'21/1/98','31/12/22','Argentina','Izquierdo',18,1,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (12,'Felipe','Peña','Defensor Central',21,77,1.80,'05/04/2001 ','31/12/24','Argentina','Derecho',0,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (13,'Javier','Pinola','Defensor Central',39,75,1.80,'24/2/83','31/12/22','Argentina','Izquierdo',9,1,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (14,'Robert','Rojas','Lateral Derecho',26,72,1.76,'30/4/96','31/12/24','Paraguaya','Derecho',7,1,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (15,'Franco','Alfonso','Volante Izquierdo',20,68,1.64,'4/5/02','31/12/23','Argentina','Derecho',0,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (16,'Rodrigo','Aliendro','Mediocentro',31,72,1.73,'16/2/91','31/12/25','Argentina','Derecho',13,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (17,'Ezequiel','Barco','Extremo Izquierdo',23,70,1.67,'29/3/99','31/12/23','Argentina','Derecho',28,3,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (18,'Nicolás','De La Cruz','Mediocentro',25,71,1.67,'01/06/1997 ','31/12/22','Uruguaya','Derecho',27,4,5,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (19,'Agustín','Palavecino','Mediocentro',25,74,1.79,'9/11/96','31/12/24','Argentina','Derecho',27,4,4,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (20,'José','Paradela','Volante Izquierdo',23,75,1.80,'15/12/1998 ','31/12/25','Argentina','Izquierdo',18,1,2,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (21,'Tomás','Pochettino','Mediocentro',26,71,1.80,'1/2/96','31/12/22','Argentina','Derecho',13,1,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (22,'Enzo','Pérez','Pivote',36,77,1.79,'22/02/1986 ','31/12/23','Argentina','Derecho',26,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (23,'Juan','Quintero','Mediocentro Ofensivo',29,78,1.69,'18/1/93','31/12/22','Colombiana','Izquierdo',21,1,4,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (24,'Santiago','Simon','Extremo Derecho',20,74,1.80,'13/6/02','31/12/24','Argentina','Derecho',24,3,5,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (25,'Pablo','Solari','Extremo Derecho',21,77,1.79,'22/3/01','31/12/26','Argentina','Derecho',14,5,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (26,'Bruno','Zuculini','Pivote',29,74,1.82,'2/4/93','31/12/23','Argentina','Derecho',17,1,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (27,'Lucas','Beltrán','Delantero Centro',21,77,1.76,'29/03/2001 ','31/12/25','Argentina','Derecho',20,4,2,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (28,'Miguel','Borja','Delantero Centro',29,84,1.84,'26/1/93','31/12/25','Colombiana','Derecho',15,6,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (29,'Joaquín','Panichelli','Delantero Centro',19,77,1.97,'07/10/2002 ','31/12/24','Argentina','Derecho',0,0,0,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (30,'Matías','Suárez','Extremo Izquierdo',34,75,1.83,'9/5/88','31/12/23','Argentina','Derecho',13,5,1,1,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (31,'Flabian','Londoño','Delantero Centro',21,73,1.80,'09/07/2000 ','31/12/24','Colombiana','Derecho',0,0,0,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (32,'Leonardo','Diaz','Arquero',21,77,1.82,'22/01/2000 ','31/12/24','Argentina','Derecho',28,0,0,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (33,'Leandro','Peña','Defensor Central',19,70,1.85,'7/5/03','31/12/23','Argentina','Derecho',25,0,1,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (34,'Francisco','Petrasso','Defensor Central',20,82,1.91,'28/2/02','31/12/24','Argentina','Derecho',18,1,0,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (35,'Lucas','Monzon','Defensor Central',19,74,1.82,'9/1/03','31/12/24','Argentina','Izquierdo',8,1,0,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (36,'Felipe','Salomoni','Lateral Izquierdo',19,71,1.79,'28/03/2003 ','31/12/25','Argentina','Izquierdo',18,1,4,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (37,'Franco','Paredes','Lateral Derecho',23,77,1.76,'18/03/1999 ','31/12/23','Argentina','Derecho',19,1,1,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (38,'Manuel','Guillen','Lateral Derecho',21,71,1.78,'06/09/2001 ','31/12/24','Argentina','Derecho',26,0,0,2,4);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (39,'Sebastian','Sanchez','Pivote',20,72,1.72,'02/02/2002 ','31/12/24','Argentina','Derecho',21,1,4,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (40,'Valentin','Gargiulo','Mediocentro',21,71,1.76,'9/2/01','31/12/24','Argentina','Derecho',24,3,5,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (41,'Axel','Encinas','Mediocentro Ofensivo',18,69,1.73,'7/2/04','31/12/24','Argentina','Derecho',14,5,0,2,4);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (42,'Esteban','Fernandez','Mediocentro Ofensivo',20,72,1.72,'6/1/02','31/12/24','Argentina','Derecho',17,1,0,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (43,'Matias','Gallardo','Mediocentro Ofensivo',18,68,1.75,'24/11/03','31/12/25','Argentina','Izquierdo',20,4,2,2,NULL);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (44,'Oswaldo','Valencia','Delantero Centro',19,77,1.68,'13/3/03','31/12/25','Colombiana','Derecho',15,6,1,2,4);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (45,'Claudio','Echeverri','Mediocentro Ofensivo',16,63,1.70,'2/1/06','31/12/25','Argentina','Derecho',20,4,2,3,3);
INSERT INTO jugadores(`id_jugador`,`nombre`,`apellido`,`posicion`,`edad`,`peso`,`altura`,`fecha_nacimiento`,`fecha_contrato`,`nacionalidad`,`pie`,`partidos_jugados`,`goles`,`asistencias`,`id_futbol`,`id_instituto`) VALUES (46,'Diego','Guallama','Delantero Centro',18,70,1.72,'8/1/04','31/12/25','Argentina','Derecho',15,6,1,3,3);

