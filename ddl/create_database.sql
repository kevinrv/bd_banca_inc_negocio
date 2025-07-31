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