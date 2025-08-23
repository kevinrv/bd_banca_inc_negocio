CREATE DATABASE dw_banca_inc_negocio;
GO
USE dw_banca_inc_negocio; 

CREATE TABLE dim_tiempo(
id INT IDENTITY(1,1) PRIMARY KEY,
fecha_registro DATE,
dia VARCHAR (10),
mes VARCHAR(20),
trimestre VARCHAR(20),
anio VARCHAR(10)
);

CREATE TABLE dim_sucursal (
id INT IDENTITY(1,1) PRIMARY KEY,
id_sucursal INT,
nombre VARCHAR(100),
codigo VARCHAR(10),
zona VARCHAR(155),
region VARCHAR(55)
);

CREATE TABLE dim_indicador (
id INT IDENTITY(1,1) PRIMARY KEY,
indicador_id INT,
nombre VARCHAR(255),
tipo_indicador VARCHAR(255),
unidad_medida VARCHAR(100)
);

CREATE TABLE dim_alerta (
id INT IDENTITY(1,1) PRIMARY KEY,
desviacion_indicador_id INT,
clasificacion VARCHAR(155),
color VARCHAR(100),
);

CREATE TABLE hechos_indicadores(
id INT IDENTITY(1,1) PRIMARY KEY,
dim_tiempo_id INT,
dim_sucursal_id INT,
dim_indicador_id INT,
dim_alerta_id INT,
valor_real DECIMAL(9,2),
valor_meta DECIMAL(9,2),
desviacion_diferencial DECIMAL(9,2),
CONSTRAINT fk_dim_tiempo_id FOREIGN KEY (dim_tiempo_id) REFERENCES dim_tiempo(id),
CONSTRAINT fk_dim_sucursal_id FOREIGN KEY (dim_sucursal_id) REFERENCES dim_sucursal(id),
CONSTRAINT fk_dim_indicador_id FOREIGN KEY (dim_indicador_id) REFERENCES dim_indicador(id),
CONSTRAINT fk_dim_alerta_id FOREIGN KEY (dim_alerta_id) REFERENCES dim_alerta(id),
);