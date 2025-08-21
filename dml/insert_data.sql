USE bd_banca_inc_negocio;
GO

-- Tipos de indicadores
SELECT*FROM tipos_indicador;

INSERT INTO tipos_indicador VALUES ('Indicadores de negocio','Indicadores de negocio');

DELETE FROM tipos_indicador;
-- Reiniciar ID tablas
DBCC CHECKIDENT ('tipos_indicador', RESEED, 0);

INSERT INTO tipos_indicador (nombre, descripcion) VALUES
('Financiero', 'Indicadores relacionados al desempe�o econ�mico y rentabilidad del banco, como colocaciones, dep�sitos, ingresos y m�rgenes.'),
('Operativo', 'Indicadores que miden la eficiencia de los procesos internos, como tiempos de atenci�n, cumplimiento de tareas o volumen procesado.'),
('Atenci�n al Cliente', 'Indicadores relacionados con la experiencia del cliente, como tiempos de espera, reclamos atendidos, encuestas de satisfacci�n.'),
('Normativo', 'Indicadores que reflejan el cumplimiento de requisitos legales o regulatorios establecidos por organismos supervisores como la SBS.'),
('Comercial', 'Indicadores ligados al rendimiento de productos financieros, campa�as de ventas o captaci�n de clientes.'),
('Riesgo', 'Indicadores que permiten monitorear exposici�n al riesgo, morosidad, provisiones o p�rdidas esperadas.'),
('Tecnol�gico', 'Indicadores de disponibilidad de canales digitales, tiempos de respuesta del sistema, o n�mero de incidencias TI.'),
('Capital Humano', 'Indicadores que reflejan desempe�o, productividad y rotaci�n del personal.'),
('Sostenibilidad', 'Indicadores relacionados con impacto ambiental, responsabilidad social o inclusi�n financiera.'),
('Gesti�n de Proyectos', 'Indicadores que miden avance, costo y cumplimiento de cronograma en proyectos estrat�gicos internos.');


-- empleados
SELECT*FROM empleados;

INSERT INTO empleados VALUES
('Rafaela', 'Plaza', '604876', 'Supervisor de Operaciones', 'Planificaci�n', 'lpalma@gmail.com', '421948924'),
('Charo', 'Cabrero', '565938', 'Analista de Negocio', 'Operaciones', 'qvazquez@gmail.com', '160975351'),
('Nieves', 'Cisneros', '871158', 'Subgerente Regional', 'Recursos Humanos', 'matacarmen@yahoo.com', '858398947'),
('Coral', 'Herranz', '423209', 'Supervisor de Operaciones', 'Operaciones', 'fbayon@hotmail.com', '201868483'),
('Leonardo', 'Sanjuan', '751591', 'Gestor de Clientes', 'Comercial', 'ramona33@gmail.com', '135256012'),
('Vicente', 'Carrera', '736395', 'Especialista en Riesgos', 'Riesgos', 'angelcamara@hotmail.com', '801694170'),
('Estefan�a', 'Mata', '067297', 'Coordinador de Zona', 'Planificaci�n', 'matilde04@gmail.com', '281490718'),
('Daniela', 'Godoy', '517148', 'Analista de Negocio', 'TI', 'alarconcarlos@gmail.com', '517359561'),
('Ismael', 'Ferrero', '518370', 'Ejecutivo Comercial', 'Banca Empresa', 'tamayoantonia@hotmail.com', '302648416'),
('Ignacio', 'De la Torre', '607264', 'Asesor Financiero', 'Banca Personal', 'jantonio19@hotmail.com', '204153782'),
('Jes�s', 'Alarc�n', '783576', 'Analista de Negocio', 'TI', 'evaristo52@hotmail.com', '103928741'),
('Tamara', 'Espejo', '708392', 'Supervisor de Operaciones', 'Operaciones', 'fresnoangel@hotmail.com', '192048561'),
('Salvador', 'Escobar', '170467', 'Jefe de Sucursal', 'Banca Personal', 'cruzyolanda@gmail.com', '589471236'),
('Guillermo', 'Casas', '987390', 'Gestor de Clientes', 'Comercial', 'aylacampos@gmail.com', '613729504'),
('�ngela', 'Ben�tez', '055104', 'Ejecutivo Comercial', 'Banca Empresa', 'blasfeliu@hotmail.com', '285139807'),
('Aurora', 'Calle', '917352', 'Coordinador de Zona', 'Planificaci�n', 'vargastamara@hotmail.com', '271654823'),
('Juli�n', 'Jorquera', '315280', 'Analista de Negocio', 'TI', 'cecilia08@gmail.com', '401875326'),
('Pilar', 'Rico', '408194', 'Supervisor de Operaciones', 'Operaciones', 'baldovinojose@gmail.com', '538174209'),
('Roc�o', 'Castilla', '063812', 'Especialista en Riesgos', 'Riesgos', 'alonsorosa@gmail.com', '914082736'),
('Sergio', 'Pueyo', '199365', 'Subgerente Regional', 'Auditor�a Interna', 'joaquin24@hotmail.com', '352801764'),
('Julio', 'S�enz', '674721', 'Jefe de Sucursal', 'Banca Empresa', 'rociocabrera@hotmail.com', '201583974'),
('Sonia', 'Peinado', '891347', 'Ejecutivo Comercial', 'Comercial', 'bernadestefania@gmail.com', '871520964'),
('Mario', 'Rosales', '358072', 'Gestor de Clientes', 'Banca Personal', 'soledad98@gmail.com', '472180653'),
('Helena', 'Pati�o', '894027', 'Asesor Financiero', 'Banca Personal', 'elisaalba@hotmail.com', '751904682'),
('Rebeca', 'Garrido', '032476', 'Analista de Negocio', 'TI', 'mariadelmar@hotmail.com', '928107364'),
('Samuel', 'Solano', '736512', 'Coordinador de Zona', 'Planificaci�n', 'rosario66@gmail.com', '395726840'),
('Tom�s', 'Quintana', '295840', 'Especialista en Riesgos', 'Riesgos', 'bmartinez@gmail.com', '314729805'),
('Manuela', 'Benavente', '930142', 'Supervisor de Operaciones', 'Operaciones', 'aureliovazquez@hotmail.com', '487329150'),
('�lvaro', 'Sevilla', '172805', 'Jefe de Sucursal', 'Banca Empresa', 'gabriel73@hotmail.com', '683274915'),
('Luc�a', 'Monge', '190648', 'Gestor de Clientes', 'Comercial', 'teresatorres@hotmail.com', '902158374');

