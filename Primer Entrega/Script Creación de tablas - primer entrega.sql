CREATE DATABASE ClubRiverPlate;
---------------------------------------
USE ClubRiverPlate;

CREATE TABLE IF NOT EXISTS DEPARTAMENTOS (
    id_departamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NOMBRE VARCHAR (40) NOT NULL
    );

CREATE TABLE IF NOT EXISTS Instituto_Educativo(
    id_instituto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Establecimiento VARCHAR (40) NOT NULL,
    Dirección	VARCHAR (40) not null,
    Teléfono	INT not null
    );

CREATE TABLE IF NOT EXISTS cuerpo_tecnico
(
    id_ct INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    Apellido VARCHAR(40) NOT NULL,
    FUNCION VARCHAR(40) NOT NULL,
    DNI INT NOT NULL,
    EDAD INT NOT NULL,
    DIRECCION VARCHAR(50) NOT NULL,
    ESTADO_CIVIL VARCHAR(30) NOT NULL,
    id_departamento INT,
    id_instituto INT,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTOS(id_departamento),
    FOREIGN KEY (id_instituto) REFERENCES Instituto_Educativo(id_instituto)
    ); 

----------------------------------------------

CREATE TABLE IF NOT EXISTS futbol (
    id_futbol INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    PLANTEL VARCHAR (40) NOT NULL,
    id_departamento INT,
	FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTOS(id_departamento)
    );

---------------------------------------------------------------
   
CREATE TABLE IF NOT EXISTS JUGADORES
(
    id_jugador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    Apellido VARCHAR(40) NOT NULL,
    Edad INT NOT NULL,
    Peso INT NOT NULL,
    Altura NUMERIC (3,2) NOT NULL,
    FECHA_NACIMIENTO DATE NOT NULL,
    FECHA_CONTRATO DATE,
    DIRECCION VARCHAR(40) NOT NULL,
    TELEFONO INT NOT NULL,
    PARTIDOS_JUGADOS INT,
    GOLES INT,
    ASISTENCIAS INT,
    id_futbol INT NOT NULL,
    id_CT INT NOT NULL,
    id_departamento INT,
    id_instituto INT,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTOS(id_departamento),
    FOREIGN KEY (id_instituto) REFERENCES Instituto_Educativo(id_instituto),
    FOREIGN KEY (id_CT) REFERENCES cuerpo_tecnico(id_CT),
    FOREIGN KEY (id_futbol) REFERENCES futbol(id_futbol)
);