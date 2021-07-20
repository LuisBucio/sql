/*Where selecciona un datos especifico*/

SELECT nombre, email FROM usuarios WHERE id = 4;
/*Se puede buscar por ejemplo los nombres de todos los carlos SELECT * FROM usuarios WHERE email = 'Carlos*/
SELECT * FROM usuarios WHERE email = 'carlos@jesus.com';

/*
OPERADORES DE COMPARACION:
Igual                  =
Distinto             !=
Menor               <
Mayor                >
Menor o igual    <=
Mayor o igual    >=
Entre                 between A and B
En                      in
Es nulo              is null
No nulo              is not null
Como                 like
No es como       not like
*/

/*EJEMPLOS*/
/*Consultar a los usuarios de una año especifico, especificamos con YEAR y el año entre ' ' */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021';
/*Se pueden agregar más datos como en el ejemplo*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021' OR  YEAR(fecha) = '2021';
/*Todos desde un numero especifico*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019';
/*Especificar que un valor es nulo*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2019' OR ISNULL (fecha);

/*EJEMPLO DE LOGIN*/
SELECT nombre, apellidos FROM usuarios WHERE email = 'carlos@eduardo.com' AND password = '1234';

/*
Elementos que contengan un texto con:
o%       para indicar que debe empezar con o
%o%    para indicar que puede estar en cualquier lugar
%o       para indicar que debe terminar con o

*/
SELECT * FROM usuarios WHERE nombre LIKE '%o'