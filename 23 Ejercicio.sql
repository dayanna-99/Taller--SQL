-- Ejercicio 23
-- Cinco productos con mayor ingreso total generado

SELECT 
    p.nombre,
    SUM(d.cantidad * d.precio_unitario) AS ingreso_total
FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
GROUP BY d.id_producto
ORDER BY ingreso_total DESC
LIMIT 5;

--Se selecciona el nombre del producto (p.nombre).
--Se calcula el ingreso total por producto multiplicando cantidad * precio_unitario.
--Se usa SUM() para acumular ese ingreso por cada producto.
--Se hace un JOIN entre detalle_ventas y productos para obtener el nombre del producto.
--Se agrupa por producto con GROUP BY.