# bd_banca_inc_negocio: caso BD transaccional

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



#🧠 CASO DE INTELIGENCIA DE NEGOCIOS
Banca: Análisis Estratégico de Indicadores de Desempeño
🏢 Contexto Empresarial
El banco FinanzAS, en su proceso de transformación digital, busca mejorar la toma de decisiones gerenciales mediante el uso de soluciones de Inteligencia de Negocios (BI). Actualmente, la información sobre indicadores de desempeño se encuentra dispersa en sistemas transaccionales, reportes manuales y hojas Excel.

La dirección general ha solicitado desarrollar una solución de BI que integre toda la información de indicadores para permitir análisis histórico, comparativo, predictivo y de desempeño por zonas, sucursales, periodos e indicadores.

🎯 Objetivos del Proyecto BI
Integrar los datos operativos de metas e indicadores en un Data Warehouse.

Construir una solución que permita analizar:

Cumplimiento de indicadores a lo largo del tiempo.

Desempeño por zona, tipo de indicador y sucursal.

Tendencias y variaciones mensuales o anuales.

Alertas acumuladas y desviaciones recurrentes.

Facilitar el acceso a la información mediante dashboards interactivos en Power BI, Tableau u otra herramienta de visualización.

Crear un modelo multidimensional para consultas OLAP.

📦 Fuentes de Datos
Sistema Transaccional SQL Server (indicadores, metas, valores diarios).

Archivos Excel con metas históricas y correcciones manuales.

Reportes PDF generados por áreas comerciales.

API interna para cargar metas planificadas a futuro.

📐 Modelo Dimensional Propuesto (Estrella)
📌 Tabla de Hechos: hechos_indicadores
Campo	Descripción
id_sucursal	FK sucursal
id_indicador	FK indicador
id_fecha	FK tiempo
valor_meta	Meta del día
valor_real	Valor registrado
desviacion	Diferencia (real - meta)
cumplimiento_pct	% de cumplimiento
alerta	Estado: Verde / Amarillo / Rojo

📅 Dimensiones
dim_tiempo: día, mes, trimestre, año, día de la semana, feriado

dim_sucursal: nombre, código, zona, región

dim_indicador: nombre, tipo, unidad, fórmula de cálculo

dim_alerta: código, nivel de severidad, color, descripción

📊 Indicadores Clave para el Dashboard
Indicador	Descripción
% Cumplimiento Diario Promedio	Por zona, por indicador
N° de Alertas Rojas por Semana	Evaluación de desempeño crítico
Ranking de Sucursales	Por cumplimiento general
Top 5 Indicadores con Mayor Incumplimiento	Análisis por tipo
Evolución Temporal del Cumplimiento	Gráfico de líneas

🔍 Requerimientos Analíticos
Tendencia mensual del cumplimiento por zona e indicador.

Mapas de calor por zona y tipo de indicador.

Comparativo año a año del cumplimiento por sucursal.

Alertas acumuladas por tipo de indicador.

Desempeño acumulado por trimestre y región.

KPI de mejora vs. año anterior.

🧠 Casos de uso de BI
Gerencia Comercial: Visualizar sucursales de bajo rendimiento para reforzar campañas.

Planificación Estratégica: Evaluar la efectividad de las metas asignadas.

Auditoría Interna: Detectar anomalías frecuentes por manipulación de datos.

Gestión de Riesgos: Supervisar cumplimiento de KPIs normativos.

🛠️ Retos para el Desarrollador BI
Diseña el esquema en estrella del data warehouse.

Implementa un ETL que convierta los datos operacionales en hechos y dimensiones limpias.

Crea un tablero interactivo con filtros por mes, zona e indicador.

Define medidas calculadas como:

% Cumplimiento (real/meta)

Número de alertas acumuladas

Sucursal con mayor desviación

Propón un mecanismo de actualización diaria automática del cubo

