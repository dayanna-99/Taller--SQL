-- Ejercicio 07
-- Accesorios con precio menor a 500

SELECT nombre,
       precio
FROM productos
WHERE categoria = 'Accesorios'
  AND precio < 500;

 
--Se aplican dos filtros simultáneos:
--categoria = 'Accesorios'
-- precio < 500
--El operador AND exige que ambas condiciones se cumplan.
