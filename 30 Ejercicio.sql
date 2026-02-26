-- Ejercicio 30
-- Análisis por rangos de edad

WITH clientes_con_edad AS (
    SELECT 
        id_cliente,
        nombre,
        (CAST(strftime('%Y','now') AS INTEGER) 
         - CAST(strftime('%Y', fecha_nacimiento) AS INTEGER)) AS edad
    FROM clientes
)

SELECT 
    CASE 
        WHEN edad BETWEEN 18 AND 29 THEN '18-29'
        WHEN edad BETWEEN 30 AND 39 THEN '30-39'
        WHEN edad BETWEEN 40 AND 49 THEN '40-49'
        WHEN edad BETWEEN 50 AND 59 THEN '50-59'
        WHEN edad BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT c.id_cliente) AS total_clientes,
    COUNT(v.id_venta) AS total_transacciones,
    SUM(v.total_venta) AS ingreso_total
FROM clientes_con_edad c
LEFT JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY rango_edad
ORDER BY rango_edad;


--Se crea una CTE (clientes_con_edad) donde se calcula la edad aproximada de cada cliente.
--En la consulta principal se usa CASE para clasificar a los clientes en rangos de edad (18-29, 30-39, etc.).
--Se hace un LEFT JOIN con ventas para incluir incluso clientes que no hayan comprado.
--Se cuentan los clientes por rango con COUNT(DISTINCT c.id_cliente).
--Se cuentan las transacciones con COUNT(v.id_venta).
--Se suman los ingresos con SUM(v.total_venta).
--Se agrupa por rango de edad y se ordena.