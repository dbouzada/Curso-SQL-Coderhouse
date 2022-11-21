##################################
########### TCL BOUZADA ##########
##################################

USE clubriverplate;

SET SQL_SAFE_UPDATES=0;
SELECT @@autocommit;
SET autocommit=0;

#EJERCICIO 1: Trabajamos sobre la tabla FUTBOL.
# Seleccionamos el contenido de nuestra tabla para ver su contenido

SELECT * FROM Futbol;

#Iniciamos la transacción
START TRANSACTION;
delete from futbol where id_futbol =6;
#Revisamos se haya eliminado el registro
Select * from futbol;
#Hacemos el RollBack
Rollback;
#Revisamos haya actuado el Rollback devolviendo el Id_Socio 1
Select * from futbol;

############################ 

#Ahora hacemos el mismo proceso pero con el Commit
start transaction;
delete from futbol where id_futbol =6;
Commit;
#Chequeamos que se efectivice el borrado
Select * from futbol;

#Aqui el insert del registro que borraremos
INSERT INTO futbol (`id_futbol`,`plantel`,`id_departamento`) VALUES (6,'7ma Categoria',1);

########################################################################################
########################################################################################

# EJERCICIO 2:
# USAREMOS LA TABLA PAISES -  Si bien la consigna nos pide 2 savepoints, luego nos solicita borrar los primeros 4 registros
# de esta manera usaremos un savepoint al inicio, otro posterior al 4to registro y otro al final
# para eliminar los primeros 4 registros mediante un savepoint haremos rollback to "ese", sino podriamos eliminar 
# los ultimos 4 o todo con los propuestos.

START TRANSACTION;
SAVEPOINT PAISES1;

INSERT INTO paises (`id_pais`,`pais`) VALUES (17,'Nueva Zelanda');
INSERT INTO paises (`id_pais`,`pais`) VALUES (18,'Australia');
INSERT INTO paises (`id_pais`,`pais`) VALUES (19,'China');
INSERT INTO paises (`id_pais`,`pais`) VALUES (20,'Singapur');
SAVEPOINT PAISES2;

INSERT INTO paises (`id_pais`,`pais`) VALUES (21,'Suiza');
INSERT INTO paises (`id_pais`,`pais`) VALUES (22,'Suecia');
INSERT INTO paises (`id_pais`,`pais`) VALUES (23,'Croacia');
INSERT INTO paises (`id_pais`,`pais`) VALUES (24,'Trinidad y Tobago');
SAVEPOINT PAISES3;

# Chequeamos la inserción:
SELECT * FROM PAISES;

#ELIMINAMOS los primeros 4 registros (por consecuencia los ultimos 4 tambien)
ROLLBACK TO PAISES1;
# Chequeamos
SELECT * FROM PAISES;

# Devolvemos la tabla a como estaba previamente
DELETE FROM PAISES WHERE ID_PAIS >= 17;

