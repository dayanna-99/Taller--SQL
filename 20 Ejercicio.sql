-- Ejercicio 20
-- Ingreso total, unidades vendidas y ticket promedio por categoría

SELECT 
    p.categoria,
    SUM(v.total_venta) AS ingreso_total,
    SUM(d.cantidad) AS total_unidades,
    AVG(v.total_venta) AS ticket_promedio
FROM detalle_ventas d
JOIN productos p 
    ON d.id_producto = p.id_producto
JOIN ventas v 
    ON d.id_venta = v.id_venta
GROUP BY p.categoria;

--Se selecciona la categoría del producto (p.categoria).
--Se usa SUM(v.total_venta) para calcular el ingreso total por categoría.
--Se usa SUM(d.cantidad) para obtener el total de unidades vendidas.
--Se calcula el ticket promedio con AVG(v.total_venta).
--Se hacen los JOIN necesarios para relacionar detalle de ventas, productos y ventas.
--Se agrupa por categoría con GROUP BY para que los cálculos se hagan por cada una.