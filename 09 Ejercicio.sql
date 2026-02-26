-- Ejercicio 09
-- Venta con mayor monto registrado

SELECT MAX(total_venta) AS mayor_venta
FROM ventas;

--MAX(total_venta) devuelve el valor más alto
--dentro de la columna total_venta.