-- Editar campos 
UPDATE empleados set celular='123456789'
WHERE id=16;

--- Indicadores 
SELECT*FROM indicadores;

ALTER TABLE indicadores
ADD descripcion VARCHAR(500) null

INSERT INTO indicadores (empleado_id, tipo_indicador_id, codigo, nombre, unidad_medida, descripcion) VALUES
(1, 1, 'IND001', 'Colocaciones Diarias', 'Monto (S/.)', 'Monto total colocado en cr�ditos diarios por sucursal'),
(2, 1, 'IND002', 'Captaci�n de Ahorros', 'Monto (S/.)', 'Monto diario captado en cuentas de ahorro'),
(3, 2, 'IND003', 'Transacciones Totales', 'N�mero', 'N�mero total de transacciones procesadas en el d�a'),
(4, 3, 'IND004', 'Tasa de Conversi�n de Ventas', 'Porcentaje', 'Porcentaje de oportunidades convertidas en ventas'),
(5, 4, 'IND005', '�ndice de Satisfacci�n', '�ndice', 'Promedio de satisfacci�n del cliente diario'),
(6, 5, 'IND006', 'Rentabilidad por Empleado', 'Ratio', 'Relaci�n entre utilidad neta y n�mero de empleados'),
(7, 6, 'IND007', 'Tiempo Promedio de Atenci�n', 'Segundos', 'Tiempo promedio de atenci�n por cliente'),
(8, 7, 'IND008', 'Cumplimiento de Metas', 'Porcentaje', 'Porcentaje de metas diarias alcanzadas'),
(9, 8, 'IND009', '�ndice de Mora', 'Porcentaje', 'Porcentaje de cr�ditos vencidos frente al total'),
(10, 9, 'IND010', 'Crecimiento Diario', 'Porcentaje', 'Variaci�n diaria de crecimiento de cartera'),
(11, 10, 'IND011', 'Indicador Global Diario', '�ndice', '�ndice de evaluaci�n global diaria por sucursal'),
(12, 2, 'IND012', 'Operaciones por Empleado', 'N�mero', 'Cantidad de operaciones realizadas por cada colaborador'),
(13, 3, 'IND013', 'Tasa de Cross Selling', 'Porcentaje', 'Porcentaje de clientes con m�s de un producto'),
(14, 4, 'IND014', '�ndice de Retenci�n', 'Porcentaje', 'Porcentaje de clientes que permanecen activos'),
(15, 5, 'IND015', 'Eficiencia Operativa', 'Ratio', 'Relaci�n ingresos operativos frente a gastos'),
(16, 6, 'IND016', 'Tiempo de Espera', 'Segundos', 'Segundos promedio de espera antes de ser atendido'),
(17, 7, 'IND017', 'Desviaci�n de Objetivos', 'Porcentaje', 'Porcentaje de desviaci�n respecto al objetivo'),
(18, 8, 'IND018', 'Recuperaci�n de Mora', 'Porcentaje', 'Porcentaje de recuperaci�n frente a pr�stamos vencidos'),
(19, 9, 'IND019', 'Crecimiento Anualizado', 'Porcentaje', 'Proyecci�n de crecimiento basada en el comportamiento actual'),
(20, 10, 'IND020', 'Cumplimiento Integral Diario', '�ndice', 'Evaluaci�n diaria del cumplimiento total por unidad'),
(21, 1, 'IND021', 'Dep�sitos Diarios', 'Monto (S/.)', 'Monto total depositado en el d�a'),
(22, 2, 'IND022', 'Retiros Diarios', 'Monto (S/.)', 'Monto total retirado por los clientes'),
(23, 3, 'IND023', 'Conversi�n Digital', 'Porcentaje', 'Tasa de uso de canales digitales por clientes'),
(24, 4, 'IND024', 'Satisfacci�n Web', '�ndice', 'Nivel de satisfacci�n tras uso de la plataforma online'),
(25, 5, 'IND025', 'Rentabilidad por Zona', 'Ratio', 'Utilidad generada por unidad geogr�fica'),
(26, 6, 'IND026', 'Tiempo de Respuesta Web', 'Segundos', 'Tiempo promedio de carga de la web'),
(27, 7, 'IND027', 'Cumplimiento de KPIs Cr�ticos', 'Porcentaje', 'Porcentaje de indicadores clave cumplidos'),
(28, 8, 'IND028', 'Cr�ditos Vencidos', 'Porcentaje', 'Porcentaje de cr�ditos con morosidad'),
(29, 9, 'IND029', 'Crecimiento Activos Financieros', 'Porcentaje', 'Aumento diario de activos financieros'),
(30, 10, 'IND030', 'Desempe�o Integral Diario', '�ndice', 'Indicador global para medir rendimiento diario');

