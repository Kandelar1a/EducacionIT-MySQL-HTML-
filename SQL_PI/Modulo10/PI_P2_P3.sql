SHOW TABLES;
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO;
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO
ORDER BY PAIS;
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO
ORDER BY PAIS, CIUDAD;
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO
ORDER BY PAIS, CIUDAD LIMIT 10;
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO
ORDER BY PAIS, CIUDAD LIMIT 5 OFFSET 10;