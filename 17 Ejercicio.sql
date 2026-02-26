-- Ejercicio 17
-- Dinero dejado de ingresar por el cupón

SELECT 
    SUM((total_venta / 0.70) - total_venta) AS dinero_perdido
FROM ventas
WHERE cupon_usado = 'ULTIMO_SUSPIRO';


--Se usa SUM() para calcular el total del dinero que se dejó de recibir.
--La expresión (total_venta / 0.70) calcula cuál habría sido el precio original antes del descuento (asumiendo que 0.70 representa el 70% pagado).
--Luego se resta total_venta para obtener cuánto fue el descuento aplicado en cada venta.
--Se suman todos esos descuentos para obtener el dinero total que no ingresó.
--El WHERE cupon_usado  'ULTIMO_SUSPIRO' filtra únicamente las ventas donde se utilizó ese cupón.