
DROP DATABASE IF EXISTS EMPLOYEES;

CREATE DATABASE IF NOT EXISTS EMPLOYEES;

USE EMPLOYEES;

/*tabla catalogo*/
CREATE TABLE cities(
    city_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL
);

/*Tabla empleado */
CREATE TABLE employees(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    names VARCHAR(100) NOT NULL,
    surnames VARCHAR(100) NOT NULL,
    type_documento ENUM('Cedula Ciudadania','Cedula Extrangeria','Pasaporte') NOT NULL,
    identification VARCHAR(30) NOT NULL,
    adress VARCHAR(100) NOT NULL,
    city INTEGER UNSIGNED NOT NULL,
    nationanality VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    profession VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    gender ENUM('Masculino', 'Femenino', 'Otro'),
    FOREIGN KEY (city) REFERENCES cities(city_id) ON DELETE RESTRICT ON UPDATE CASCADE

);