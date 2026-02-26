-- Ejercicio 16
-- Cliente con mayor gasto acumulado

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre
ORDER BY SUM(v.total_venta) DESC
LIMIT 1;

--Se selecciona el nombre del cliente (c.nombre).
--se usa SUM(v.total_venta) para sumar todas las compras que ha hecho cada cliente.
--Se hace un JOIN entre clientes y ventas usando id_cliente para relacionar cada venta con su cliente.
--Se agrupa con GROUP BY para calcular el total gastado por cada cliente.
--Se ordena de mayor a menor con ORDER BY SUM(v.total_venta) DESC.
--se usa LIMIT 1 para obtener únicamente el cliente que más ha gastado.