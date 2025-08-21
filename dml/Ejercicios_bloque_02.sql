/*📘 30 Ejercicios Avanzados Propuestos (SQL Server)
🔹 Sección 1 – JOINS y Agrupaciones

Listar todas las sucursales con la cantidad de empleados asignados.

Obtener el promedio de cumplimiento de indicadores (valor_real / valor_meta) por sucursal.

Mostrar la sucursal con mayor número de indicadores incumplidos (< 0%).

Obtener, por cada zona, el total de transacciones registradas en sus sucursales.

Calcular el monto promedio de los indicadores financieros de cada sucursal, ordenados de mayor a menor.

🔹 Sección 2 – Subconsultas

Listar los empleados cuyo desempeño promedio esté por debajo del promedio global de la empresa.

Identificar la sucursal con el peor indicador en la última semana.

Obtener todos los indicadores que están por debajo del promedio de su mismo tipo.

Mostrar los 3 mejores empleados en base a desempeño (subconsulta con TOP).

Listar las zonas que tienen al menos una sucursal con indicadores en alerta (< -15%).

🔹 Sección 3 – Tablas Temporales

Crear una tabla temporal con los indicadores de la última quincena y calcular su promedio por tipo.

Guardar en una tabla temporal el ranking de empleados por desempeño y mostrar el Top 10.

Crear una tabla temporal con todas las transacciones del día y agruparlas por sucursal.

Usar una tabla temporal para calcular desviaciones absolutas promedio por zona.

Cargar en una tabla temporal el detalle de indicadores de cada gerente y compararlo con el promedio nacional.

🔹 Sección 4 – Funciones

Crear una función escalar fn_diferencia_absoluta(@real, @meta) que devuelva la diferencia absoluta.

Crear una función fn_diferencia_porcentual(@real, @meta) que devuelva la diferencia porcentual con dos decimales.

Crear una función con retorno de tabla fn_indicadores_alerta(@umbral FLOAT) que devuelva todos los indicadores por debajo del umbral.

Crear una función fn_empleados_top(@top INT) que devuelva los N empleados con mejor desempeño.

Crear una función fn_sucursal_cumplimiento(@sucursal_id INT, @fecha_ini DATE, @fecha_fin DATE) que calcule el % de cumplimiento en un rango.

🔹 Sección 5 – Procedimientos Almacenados

Crear un SP sp_reporte_sucursal(@sucursal_id, @fecha_ini, @fecha_fin) que devuelva indicadores, promedios, mejor y peor indicador.

Crear un SP sp_alertas_zona(@zona_id) que muestre todas las sucursales con indicadores en alerta.

Crear un SP sp_ranking_empleados(@top INT) que devuelva el ranking de empleados.

Crear un SP sp_resumen_diario(@fecha DATE) que genere una tabla resumen con sucursal, total indicadores y % promedio.

Crear un SP sp_cumplimiento_global(@fecha_ini DATE, @fecha_fin DATE) que calcule desempeño total, mejor sucursal y peor sucursal.

🔹 Sección 6 – Triggers

Crear un trigger en indicadores que antes de insertar valide que valor_real >= 0.

Crear un trigger que registre en log_indicadores cualquier actualización de valor_real.

Crear un trigger que, al eliminar un indicador, guarde el registro en log_eliminaciones.

Crear un trigger en sucursales que no permita eliminar una sucursal con empleados asociados.

Crear un trigger en empleados que al insertar un nuevo registro valide que su zona_id coincide con la zona de la sucursal.*/