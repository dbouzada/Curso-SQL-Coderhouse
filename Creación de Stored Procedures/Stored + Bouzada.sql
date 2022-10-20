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
			VALUES (iddep, nombredep);
END //

## ejecutamos el procedimiento 
call nuevo_departamento (7, "Filiales");

-- Miramos si ingreso los datos
Select * from departamentos;

-- eliminamos el registro insertado
DELETE FROM DEPARTAMENTOS where id_departamento=7;
