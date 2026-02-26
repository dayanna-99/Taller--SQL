-- Ejercicio 28
-- Clientes de riesgo (sin compras recientes)

SELECT 
    c.nombre,
    c.correo,
    MAX(v.fecha_venta) AS ultima_compra
FROM clientes c
JOIN ventas v 
    ON c.id_cliente = v.id_cliente
GROUP BY c.id_cliente, c.nombre, c.correo
HAVING MAX(v.fecha_venta) < DATE('now', '-180 days');


--se selecciona el nombre y correo del cliente.
--Se obtiene la fecha de su última compra usando MAX(v.fecha_venta).
--Se hace un JOIN entre clientes y ventas para relacionar cada cliente con sus compras.
--Se agrupa por cliente para calcular correctamente la última fecha de compra.
--Se usa HAVING para mostrar solo los clientes cuya última compra fue hace más de 180 días (DATE('now', '-180 days')).