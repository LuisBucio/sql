/*Creamos la Base de Datos llamada blog  para el blog*/

CREATE SCHEMA `blog` ;

/*Creamos las tablas */
/*Usuarios*/
CREATE TABLE usuarios(

    id                   int  AUTO_INCREMENT NOT NULL,
    nombre          VARCHAR(50) NOT NULL,
    apellidos        VARCHAR(50) NOT NULL,
    email              VARCHAR(50) NOT NULL,
    password       VARCHAR(50) NOT NULL,
    fecha              DATE NOT NULL,
CONSTRAINT pk_usuarios PRIMARY KEY(id)
);

/*Categorias*/
CREATE TABLE categorias(

    id                    int  AUTO_INCREMENT NOT NULL,
    nombre          VARCHAR(100) NOT NULL,
CONSTRAINT pk_entradas PRIMARY KEY(id)
);

/*Entradas*/
CREATE TABLE entradas(

    id                      int  AUTO_INCREMENT NOT NULL,
    usuario_id        int NOT NULL,
    categoria_id     int NOT NULL,
    titulo                 VARCHAR(200) NOT NULL,
    descripcion       TEXT NOT NULL,
    fecha                 DATE NOT NULL,
    CONSTRAINT pk_entradas PRIMARY KEY(id),
    CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
    CONSTRAINT fk_entrada_categorias FOREIGN KEY(categoria_id) REFERENCES categorias(id)

);

/*Restriccion de correos duplicados*/
ALTER TABLE usuarios ADD CONSTRAINT uq_email UNIQUE (email);

