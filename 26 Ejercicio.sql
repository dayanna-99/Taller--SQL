-- Ejercicio 26
-- Clientes que solo compraron Paracaidas

SELECT 
    c.nombre,
    SUM(v.total_venta) AS total_gastado
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
WHERE c.id_cliente NOT IN (
    SELECT DISTINCT v2.id_cliente
    FROM ventas v2
    JOIN detalle_ventas d2 
        ON v2.id_venta = d2.id_venta
    JOIN productos p2 
        ON d2.id_producto = p2.id_producto
    WHERE p2.categoria = 'Accesorios'
)
GROUP BY c.id_cliente, c.nombre;


--Se selecciona el nombre del cliente y se suma lo que ha gastado.
--Se hace un JOIN entre clientes y ventas para obtener sus compras.
--En el WHERE se usa NOT IN con una subconsulta.
--La subconsulta obtiene los clientes que compraron productos de la categoría 'Accesorios'.
--Con NOT IN se excluyen esos clientes.
--Finalmente, se agrupa por cliente para calcular el total gastado.