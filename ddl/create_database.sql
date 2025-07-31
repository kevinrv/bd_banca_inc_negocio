-- Creaci+on base de datos
CREATE DATABASE bd_banca_inc_negocio;
--DROP DATABASE bd_banca_inc_negocio;
USE bd_banca_inc_negocio;
-- Creación de Tablas

--- Tipos de Indicador

CREATE TABLE tipos_indicador (
id INT IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR(255) UNIQUE NOT NULL,
descripcion VARCHAR(MAX) NULL
);
-- Para verficar los detalles de las tablas
EXEC sp_help tipos_indicador;


--Zonas 

CREATE TABLE zonas(
id INT IDENTITY(1,1) PRIMARY KEY,
codigo VARCHAR(6) UNIQUE NOT NULL,
nombre VARCHAR(155) UNIQUE NOT NULL,
ubigeo_id INT 
);

-- empleados

CREATE TABLE empleados (    id INT IDENTITY(1,1) PRIMARY KEY,    nombres VARCHAR(155) NOT NULL,    apellidos VARCHAR(155) NOT NULL,    numero_registro CHAR(6) UNIQUE NOT NULL,    cargo VARCHAR(100) NULL,    unidad VARCHAR(100) NOT NULL,    email VARCHAR(100) UNIQUE,    celular VARCHAR(20) UNIQUE);-- SucursalesCREATE TABLE sucursales (    id INT IDENTITY(1,1) PRIMARY KEY,    zona_id INT FOREIGN KEY REFERENCES zonas(id),    gerente_id INT FOREIGN KEY REFERENCES empleados(id),    codigo VARCHAR(6) UNIQUE NOT NULL,    nombre VARCHAR(100) UNIQUE NOT NULL,    direccion NVARCHAR(255) UNIQUE NOT NULL,    email VARCHAR(100) UNIQUE,    telefono VARCHAR(20) UNIQUE,    coordenada_gps GEOGRAPHY);EXEC sp_help sucursales;