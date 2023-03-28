DROP DATABASE IF EXISTS empleados;
CREATE DATABASE empleados;
USE empleados;

CREATE TABLE departamento (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  presupuesto DOUBLE NOT NULL,	
  gastos DOUBLE NOT NULL
);

CREATE TABLE empleado (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  DNI INT(9) NOT NULL UNIQUE,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  id_departamento INT
  );

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleado VALUES(1, '32481596', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado VALUES(2, '5575632', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado VALUES(3, '6970642', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado VALUES(6, '38382980', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES(7, '80576669', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado VALUES(10, '46384486', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES(11, '67389283', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES(12, '41234836', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162', 'Juan Antonio','Sáez', 'Guerrero', NULL);

-- 1
SELECT apellido1 FROM empleado;

-- 2
SELECT DISTINCT apellido1 FROM empleado; 

-- 3
SELECT * FROM empleado;

-- 4
SELECT nombre, apellido1, apellido2 FROM empleado;

-- 5
SELECT id_departamento, nombre FROM empleado;

-- 6 
-- 7
-- 8
-- 9

-- 10
SELECT id, dni FROM empleado;

-- 11 
SELECT nombre FROM departamento WHERE presupuesto >= 0 ORDER BY presupuesto ASC;

-- 12 
SELECT nombre FROM departamento WHERE presupuesto <= 375000 ORDER BY presupuesto DESC;

-- 13
SELECT apellido1, nombre FROM empleado ORDER BY apellido1 AND nombre;

-- 14
SELECT nombre, apellido1 FROM empleado WHERE apellido1 = "Ruiz";
 
-- 15
SELECT nombre, apellido1, apellido2 FROM empleado WHERE apellido1 = 'RUIZ' AND 'salas';

-- 16
SELECT nombre, apellido1, apellido2, id.deparamento FROM empleado, departamento WHERE id=2;  
-- 17 
-- 18
-- 19 
-- 20