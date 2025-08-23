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