USE bd_banca_inc_negocio;
GO

SELECT*FROM registros_indicadores_diarios;

--- Dim Tiempo

SELECT
DISTINCT
	fecha_reporte,
	DAY(fecha_reporte) AS 'dia',
	MONTH(fecha_reporte) AS 'mes',
	DATEPART(QUARTER,fecha_reporte) as 'trimestre',
	YEAR(fecha_reporte) AS 'anio'
FROM registros_indicadores_diarios;

-- Dim Sucursal
SELECT*FROM sucursales;
SELECT
	s.id AS 'sucursal_id',
	s.nombre,
	s.codigo,
	z.nombre AS 'zona',
	u.region_natural AS 'region'
FROM sucursales s
INNER JOIN ubigeos u ON u.id=s.ubigeo_id
INNER JOIN zonas z ON z.id=u.zona_id;

-- Dim Indicador

SELECT
	i.id AS 'indicador_id',
	i.nombre,
	ti.nombre AS tipo_indicador,
	i.unidad_medida
FROM indicadores i
INNER JOIN tipos_indicador ti ON ti.id=i.tipo_indicador_id;

-- Dim Alertas

SELECT
	id AS 'desviacion_indicador_id',
	clasificación,
	CASE 
		WHEN clasificación='Excepcional' THEN 'AZUL'
		WHEN clasificación='Bajo' THEN 'NARANJA'
		WHEN clasificación='Sobre la meta' THEN 'VERDE'
		WHEN clasificación='Cumplido' THEN 'AMARILLO'
		WHEN clasificación='Crítico' THEN 'ROJO'
		WHEN clasificación='Excelente' THEN 'CELESTE'
	ELSE
		'BLANCO'
	END AS 'Color'
FROM desviaciones_indicadores;

-- hechos indicadores

SELECT
	rid.fecha_reporte AS 'fecha_registro',
	rid.sucursal_id,
	rid.indicador_id,
	di.id AS alerta_id,
	valor_real,
	valor_meta,
	valor_real-valor_meta AS 'desviacion_diferencial'
FROM registros_indicadores_diarios rid
INNER JOIN desviaciones_indicadores di ON di.registro_diario_indicador_id=rid.id;