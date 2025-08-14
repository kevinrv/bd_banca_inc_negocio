/*Ejercicios B�sicos

Listado simple de sucursales
Obtener id, nombre, email y telefono de todas las sucursales ordenadas alfab�ticamente por nombre.
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

Buscar empleados por unidad
Listar nombres, apellidos y cargo de los empleados que trabajen en la unidad 'Comercial'.

Ubigeos por regi�n
Mostrar todos los ubigeos que pertenezcan a la regi�n natural 'Costa'.

Ejercicios Intermedios

Sucursales con ubicaci�n
Consultar el nombre de la sucursal, departamento, provincia y distrito usando JOIN entre sucursales y ubigeos.

Indicadores por tipo
Listar codigo, nombre del indicador y el nombre del tipo de indicador, uniendo indicadores con tipos_indicador.

Registros diarios con meta y real
Mostrar fecha_reporte, valor_meta, valor_real y la diferencia (valor_real - valor_meta) para cada registro diario.

Cantidad de sucursales por regi�n natural
Contar cu�ntas sucursales hay agrupadas por region_natural.

Ejercicios Avanzados

Top 5 sucursales con mayor cumplimiento
Calcular el porcentaje (valor_real / valor_meta) * 100 de cada registro diario y mostrar las 5 sucursales con mejor promedio.

Detecci�n de desviaciones cr�ticas
Listar las desviaciones (diferencia_porcentual) mayores al 20%, mostrando tambi�n el nombre de la sucursal y el nombre del indicador.

Hist�rico de reportes por empleado
Mostrar cu�ntos registros diarios ha reportado cada empleado (usando JOIN entre indicadores, registros diarios y empleados).

Sucursales sin gerente asignado
Listar id, nombre y email de todas las sucursales cuyo gerente_id est� en NULL.

Ejercicios con Procedimientos y Funciones

Procedimiento de inserci�n de sucursal
Crear un procedimiento almacenado que reciba datos de una nueva sucursal y valide que el c�digo no exista antes de insertarla.

Funci�n de cumplimiento promedio
Crear una funci�n escalar que reciba el id de una sucursal y retorne el porcentaje promedio de cumplimiento (valor_real / valor_meta * 100).

Trigger de control de valores negativos
Crear un trigger que impida insertar en registros_indicadores_diarios un valor_real o valor_meta menor a 0.*/