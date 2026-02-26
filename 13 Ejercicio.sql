-- Ejercicio 13
-- Total de productos categoría Paracaídas

SELECT COUNT(*) AS total_paracaidas
FROM productos
WHERE categoria = 'Paracaídas';

--usa COUNT(*) para obtener la cantidad total
--Se usa WHERE para filtrar únicamente los productos cuya categoría sea 'Paracaídas'.
--El resultado muestra el total de productos que pertenecen a esa categoría.