-- 1- Comenzar a grabar
-- 2- entrar a la terminal
-- 3- ingresar al cliente de postgres desde la terminal
-- 4- Crear de base de datos
CREATE DATABASE desafio_francisco_arce_001;
-- 5- ingresar a la base de datos creada
\c desafio_francisco_arce_001;
-- 6- crear tabla clientes
CREATE TABLE clientes(
    email varchar(50),
    nombre varchar,
    telefono varchar(16),
    empresa varchar(50),
    prioridad smallint
);
-- 7- ingresar 5 clientes con distintas prioridades
INSERT INTO cliente (email, nombre, telefono, empresa, prioridad)
VALUES ('francisco.arce@strada.com', 'Francisco Arce', '961712435', 'Strada' 10),
        ('charles.aranguiz@porto.com', 'Charles Aranguiz', '941987354', 'Porto' 9),
        ('michael.scott@dundermifflin.com', 'Michael Scott', '994138767', 'Dunder Mifflin' 5),
        ('walter.white@breakingbad.com', 'Walter White', '974163285', 'Breaking Bad' 6),
        ('rick.sanchez@portals.com', 'Rick Sanchez', '988357419', 'Green Portals' 8);
-- 8- seleccionar los 3 clientes con mayor prioridad
SELECT * FROM clientes ORDER BY prioridad DESC LIMIT 3;
-- 9- seleccionar, prioriad o empresa para que devuelva 2 registros
SELECT * FROM clientes WHERE prioridad > 8;
-- 10- salir de la terminal
\q