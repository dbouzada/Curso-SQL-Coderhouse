##########################################
########### SENTENCIAS BOUZADA ###########
#### CREACIÓN DE USUARIOS Y PERMISOS #####
##########################################
##########################################


USE MYSQL;
SHOW TABLES;
SELECT * FROM USER;

# Creamos los usuarios Diego y Delfina

DROP USER IF EXISTS "Diego"@"localhost";
DROP USER IF EXISTS "Delfina"@"localhost";

CREATE USER "Diego"@"localhost" IDENTIFIED BY "123456";
CREATE USER "Delfina"@"localhost" IDENTIFIED BY "123456";

# Para practicar cambiamos sus passwords;

ALTER USER "Diego"@"localhost" IDENTIFIED BY "holadiego";
ALTER USER "Delfina"@"localhost" IDENTIFIED BY "holadelfi";

# Vemos los permisos de Diego

SHOW GRANTS FOR "Diego"@"localhost";

# Otorgamos los permisos de lectura sobre las tablas de la BD CLUBRIVERPLATE

GRANT SELECT ON CLUBRIVERPLATE.* TO "Diego"@"localhost";

# Revisamos que los permisos se hayan aplicado.

SHOW GRANTS FOR "Diego"@"localhost";

#############################

# hacemos el mismo proceso para el usuario Delfina
# primero vemos los permisos.

SHOW GRANTS FOR "Delfina"@"localhost";

# Aqui otorgamos permisos de Lectura, Inserción y Modificación de datos dentro de todas las tablas de la BD Clubriverplate.

GRANT ALL ON CLUBRIVERPLATE TO "Delfina"@"localhost";

# revisamos que los permisos sean aplicados.

SHOW GRANTS FOR "Delfina"@"localhost";

