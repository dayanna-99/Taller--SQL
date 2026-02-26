-- Ejercicio 22
-- Segmentación de clientes por nivel de gasto

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado,
    CASE 
        WHEN SUM(v.total_venta) > 5000 THEN 'Alto Valor'
        WHEN SUM(v.total_venta) BETWEEN 2000 AND 5000 THEN 'Medio Valor'
        ELSE 'Bajo Valor'
    END AS nivel_cliente
FROM ventas v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente;

--Se selecciona el nombre del cliente (c.nombre).
--Se suma todo lo que ha gastado con SUM(v.total_venta).
--Se usa CASE para clasificar a cada cliente según su total gastado
--Se hace un JOIN entre ventas y clientes para relacionar las compras con cada cliente.
--Se agrupa por cliente con GROUP BY para que el cálculo sea individual.