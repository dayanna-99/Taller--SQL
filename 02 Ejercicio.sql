-- Ejercicio 02
-- Productos categoría Paracaidas ordenados
-- de mayor a menor precio

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
ORDER BY precio DESC;

--WHERE Sirve para filtrar registros según una condición.
--ORDER BY  Ordena los resultados.
--DESC  Orden descendente (de mayor a menor).
