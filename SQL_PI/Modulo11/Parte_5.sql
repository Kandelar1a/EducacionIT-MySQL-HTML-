SELECT* FROM PEDIDOS_NEPTUNO;
SELECT COUNT(*) FROM PEDIDOS_NEPTUNO;
SELECT COUNT(TRANSPORTISTA) 'ENTREGAS SPEEDY EXPRESS' FROM PEDIDOS_NEPTUNO
WHERE TRANSPORTISTA LIKE 'SPEEDY EXPRESS';
SELECT COUNT(EMPLEADO) VENTAS FROM PEDIDOS_NEPTUNO
WHERE EMPLEADO LIKE 'C%';
SELECT * FROM PRODUCTOS_NEPTUNO;
SELECT ROUND(AVG(PRECIOUNIDAD),2) 'PRECIO PROMEDIO' FROM PRODUCTOS_NEPTUNO;
SELECT ROUND(AVG(PRECIOUNIDAD),2) 'PRECIO PROMEDIO', MIN(PRECIOUNIDAD) 'PRECIO INFERIOR' 
FROM PRODUCTOS_NEPTUNO;
SELECT ROUND(AVG(PRECIOUNIDAD),2) 'PRECIO PROMEDIO', 
MIN(PRECIOUNIDAD) 'PRECIO INFERIOR',  MAX(PRECIOUNIDAD) 'PRECIO MAXIMO'
FROM PRODUCTOS_NEPTUNO;
SELECT NOMBRECATEGORIA CATEGORIA, MAX(PRECIOUNIDAD) 'PRECIO MAXIMO' 
FROM PRODUCTOS_NEPTUNO
GROUP BY CATEGORIA;
SELECT * FROM PEDIDOS_NEPTUNO;
SELECT TRANSPORTISTA, COUNT(TRANSPORTISTA) ENTREGAS FROM PEDIDOS_NEPTUNO
GROUP BY TRANSPORTISTA;
SELECT NOMBRECOMPANIA CLIENTE, ROUND(SUM(CARGO),2) 'TOTAL GASTOS'
FROM PEDIDOS_NEPTUNO GROUP BY CLIENTE;
SELECT YEAR(FECHAPEDIDO) AÑO, MONTH(FECHAPEDIDO) MES,
COUNT(IDPEDIDO) VENTAS FROM PEDIDOS_NEPTUNO
GROUP BY AÑO, MES
ORDER BY AÑO, MES;
SELECT EMPLEADO,
ROUND(SUM(CARGO),2) FACTURACION,
ROUND(AVG(CARGO),2) PROMEDIO,
ROUND(MAX(CARGO),2) 'MEJOR VENTA',
ROUND(MIN(CARGO),2) 'PEOR VENTA',
COUNT(CARGO) VENTAS FROM PEDIDOS_NEPTUNO
GROUP BY EMPLEADO;
SELECT * FROM PRODUCTOS;
SELECT SECCION, COUNT(COD_PRODUCTO) CANTIDAD FROM productos
GROUP BY SECCION ORDER BY CANTIDAD DESC;
SELECT * FROM NACIMIENTOS;
SELECT SEXO, COUNT(SEXO) NACIMIENTOS FROM NACIMIENTOS
GROUP BY SEXO;



