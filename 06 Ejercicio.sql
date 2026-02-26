-- Ejercicio 06
-- Monto total histórico de ventas

SELECT SUM(total_venta) AS monto_total_historico
FROM ventas;

--SUM(total_venta) suma todos los valores monetarios
--registrados en la tabla ventas,
--permitiendo conocer el ingreso acumulado.
