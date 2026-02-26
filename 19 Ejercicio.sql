-- Ejercicio 19
-- Producto con mayor número de unidades vendidas

SELECT 
    p.nombre,
    SUM(d.cantidad) AS total_unidades
FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
GROUP BY d.id_producto
ORDER BY total_unidades DESC
LIMIT 1;


--Se selecciona el nombre del producto (p.nombre).
--Se usa SUM(d.cantidad) para sumar todas las unidades vendidas de cada producto.
--Se hace un JOIN entre detalle_ventas y productos para relacionar cada venta con su producto.
--Se agrupa por producto con GROUP BY.
--Se ordena de mayor a menor según la cantidad vendida.
--Se usa LIMIT 1 para mostrar solo el producto con más unidades vendidas.