SELECT * FROM PEDIDOS_NEPTUNO;
SELECT *, ROUND(CARGO*0.21, 2) IVA FROM PEDIDOS_NEPTUNO;
SELECT *, ROUND(CARGO*0.21, 2) IVA, ROUND(CARGO*1.21, 2) NETO FROM PEDIDOS_NEPTUNO;
SELECT *, ROUND(CARGO*0.21, 2) IVA, ROUND(CARGO*1.21, 2) NETO, 
FLOOR(ROUND(CARGO*1.21, 2)) 'REDONDEO A FAVOR CLIENTE'
FROM PEDIDOS_NEPTUNO;
SELECT *, ROUND(CARGO*0.21, 2) IVA, ROUND(CARGO*1.21, 2) NETO,
FLOOR(ROUND(CARGO*1.21, 2)) 'REDONDEO A FAVOR CLIENTE',
CEIL(ROUND(CARGO*1.21, 2)) 'REDONDEO A FAVOR EMPRESA'
FROM PEDIDOS_NEPTUNO;