--- ejercicio 01
-- Mostrar el n�mero de indicadores que tiene cada tipo de indicador

SELECT 
	ti.nombre AS 'tipo_indicador',
	count(i.id) AS 'num_indicadores'
FROM indicadores i
	INNER JOIN tipos_indicador ti ON ti.id=i.tipo_indicador_id
GROUP BY ti.nombre;

--- ejercicio 02
-- Mostrar el n�mero de indicadores que tiene a cargo cada empleado

SELECT 
	e.nombres AS 'empleado',
	count(i.id) AS 'num_indicadores'
FROM indicadores i
	INNER JOIN empleados e ON e.id=i.empleado_id
GROUP BY e.nombres;

-- ejercicio 03
-- Mostrar el numero de empleados por cada unidad, ordenados de mayor a menor
SELECT
	unidad,
	count(id) AS 'num_empleados'
FROM empleados
GROUP BY unidad
ORDER BY 2 DESC;

-- ejercicio 04
-- Mostrar el numero de empleados por cada unidad, ordenados de mayor a menor.
--- Solo considerar las unidades que tengan mas de 3 empleados
SELECT
	unidad,
	count(id) AS 'num_empleados'
FROM empleados
GROUP BY unidad
HAVING count(id)>3
ORDER BY 2 DESC;

--ubigeos

SELECT*FROM ubigeos;

DROP TABLE ubigeos;

CREATE TABLE ubigeos(
id INT IDENTITY(1,1) PRIMARY KEY,
ubigeo CHAR(6) UNIQUE NOT NULL,
departamento VARCHAR(100) NOT NULL,
provincia VARCHAR(155) NOT NULL,
distrito VARCHAR(155) NOT NULL,
region_natural VARCHAR(55) NOT NULL
);

--Zonas
ALTER TABLE zonas
ADD CONSTRAINT fk_ubigeo_zonas FOREIGN KEY (ubigeo_id) REFERENCES ubigeos(id);

SELECT*FROM zonas;

--Eliminar columnas
ALTER TABLE zonas
DROP COLUMN ubigeo_id;

--Eliminar CONSTRAINTS
ALTER TABLE sucursales 
DROP CONSTRAINT FK__sucursale__zona___52593CB8;

EXEC SP_HELP sucursales;

