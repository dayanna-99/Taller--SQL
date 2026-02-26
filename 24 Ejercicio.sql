-- Ejercicio 24
-- Métricas mensuales para 2025

SELECT 
    strftime('%m', fecha_venta) AS mes,
    SUM(total_venta) AS ingreso_total,
    COUNT(id_venta) AS numero_transacciones,
    AVG(total_venta) AS ticket_promedio
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
GROUP BY mes
ORDER BY mes;

--Se extrae el mes de cada venta usando strftime('%m', fecha_venta).
--El % sirve para indicar qué parte de la fecha queremos extraer (año, mes, día).
--Se calcula el ingreso total mensual con SUM(total_venta).
--Se cuenta el número de transacciones con COUNT(id_venta).
--Se obtiene el ticket promedio mensual con AVG(total_venta).
--Se filtran únicamente las ventas del año 2025 con WHERE.
--Se agrupa por mes con GROUP BY.
--Se ordena de enero a diciembre con ORDER BY.