-- Ejercicio 25
-- Cliente con mayor variedad de productos distintos

SELECT 
    c.nombre,
    COUNT(DISTINCT d.id_producto) AS variedad_productos
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
JOIN detalle_ventas d 
    ON v.id_venta = d.id_venta
GROUP BY c.id_cliente, c.nombre
ORDER BY variedad_productos DESC
LIMIT 1;


--Se selecciona el nombre del cliente (c.nombre).
--Se usa COUNT(DISTINCT d.id_producto) para contar cuántos productos diferentes ha comprado cada cliente.
--Se hacen los JOIN necesarios para relacionar clientes, ventas y detalle de ventas.
--Se agrupa por cliente con GROUP BY para que el conteo sea individual.
--Se ordena de mayor a menor según la variedad de productos.
--Se usa LIMIT 1 para mostrar solo el cliente con mayor variedad comprada.