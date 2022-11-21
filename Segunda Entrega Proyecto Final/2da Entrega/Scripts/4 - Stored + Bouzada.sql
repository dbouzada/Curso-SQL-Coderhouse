######################################
-- STORED PROCEDURES -- DIEGO BOUZADA
######################################

use clubriverplate;

#### PRIMER PROCEDIMIENTO ALMACENADO #####
### Con este primer procedimiento almacenado seleccionamos nombres, apellido y goles de la tabla jugadores
### y lo ordenamos por la cantidad de goles de manera descendente

DELIMITER //
create procedure ordenamiento()
begin
set @o= "Select Nombre, Apellido, goles From Jugadores";
set @ob=' order by goles desc;';
set @ord=concat(@o,@ob);
prepare ejecutar from @ord;
execute ejecutar ;
deallocate prepare ejecutar;
end //

-- PROBAMOS EL PROCEDIMIENTO --
call ordenamiento();

-------------------------------------------------

###### SEGUNDO PROCEDIMIENTO ALMACENADO ######
### Con este segundo procedimiento almacenado insertaremos departamentos  nuevos en nuestra 
### tabla de departamentos
-- AGREGA CORRECCIÓN PLANTEADA POR EMILIO DE NO PASARLE EL NUMERO DE ID, SINO UN NULL --

-- Miramos previamente nuestra tabla
Select * from departamentos;

-- Creamos el Procedimiento 
DELIMITER //
CREATE PROCEDURE nuevo_departamento
(
in iddep INT,
in nombredep varchar(100)
)
BEGIN
insert into departamentos (id_departamento, nombre)
			VALUES (NULL, nombredep);
END //

## ejecutamos el procedimiento 
call nuevo_departamento (NULL, "Filiales");

-- Miramos si ingreso los datos
Select * from departamentos;

-- eliminamos el registro insertado
DELETE FROM DEPARTAMENTOS where id_departamento=11;


## NUEVO SP DE ORDENAMIENTO / SUGERIDO POR EMILIO.
## Creamos este SP con tres datos para ingresar, el campo, la manera de ordenar y la tabla, de esa manera podemos llamar el procedimiento
## y con esos tres datos ordenar tablas de las maneras propuestas

DELIMITER $$
CREATE PROCEDURE SP_ordenamiento ( IN campo VARCHAR(255) , IN tipo_ordenamiento ENUM('ASC' ,'DESC',''), IN tabla VARCHAR(200))
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
    
END $$
DELIMITER ;

CALL SP_ordenamiento ('ingresos_mensuales' ,'desc', 'socios');