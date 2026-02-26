# Taller--SQL ULTIMO SALTO
Este repositorio contiene la solución del taller práctico de SQL desarrollado sobre la base de datos tienda.db.

El objetivo fue analizar la información de clientes, productos y ventas de la tienda “El Último Salto”, respondiendo preguntas de negocio mediante consultas SQL claras y estructuradas.

Durante el desarrollo se aplicaron sentencias SELECT, funciones de agregación, filtros, JOIN, subconsultas y CTE.

Estructura del proyecto
El repositorio está organizado de la siguiente manera:

taller-sql/ │ ├── tienda.db
├── README.md
└── ejercicios/ ├── 01_ejercicio.sql
├── 02_ejercicio.sql
├── ... └── 30_ejercicio.sql

Cada ejercicio se encuentra en un archivo independiente para facilitar su revisión y ejecución individual.

Ejecución
Las consultas pueden ejecutarse directamente sobre la base de datos tienda.db utilizando SQLite en terminal o una herramienta en línea como sqliteonline.com.

Cada archivo .sql está diseñado para ejecutarse de forma independiente.

Decisiones técnicas
Se utilizó strftime() para el manejo de fechas, ya que SQLite no soporta la función YEAR().
Se emplearon funciones como COUNT(), SUM(), AVG(), MAX() y MIN().
En ejercicios analíticos se utilizaron subconsultas y CTE (WITH).
No se realizaron modificaciones a la base de datos; únicamente se trabajó con consultas SELECT, como lo indicaba el taller.

Información
Nombre: Dayanna Soleimy Ordoñez Cuastumal
Programa: BIG DATA 
Institución: Universidad CESMAG
Entrega:  Entrega 1
