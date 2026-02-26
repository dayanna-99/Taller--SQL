-- Ejercicio 10
-- Clientes femeninas ordenadas por fecha de nacimiento (más antiguas primero)

SELECT nombre,
       fecha_nacimiento
FROM clientes
WHERE genero = 'F'
ORDER BY fecha_nacimiento ASC;

--Se filtra por genero = 'F'.
-- ORDER BY fecha_nacimiento ASC organiza
--desde la fecha más antigua a la más reciente