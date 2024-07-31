
CREATE DATABASE IF NOT EXISTS RegistroEstudiantes;
USE RegistroEstudiantes;


CREATE TABLE IF NOT EXISTS Estados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS EstadosCiviles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS Documentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);


CREATE TABLE IF NOT EXISTS Estudiantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    estado_id INT NOT NULL,
    estado_civil_id INT NOT NULL,
    documento_id INT NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    clave VARCHAR(100) NOT NULL,
    FOREIGN KEY (estado_id) REFERENCES Estados(id),
    FOREIGN KEY (estado_civil_id) REFERENCES EstadosCiviles(id),
    FOREIGN KEY (documento_id) REFERENCES Documentos(id)
);


INSERT INTO Estados (nombre) VALUES ('Estado 1'), ('Estado 2'), ('Estado 3');


INSERT INTO EstadosCiviles (nombre) VALUES ('Soltero'), ('Casado'), ('Divorciado');


INSERT INTO Documentos (tipo) VALUES ('DNI'), ('Pasaporte'), ('Licencia de Conducir');