-- CREATE TABLE zona_ubigeos

CREATE TABLE zona_ubigeos (
    id INT IDENTITY(1,1) PRIMARY KEY,
	zona_id INT NOT NULL,
    ubigeo_id INT NOT NULL,
    FOREIGN KEY (zona_id) REFERENCES zonas(id),
    FOREIGN KEY (ubigeo_id) REFERENCES ubigeos(id)
);

DROP TABLE zona_ubigeos;
EXEC SP_HELP zona_ubigeos;

ALTER TABLE zona_ubigeos
ADD CONSTRAINT fk_zona_id FOREIGN KEY (zona_id) REFERENCES zonas(id);

ALTER TABLE zona_ubigeos
ADD CONSTRAINT fk_ubigeo_id FOREIGN KEY (ubigeo_id) REFERENCES ubigeos(id);
-- Agregar FK a Sucursales
SELECT*FROM sucursales;

EXEC SP_HELP sucursales;

ALTER TABLE sucursales
ADD CONSTRAINT fk_sucursales_zona_ubigeos FOREIGN KEY (zona_ubigeo_id) REFERENCES zona_ubigeos(id);

ALTER TABLE sucursales
DROP CONSTRAINT FK__sucursale__geren__534D60F1;


--- Insert data zonas

SELECT*FROM ubigeos  WHERE region_natural NOT IN ('SELVA ALTA','SELVA BAJA','SIERRA','COSTA');

DELETE FROM ubigeos WHERE id=1892;

SELECT*FROM zonas;

INSERT INTO zonas
SELECT 
DISTINCT TRIM(CONCAT(SUBSTRING(region_natural,1,3),SUBSTRING(region_natural,7,1),ROUND(RAND()*100,0))) AS 'codigo',
region_natural AS 'nombre'
FROM ubigeos;

UPDATE u SET u.zona_id = z.id
FROM ubigeos u
INNER JOIN zonas z ON u.region_natural=z.nombre


SELECT*FROM sucursales;


-- Insert Sucursales
-- Insert indicadores diarios

SELECT DISTINCT unidad_medida FROM indicadores;

SELECT*FROM registros_indicadores_diarios;

DECLARE @Counter INT
SET @Counter = 0

WHILE @Counter < ROUND(RAND()*500000,0)
BEGIN
INSERT INTO registros_indicadores_diarios(sucursal_id, indicador_id,fecha_reporte,valor_meta, valor_real,created_at,create_by)
SELECT 
  s.id AS 'sucursal_id',
  i.id AS 'indicador_id',
  DATEADD(DAY, -ROUND(RAND() * 780,0), GETDATE()) AS 'fecha_reporte', -- Fecha de reporte en los �ltimos 2 a�os
  CASE 
	WHEN i.unidad_medida ='�ndice' THEN ROUND(RAND()*3,1)+2
	WHEN i.unidad_medida ='Monto (S/.)' THEN ROUND(RAND()*1000000,2)+20000
	WHEN i.unidad_medida ='N�mero' THEN ROUND(RAND()*10000,0)+7500
	WHEN i.unidad_medida ='Porcentaje' THEN ROUND(RAND()*150,2)
	WHEN i.unidad_medida ='Ratio' THEN ROUND(RAND(),3)
	WHEN i.unidad_medida ='Segundos' THEN ROUND(RAND()*270,1)+30
  ELSE '0' END AS 'valor_meta',
    CASE 
	WHEN i.unidad_medida ='�ndice' THEN ROUND(RAND()*4,1)+1
	WHEN i.unidad_medida ='Monto (S/.)' THEN ROUND(RAND()*1000000,2)+10000
	WHEN i.unidad_medida ='N�mero' THEN ROUND(RAND()*10000,0)+3000
	WHEN i.unidad_medida ='Porcentaje' THEN ROUND(RAND()*120,2)
	WHEN i.unidad_medida ='Ratio' THEN ROUND(RAND(),3)
	WHEN i.unidad_medida ='Segundos' THEN ROUND(RAND()*330,1)+30
  ELSE '0' END AS 'valor_real',
  DATEADD(DAY, -ROUND(RAND() * 780,0), GETDATE()) AS 'created_at', -- Fecha de reporte en los �ltimos 2 a�os
  ROUND(RAND()*100,0)+1 AS 'created_by'
FROM sucursales s
CROSS JOIN indicadores i 
ORDER BY NEWID()
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;
    SET @Counter = @Counter + 1
END;

SELECT ROUND(RAND()*1000000,2)+100000;