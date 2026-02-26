-- Ejercicio 21
-- Clientes con uso frecuente del cupón

SELECT 
    c.nombre,
    COUNT(*) AS veces_usado
FROM ventas v
JOIN clientes c 
    ON v.id_cliente = c.id_cliente
WHERE v.cupon_usado = 'ULTIMO_SUSPIRO'
GROUP BY v.id_cliente
HAVING COUNT(*) >= 3;


--Se selecciona el nombre del cliente (c.nombre).
--Se usa COUNT(*) para contar cuántas veces utilizó el cupón.
--Se hace un JOIN entre ventas y clientes para relacionar cada venta con su cliente.
--Se filtran solo las ventas donde se usó el cupón 'ULTIMO_SUSPIRO' con WHERE.
--Se agrupa por cliente con GROUP BY.
--Se usa HAVING COUNT(*) >= 3 para mostrar solo los clientes que lo usaron tres o más veces.