# bd_banca_inc_negocio

Perfecto, aquí tienes un caso propuesto sobre el tema "Banca: Gestión de Indicadores de Negocio". Este caso es adecuado para diseñar un modelo de base de datos relacional y trabajar conceptos como normalización, relaciones jerárquicas, funciones, vistas analíticas y reportes.

🏦 CASO PROPUESTO: Gestión de Indicadores de Desempeño en una Red de Sucursales Bancarias
🔍 Contexto General
El banco FinanzAS cuenta con una red de sucursales a nivel nacional. Para mejorar la toma de decisiones, ha decidido implementar un sistema de gestión de indicadores de negocio. Este sistema debe registrar, monitorear y analizar el desempeño diario de las sucursales en relación con metas establecidas para diversos indicadores financieros y operativos.

🎯 Objetivos del sistema
Registrar los indicadores clave de desempeño (KPIs) utilizados por el banco.

Definir metas diarias para cada indicador por sucursal.

Almacenar los valores reales diarios reportados por cada sucursal.

Calcular desviaciones, tanto en valor como en porcentaje, entre la meta y el valor real.

Generar alertas cuando se detecten incumplimientos críticos.

Permitir el análisis por tipo de indicador, zona geográfica, y periodo.

📌 Reglas de negocio
Un indicador puede aplicarse a varias sucursales, pero sus metas pueden variar por día y por sucursal.

Cada sucursal pertenece a una zona geográfica (ej. Norte, Centro, Sur).

Las metas son establecidas por la gerencia de planificación y pueden cambiar diariamente.

Un registro diario de indicador puede no existir si la sucursal no ha reportado aún.

Si el valor real supera o no alcanza la meta por más de un 20%, se genera una alerta roja.

Los tipos de indicadores pueden ser: financieros, operativos, de atención al cliente, cumplimiento normativo, etc.

📂 Tablas sugeridas (estructura general)
Tabla	Descripción
zonas	Zonas geográficas del país
sucursales	Sucursales del banco
indicadores	Indicadores clave definidos por el banco
tipos_indicador	Clasificación de indicadores
metas_indicadores	Metas asignadas por sucursal, indicador y fecha
valores_diarios	Valores reales reportados por cada indicador y sucursal
alertas	Alertas generadas por incumplimiento
usuarios (opcional)	Encargados de ingresar o validar los registros diarios

📊 Ejemplos de Indicadores
Código	Nombre Indicador	Unidad de Medida	Tipo
IND001	Total de Colocaciones del Día	Monto (S/.)	Financiero
IND002	N° de Reclamos Atendidos	Número	Atención al Cliente
IND003	% Cumplimiento de Ventas Cruzadas	Porcentaje	Operativo
IND004	Tiempo promedio de espera	Segundos	Atención al Cliente

📈 Ejemplo de Análisis esperado
Ranking de cumplimiento diario por sucursal.

Tendencia semanal o mensual por indicador.

Identificación de sucursales con bajo rendimiento recurrente.

Alertas críticas generadas en el mes.

💡 Preguntas Propuestas
¿Qué tablas necesitan tener claves compuestas?

¿Cuál sería la clave primaria y foránea en la tabla valores_diarios?

¿Cómo normalizarías la unidad de medida de los indicadores?

Diseña una vista que calcule el cumplimiento diario de cada sucursal por indicador.

Crea una función que retorne el estado del cumplimiento (Cumplido, Parcial, Incumplido).

¿Cómo modelarías el caso si se quiere añadir también indicadores mensuales?

