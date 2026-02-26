-- Ejercicio 29
-- Porcentaje de ingresos generados por el cupón

SELECT 
    (SUM(CASE WHEN cupon_usado = 'ULTIMO_SUSPIRO' THEN total_venta ELSE 0 END) 
     / SUM(total_venta)) * 100 AS porcentaje_cupon
FROM ventas;


--Se usa SUM(total_venta) para calcular el ingreso total de todas las ventas.
--Se usa CASE dentro de SUM() para sumar únicamente las ventas donde se usó el cupón 'ULTIMO_SUSPIRO'.
--Se divide el total generado por el cupón entre el total general de ventas.
--Se multiplica por 100 para obtener el porcentaje.