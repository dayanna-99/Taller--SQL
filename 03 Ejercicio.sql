-- Ejercicio 03
-- Paracaídas más caro

SELECT nombre, precio
FROM productos
WHERE categoria = 'Paracaídas'
AND precio = (
    SELECT MAX(precio)
    FROM productos
    WHERE categoria = 'Paracaídas'
);


--WHERE Filtrar registros.
--MAX() Función agregada para obtener el valor máximo.