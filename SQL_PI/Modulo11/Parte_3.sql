SELECT * FROM PEDIDOS_NEPTUNO;
SELECT * FROM PEDIDOS_NEPTUNO
WHERE YEAR(FECHAPEDIDO) = 1998;
SELECT * FROM PEDIDOS_NEPTUNO
WHERE (MONTH(FECHAPEDIDO) BETWEEN 8 AND 9) AND YEAR(FECHAPEDIDO) = 1997;
SELECT * FROM PEDIDOS_NEPTUNO
WHERE DAY(FECHAPEDIDO) = 1;
SELECT *, DATEDIFF(CURDATE(), FECHAPEDIDO) 'DIAS TRANSCURRIDOS' FROM PEDIDOS_NEPTUNO;
SELECT *, DAYNAME(FECHAPEDIDO) DIA,
DATEDIFF(CURDATE(), FECHAPEDIDO) 'DIAS TRANSCURRIDOS' FROM PEDIDOS_NEPTUNO;
SELECT *, DAYOFYEAR(FECHAPEDIDO) 'DIA DEL AÑO', DAYNAME(FECHAPEDIDO) DIA,
DATEDIFF(CURDATE(), FECHAPEDIDO) 'DIAS TRANSCURRIDOS' FROM PEDIDOS_NEPTUNO;
SELECT *, MONTHNAME(FECHAPEDIDO) MES, DAYOFYEAR(FECHAPEDIDO) 'DIA DEL AÑO', 
DAYNAME(FECHAPEDIDO) DIA, DATEDIFF(CURDATE(), FECHAPEDIDO) 'DIAS TRANSCURRIDOS' 
FROM PEDIDOS_NEPTUNO;
SELECT *, ADDDATE(FECHAPEDIDO, INTERVAL 30 DAY) 'PRIMER VENCIMIENTO'
FROM PEDIDOS_NEPTUNO;
SELECT *, ADDDATE(FECHAPEDIDO, INTERVAL 30 DAY) 'PRIMER VENCIMIENTO',
ADDDATE(FECHAPEDIDO, INTERVAL 2 MONTH) 'SEGUNDO VENCIMIENTO'
FROM PEDIDOS_NEPTUNO;
