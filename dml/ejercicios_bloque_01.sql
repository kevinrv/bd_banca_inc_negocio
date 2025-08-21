USE bd_banca_inc_negocio;
/*Ejercicios Básicos

Listado simple de sucursales
Obtener id, nombre, email y telefono de todas las sucursales ordenadas alfabéticamente por nombre.
*/
SELECT 
	id, 
	nombre,
	email, 
	telefono
FROM sucursales
ORDER BY nombre ASC;

SELECT 
	id, 
	nombres,
	apellidos,
	email, 
	celular
FROM empleados
ORDER BY nombres ASC;

/*
Indicadores registrados
Mostrar todos los indicadores con su codigo, nombre y unidad_medida.
*/

SELECT codigo, nombre, unidad_medidaFROM indicadores;
/*

Buscar empleados por unidad
Listar nombres, apellidos y cargo de los empleados que trabajen en la unidad 'Comercial'.*/

SELECT 
	CONCAT(nombres,' ',
	apellidos) AS 'Empleado',
	cargo
FROM empleados
WHERE unidad='comercial';
/*

Ubigeos por región
Mostrar todos los ubigeos que pertenezcan a la región natural 'Costa'.*/

SELECT*FROM ubigeos
WHERE region_natural='Costa';

/*

Ejercicios Intermedios

Sucursales con ubicación
Consultar el nombre de la sucursal, departamento, provincia y distrito usando JOIN
entre sucursales y ubigeos.*/

SELECT 
	s.nombre AS 'Sucursal',
	u.departamento,
	u.provincia,
	u.distrito,
	u.ubigeo
FROM ubigeos u
INNER JOIN sucursales s ON s.ubigeo_id=u.id;

SELECT 
	CASE WHEN s.nombre IS NULL THEN 'No existe sucursal' ELSE s.nombre END AS 'Sucursal',
	u.departamento,
	u.provincia,
	u.distrito,
	u.ubigeo
FROM ubigeos u
LEFT JOIN sucursales s ON s.ubigeo_id=u.id
WHERE s.id IS NULL;

/*

Indicadores por tipo
Listar codigo, nombre del indicador y el nombre del tipo de indicador, 
uniendo indicadores con tipos_indicador.*/

SELECT
	i.codigo,
	i.nombre AS 'Indicador',
	ti.nombre AS 'Tipo Indicador'
FROM indicadores i
INNER JOIN tipos_indicador ti ON ti.id=i.tipo_indicador_id;

/*

Registros diarios con meta y real
Mostrar fecha_reporte, valor_meta, valor_real y la diferencia 
(valor_real - valor_meta) para cada registro diario.
*/
SELECT*FROM registros_indicadores_diarios;
 SELECT 	fecha_reporte, 	valor_meta, 	valor_real, 	valor_real - Valor_meta as 'Variaciòn' FROM registros_indicadores_diarios;

/*

Cantidad de sucursales por región natural
Contar cuántas sucursales hay agrupadas por region_natural.
*/
SELECT
	u.region_natural,
	COUNT(s.id) AS 'num_sucursales'
FROM sucursales s
INNER JOIN ubigeos u ON u.id=s.ubigeo_id
GROUP BY u.region_natural;

/*


Ejercicios Avanzados

Top 5 sucursales con mayor cumplimiento
Calcular el porcentaje (valor_real / valor_meta) * 100 de cada registro diario y 
mostrar las 5 sucursales con mejor promedio.*/

SELECT TOP 5
	s.nombre AS 'Sucursal',
	AVG((valor_real / valor_meta) * 100) AS 'porcentage_promedio'
FROM registros_indicadores_diarios rid
INNER JOIN sucursales s ON s.id=rid.sucursal_id
GROUP BY s.nombre
ORDER BY 2 DESC;

--CORREGIR BD
UPDATE registros_indicadores_diarios SET valor_meta=valor_real*1.10
WHERE valor_meta=0;

/*

Detección de desviaciones críticas
Listar las desviaciones (diferencia_porcentual) mayores al 20%, 
mostrando también el nombre de la sucursal y el nombre del indicador.*/
--Previa
INSERT INTO desviaciones_indicadores
SELECT 
	id AS 'registro_diario_idicador_id',
	valor_real-valor_meta AS 'diferencia_absoluta',
	((valor_real-valor_meta)/valor_meta)*100 AS 'diferencia_porcentual',
	CASE 
		WHEN ((valor_real-valor_meta)/valor_meta)*100 <=-20 THEN 'Crítico'
		WHEN ((valor_real-valor_meta)/valor_meta)*100 <=-10 THEN 'Bajo'
		WHEN ((valor_real-valor_meta)/valor_meta)*100 <=10 THEN 'Cumplido'
		WHEN ((valor_real-valor_meta)/valor_meta)*100 <=20 THEN 'Sobre la meta'
		WHEN ((valor_real-valor_meta)/valor_meta)*100 <=50 THEN 'Excelente'
		WHEN ((valor_real-valor_meta)/valor_meta)*100 >=50 THEN 'Excepcional'
	ELSE 
		'No Tipificado'
	END AS 'clasificacion'
FROM registros_indicadores_diarios;

--  Resolución
SELECT
	s.nombre AS 'Sucursal',
	i.nombre AS 'Indicador',
	di.diferencia_porcentual,
	di.clasificación
FROM desviaciones_indicadores di
INNER JOIN registros_indicadores_diarios rid ON rid.id=di.registro_diario_indicador_id
INNER JOIN sucursales s ON s.id=rid.sucursal_id
INNER JOIN indicadores i ON i.id=rid.indicador_id
WHERE di.diferencia_porcentual>20;


/*

Histórico de reportes por empleado
Mostrar cuántos registros diarios ha reportado cada empleado
(usando JOIN entre indicadores, registros diarios y empleados).*/
SELECT
	CONCAT(e.nombres,' ', e.apellidos) AS 'empleado',
	COUNT(rid.id) AS 'num_registros'
FROM empleados e
INNER JOIN indicadores i ON i.empleado_id=e.id
INNER JOIN registros_indicadores_diarios rid ON rid.indicador_id=i.id
GROUP BY e.nombres, e.apellidos
ORDER BY 2 DESC;

/*

Sucursales sin gerente asignado
Listar id, nombre y email de todas las sucursales cuyo gerente_id esté en NULL.*/
Tarea
/*

Ejercicios con Procedimientos y Funciones

Procedimiento de inserción de sucursal
Crear un procedimiento almacenado que reciba datos de una nueva sucursal y 
valide que el código no exista antes de insertarla.

Función de cumplimiento promedio
Crear una función escalar que reciba el id de una sucursal y retorne el 
porcentaje promedio de cumplimiento (valor_real / valor_meta * 100).

Trigger de control de valores negativos
Crear un trigger que impida insertar en registros_indicadores_diarios un
valor_real o valor_meta menor a 0.*/