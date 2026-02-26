-- Ejercicio 05
-- Clientes ordenados alfabéticamente

SELECT nombre,
       correo,
       fecha_nacimiento
FROM clientes
ORDER BY nombre ASC;

--Se seleccionan únicamente las columnas solicitadas.
--ORDER BY nombre ASC organiza los resultados
--de la A a la Z.
--*/