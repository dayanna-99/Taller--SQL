-- Clientes mayores de 60 con total gastado

SELECT 
    c.nombre,
    (CAST(strftime('%Y','now') AS INTEGER) 
     - CAST(strftime('%Y', c.fecha_nacimiento) AS INTEGER)) AS edad_aproximada,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente
HAVING edad_aproximada > 60;


--Se selecciona el nombre del cliente (c.nombre).
--Se calcula una edad aproximada restando el año actual (strftime('%Y','now')) menos el año de nacimiento (c.fecha_nacimiento).
--Se suma el total de sus compras con SUM(v.total_venta) para saber cuánto ha gastado.
--Se hace un JOIN entre clientes y ventas para relacionar cada cliente con sus ventas.
--Se agrupa por cliente con GROUP BY c.id_cliente para que la suma se calcule por persona.
--Se usa HAVING edad_aproximada > 60 para filtrar únicamente los clientes mayores de 60 años