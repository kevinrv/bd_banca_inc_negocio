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

CREATE TABLE empleados (id INT IDENTITY(1,1) PRIMARY KEY,nombres VARCHAR(155) NOT NULL,apellidos VARCHAR(155) NOT NULL,numero_registro CHAR(6) UNIQUE NOT NULL,cargo VARCHAR(100) NULL,unidad VARCHAR(100) NOT NULL,email VARCHAR(100) UNIQUE,celular VARCHAR(20) UNIQUE);-- SucursalesCREATE TABLE sucursales (id INT IDENTITY(1,1) PRIMARY KEY,zona_id INT FOREIGN KEY REFERENCES zonas(id),gerente_id INT FOREIGN KEY REFERENCES empleados(id),codigo VARCHAR(6) UNIQUE NOT NULL,nombre VARCHAR(100) UNIQUE NOT NULL,direccion NVARCHAR(255) UNIQUE NOT NULL,email VARCHAR(100) UNIQUE,telefono VARCHAR(20) UNIQUE,coordenada_gps GEOGRAPHY);EXEC sp_help sucursales;-- IndicadoresCREATE TABLE indicadores (id INT IDENTITY(1,1) PRIMARY KEY,empleado_id INT FOREIGN KEY REFERENCES empleados(id),tipo_indicador_id INT FOREIGN KEY REFERENCES tipos_indicador(id),codigo CHAR(6) UNIQUE NOT NULL,nombre VARCHAR(255) UNIQUE NOT NULL,unidad_medida VARCHAR(100) NOT NULL);-- Registros de indicadores diariosCREATE TABLE registros_indicadores_diarios(id INT IDENTITY(1,1) PRIMARY KEY,sucursal_id INT,indicador_id INT,fecha_reporte DATE,valor_real DECIMAL(9,2),valor_meta DECIMAL(9,2),created_at DATETIME DEFAULT GETDATE(),updated_at DATETIME,deleted_at DATETIME,create_by INT,update_by INT,deleted_by INT,CONSTRAINT fk_sucursal_indicador_id FOREIGN KEY (sucursal_id) REFERENCES sucursales(id),FOREIGN KEY (indicador_id) REFERENCES indicadores(id) );EXEC sp_help registros_indicadores_diarios;-- Desviaciones indicadoresCREATE TABLE desviaciones_indicadores (id INT IDENTITY(1,1) PRIMARY KEY,registro_diario_indicador_id INT UNIQUE NOT NULL,diferencia_absoluta DECIMAL(9,2) NOT NULL,diferencia_porcentual DECIMAL(9,2) NOT NULL,clasificación VARCHAR(155) NOT NULL,CONSTRAINT fk_registro_diario_indicador FOREIGN KEY (registro_diario_indicador_id) REFERENCES registros_indicadores_diarios(id));