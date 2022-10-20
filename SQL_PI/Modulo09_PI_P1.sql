CREATE DATABASE LABORATORIO;
USE LABORATORIO;
CREATE TABLE FACTURAS (
        Letra CHAR,
        Número INT,
        CLIENTEID INT,
        ArticuloID INT,
        Fecha DATE,
        Monto DOUBLE,
        PRIMARY KEY (Letra, Número));
CREATE TABLE ARTICULOS (
	    ArticuloID INT PRIMARY KEY,
        Nombre VARCHAR(50),
        Precio DOUBLE,
        Stock INT );
CREATE TABLE CLIENTES (
	   ClienteID INT PRIMARY KEY,
       Nombre VARCHAR(25),
       Apellido VARCHAR(25),
       CUIT CHAR(16),
       Dirección VARCHAR(50),
       Comentarios VARCHAR(50));
SHOW DATABASES;
SHOW TABLES; 
# SHOW TABLES;
DESC CLIENTES;
ALTER TABLE FACTURAS
CHANGE IDClientes IDCliente INT;
DESC FACTURAS;
ALTER TABLE FACTURAS
CHANGE ArticuloID IDArticulo INT,
MODIFY Monto DOUBLE UNSIGNED;
DESC FACTURAS;
ALTER TABLE ARTICULOS
CHANGE ArticuloID IDArticulo INT,
MODIFY Nombre VARCHAR(75),
MODIFY Precio DOUBLE UNSIGNED NOT NULL,
MODIFY Stock INT UNSIGNED NOT NULL;
DESC ARTICULOS;
ALTER TABLE CLIENTES
CHANGE ClienteID IDCliente INT,
MODIFY Nombre VARCHAR(30) NOT NULL,
MODIFY Apellido VARCHAR(35) NOT NULL,
CHANGE Comentarios Observaciones VARCHAR(50);
ALTER TABLE CLIENTES
MODIFY Observaciones VARCHAR(255);
DESC CLIENTES;
INSERT INTO FACTURAS
VALUES ('A', 28, 14, 335, '2021-03-18', 1589.50),
	   ('A', 39, 26, 157, '2021-04-12', 979.75),
	   ('B', 8, 17, 95, '2021-04-25', 513.35),
	   ('B', 12, 5, 411, '2021-05-03', 2385.70),
	   ('B', 19, 50, 157, '2021-05-26', 979.75);
SELECT * FROM FACTURAS;
INSERT INTO ARTICULOS
VALUES (95, 'Webcam con Micrófono Plug & Play', 513.35, 39),
	   (157, 'Apple AirPods Pro', 979.75, 152),
	   (335, 'Lavasecarropas Automático Samsung', 1589.50, 12),	   
	   (411, 'Gloria Trevi/Gloria/CD+DVD', 2385.70, 2);
SELECT * FROM ARTICULOS;
INSERT INTO CLIENTES
VALUES (5, 'Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7ºA', 'VIP'),
       (14, 'Gloria', 'Fernandez', '23-35965852-5', 'Constitución 323', 'GBA'),
	   (17, 'Gonzalo', 'Lopez', '23-33587416-0', 'Arias 2624', 'GBA'),
	   (26, 'Carlos', 'García', '23-42321230-9', 'Pasteur 322 - 2ºC', 'VIP'),	   
	   (50, 'Micaela', 'Altieri', '23-22885566-5', 'Santamarina 1255', 'GBA');
SELECT * FROM CLIENTES;