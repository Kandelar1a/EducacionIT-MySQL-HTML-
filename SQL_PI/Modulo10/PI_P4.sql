SHOW TABLES;
DESC NACIMIENTOS;
SELECT * FROM NACIMIENTOS;
SELECT * FROM NACIMIENTOS
WHERE NACIONALIDAD = 'EXTRANJERA';
SELECT * FROM NACIMIENTOS
WHERE EDAD_MADRE < 18
ORDER BY EDAD_MADRE;
SELECT * FROM NACIMIENTOS
WHERE EDAD_MADRE = EDAD_PADRE;
SELECT * FROM NACIMIENTOS
WHERE (EDAD_PADRE - EDAD_MADRE) >= 40;
SELECT * FROM CLIENTES_NEPTUNO;
SELECT * FROM CLIENTES_NEPTUNO
WHERE PAIS = 'ARGENTINA';
SELECT * FROM CLIENTES_NEPTUNO
WHERE PAIS <> 'ARGENTINA'
ORDER BY PAIS;
SELECT * FROM NACIMIENTOS;
SELECT * FROM NACIMIENTOS
WHERE SEMANAS <20
ORDER BY SEMANAS DESC;
SELECT * FROM NACIMIENTOS
WHERE SEXO = 'FEMENINO' AND NACIONALIDAD = 'EXTRANJERA' AND 
ESTADO_CIVIL_MADRE = 'SOLTERA' AND EDAD_MADRE > 40;
SELECT * FROM CLIENTES_NEPTUNO;
SELECT * FROM CLIENTES_NEPTUNO
WHERE PAIS IN ('ARGENTINA', 'BRASIL', 'VENEZUELA')
ORDER BY PAIS, CIUDAD;
SELECT * FROM NACIMIENTOS;
SELECT * FROM NACIMIENTOS
WHERE SEMANAS BETWEEN 20 AND 25
ORDER BY SEMANAS;
SELECT * FROM NACIMIENTOS
WHERE COMUNA IN ('1101', '3201', '5605', '8108', '9204', '13120', '15202')
ORDER BY COMUNA;
SELECT * FROM CLIENTES_NEPTUNO;
SELECT * FROM CLIENTES_NEPTUNO
WHERE IDCLIENTE LIKE 'C%';
SELECT * FROM CLIENTES_NEPTUNO
WHERE CIUDAD LIKE 'B____';
SELECT * FROM NACIMIENTOS;
SELECT * FROM NACIMIENTOS
WHERE HIJOS_TOTAL >10;





