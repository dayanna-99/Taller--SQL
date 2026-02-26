-- Ejercicio 14
-- Ventas realizadas en 2025 (más recientes primero)

SELECT *
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;

--Porque SQLite no soporta la función YEAR(). En SQLite se usa strftime('%Y', columna_fecha) para extraer el año.