/*Setencia para renombrar tabla, ALTER TABLE Altera table y cambiamos con rename*/

ALTER TABLE usuarios RENAME TO usuarios_renom;

/*Para renombrar una columna es:*/

ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR (50) NULL;

/*Modificar la columna sun cambiar el nombre:*/

ALTER TABLE usuarios_renom MODIFY apellido CHAR(50) NOT NULL;

/*Como añador nueva columna*/

ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;

/*Añadir una restriccion a una columna, esta restricción es para poner la limitación  para no repetir el mismo valor*/

ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE (email);

/*Para borrar una columna se usa DROP*/

ALTER TABLE usuarios_renom DROP website;