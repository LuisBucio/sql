/*Insertar valores en una tabla*/

INSERT INTO usuarios VALUES(NULL, 'Carlos Eduardo', 'Jesus de Leon','carlos@jesus.com','1234','2021-07-20' );
INSERT INTO usuarios VALUES(NULL, 'Joaquin', 'Perez Hernandez','joaquin@perez.com','1234','2021-07-20');
INSERT INTO usuarios VALUES(NULL, 'Diana', 'Carrillo Guzman','diana@carrillo.com','1234','2021-07-20');

/*Insertar datos en ciertas columnas*/
INSERT INTO usuarios(fecha,password,nombre,apellidos,email) VALUES('2021-07-20', '1234','Juan','Diaz','juan@diaz.com');