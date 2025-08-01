USE [master]
GO
/****** Object:  Database [bd_banca_inc_negocio]    Script Date: 1/08/2025 21:15:38 ******/
CREATE DATABASE [bd_banca_inc_negocio]

ALTER DATABASE [bd_banca_inc_negocio] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_banca_inc_negocio].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_banca_inc_negocio] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET RECOVERY FULL 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET  MULTI_USER 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_banca_inc_negocio] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bd_banca_inc_negocio] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd_banca_inc_negocio', N'ON'
GO
ALTER DATABASE [bd_banca_inc_negocio] SET QUERY_STORE = ON
GO
ALTER DATABASE [bd_banca_inc_negocio] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [bd_banca_inc_negocio]
GO
/****** Object:  Table [dbo].[desviaciones_indicadores]    Script Date: 1/08/2025 21:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[desviaciones_indicadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[registro_diario_indicador_id] [int] NOT NULL,
	[diferencia_absoluta] [decimal](9, 2) NOT NULL,
	[diferencia_porcentual] [decimal](9, 2) NOT NULL,
	[clasificación] [varchar](155) NOT NULL,
 CONSTRAINT [PK__desviaci__3213E83FA0100F88] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 1/08/2025 21:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](155) NOT NULL,
	[apellidos] [varchar](155) NOT NULL,
	[numero_registro] [char](6) NOT NULL,
	[cargo] [varchar](100) NULL,
	[unidad] [varchar](100) NOT NULL,
	[email] [varchar](100) NULL,
	[celular] [varchar](20) NULL,
 CONSTRAINT [PK__empleado__3213E83F763BDD43] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[indicadores]    Script Date: 1/08/2025 21:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[indicadores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[empleado_id] [int] NULL,
	[tipo_indicador_id] [int] NULL,
	[codigo] [char](6) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[unidad_medida] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
 CONSTRAINT [PK__indicado__3213E83FD8BF26EC] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registros_indicadores_diarios]    Script Date: 1/08/2025 21:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registros_indicadores_diarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sucursal_id] [int] NULL,
	[indicador_id] [int] NULL,
	[fecha_reporte] [date] NULL,
	[valor_real] [decimal](9, 2) NULL,
	[valor_meta] [decimal](9, 2) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
	[create_by] [int] NULL,
	[update_by] [int] NULL,
	[deleted_by] [int] NULL,
 CONSTRAINT [PK__registro__3213E83F6A40A349] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 1/08/2025 21:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[zona_id] [int] NULL,
	[gerente_id] [int] NULL,
	[codigo] [varchar](6) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[direccion] [nvarchar](255) NOT NULL,
	[email] [varchar](100) NULL,
	[telefono] [varchar](20) NULL,
	[coordenada_gps] [geography] NULL,
 CONSTRAINT [PK__sucursal__3213E83FD4CA305E] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_indicador]    Script Date: 1/08/2025 21:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_indicador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[descripcion] [varchar](max) NULL,
 CONSTRAINT [PK__tipos_in__3213E83F9D23C1E1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zonas]    Script Date: 1/08/2025 21:15:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zonas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](6) NOT NULL,
	[nombre] [varchar](155) NOT NULL,
	[ubigeo_id] [int] NULL,
 CONSTRAINT [PK__zonas__3213E83F5E572936] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[empleados] ON 

INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (1, N'Rafaela', N'Plaza', N'604876', N'Supervisor de Operaciones', N'Planificación', N'lpalma@gmail.com', N'421948924')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (2, N'Charo', N'Cabrero', N'565938', N'Analista de Negocio', N'Operaciones', N'qvazquez@gmail.com', N'160975351')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (3, N'Nieves', N'Cisneros', N'871158', N'Subgerente Regional', N'Recursos Humanos', N'matacarmen@yahoo.com', N'858398947')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (4, N'Coral', N'Herranz', N'423209', N'Supervisor de Operaciones', N'Operaciones', N'fbayon@hotmail.com', N'201868483')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (5, N'Leonardo', N'Sanjuan', N'751591', N'Gestor de Clientes', N'Comercial', N'ramona33@gmail.com', N'135256012')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (6, N'Vicente', N'Carrera', N'736395', N'Especialista en Riesgos', N'Riesgos', N'angelcamara@hotmail.com', N'801694170')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (7, N'Estefanía', N'Mata', N'067297', N'Coordinador de Zona', N'Planificación', N'matilde04@gmail.com', N'281490718')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (8, N'Daniela', N'Godoy', N'517148', N'Analista de Negocio', N'TI', N'alarconcarlos@gmail.com', N'517359561')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (9, N'Ismael', N'Ferrero', N'518370', N'Ejecutivo Comercial', N'Banca Empresa', N'tamayoantonia@hotmail.com', N'302648416')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (10, N'Ignacio', N'De la Torre', N'607264', N'Asesor Financiero', N'Banca Personal', N'jantonio19@hotmail.com', N'204153782')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (11, N'Jesús', N'Alarcón', N'783576', N'Analista de Negocio', N'TI', N'evaristo52@hotmail.com', N'103928741')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (12, N'Tamara', N'Espejo', N'708392', N'Supervisor de Operaciones', N'Operaciones', N'fresnoangel@hotmail.com', N'192048561')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (13, N'Salvador', N'Escobar', N'170467', N'Jefe de Sucursal', N'Banca Personal', N'cruzyolanda@gmail.com', N'589471236')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (14, N'Guillermo', N'Casas', N'987390', N'Gestor de Clientes', N'Comercial', N'aylacampos@gmail.com', N'613729504')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (15, N'Ángela', N'Benítez', N'055104', N'Ejecutivo Comercial', N'Banca Empresa', N'blasfeliu@hotmail.com', N'285139807')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (16, N'Aurora', N'Calle', N'917352', N'Coordinador de Zona', N'Planificación', N'vargastamara@hotmail.com', N'123456789')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (17, N'Julián', N'Jorquera', N'315280', N'Analista de Negocio', N'TI', N'cecilia08@gmail.com', N'401875326')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (18, N'Pilar', N'Rico', N'408194', N'Supervisor de Operaciones', N'Operaciones', N'baldovinojose@gmail.com', N'538174209')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (19, N'Rocío', N'Castilla', N'063812', N'Especialista en Riesgos', N'Riesgos', N'alonsorosa@gmail.com', N'914082736')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (20, N'Sergio', N'Pueyo', N'199365', N'Subgerente Regional', N'Auditoría Interna', N'joaquin24@hotmail.com', N'352801764')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (21, N'Julio', N'Sáenz', N'674721', N'Jefe de Sucursal', N'Banca Empresa', N'rociocabrera@hotmail.com', N'201583974')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (22, N'Sonia', N'Peinado', N'891347', N'Ejecutivo Comercial', N'Comercial', N'bernadestefania@gmail.com', N'871520964')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (23, N'Mario', N'Rosales', N'358072', N'Gestor de Clientes', N'Banca Personal', N'soledad98@gmail.com', N'472180653')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (24, N'Helena', N'Patiño', N'894027', N'Asesor Financiero', N'Banca Personal', N'elisaalba@hotmail.com', N'751904682')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (25, N'Rebeca', N'Garrido', N'032476', N'Analista de Negocio', N'TI', N'mariadelmar@hotmail.com', N'928107364')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (26, N'Samuel', N'Solano', N'736512', N'Coordinador de Zona', N'Planificación', N'rosario66@gmail.com', N'395726840')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (27, N'Tomás', N'Quintana', N'295840', N'Especialista en Riesgos', N'Riesgos', N'bmartinez@gmail.com', N'314729805')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (28, N'Manuela', N'Benavente', N'930142', N'Supervisor de Operaciones', N'Operaciones', N'aureliovazquez@hotmail.com', N'487329150')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (29, N'Álvaro', N'Sevilla', N'172805', N'Jefe de Sucursal', N'Banca Empresa', N'gabriel73@hotmail.com', N'683274915')
INSERT [dbo].[empleados] ([id], [nombres], [apellidos], [numero_registro], [cargo], [unidad], [email], [celular]) VALUES (30, N'Lucía', N'Monge', N'190648', N'Gestor de Clientes', N'Comercial', N'teresatorres@hotmail.com', N'902158374')
SET IDENTITY_INSERT [dbo].[empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[indicadores] ON 

INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (1, 1, 1, N'IND001', N'Colocaciones Diarias', N'Monto (S/.)', N'Monto total colocado en créditos diarios por sucursal')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (2, 2, 1, N'IND002', N'Captación de Ahorros', N'Monto (S/.)', N'Monto diario captado en cuentas de ahorro')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (3, 3, 2, N'IND003', N'Transacciones Totales', N'Número', N'Número total de transacciones procesadas en el día')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (4, 4, 3, N'IND004', N'Tasa de Conversión de Ventas', N'Porcentaje', N'Porcentaje de oportunidades convertidas en ventas')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (5, 5, 4, N'IND005', N'Índice de Satisfacción', N'Índice', N'Promedio de satisfacción del cliente diario')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (6, 6, 5, N'IND006', N'Rentabilidad por Empleado', N'Ratio', N'Relación entre utilidad neta y número de empleados')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (7, 7, 6, N'IND007', N'Tiempo Promedio de Atención', N'Segundos', N'Tiempo promedio de atención por cliente')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (8, 8, 7, N'IND008', N'Cumplimiento de Metas', N'Porcentaje', N'Porcentaje de metas diarias alcanzadas')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (9, 9, 8, N'IND009', N'Índice de Mora', N'Porcentaje', N'Porcentaje de créditos vencidos frente al total')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (10, 10, 9, N'IND010', N'Crecimiento Diario', N'Porcentaje', N'Variación diaria de crecimiento de cartera')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (11, 11, 10, N'IND011', N'Indicador Global Diario', N'Índice', N'Índice de evaluación global diaria por sucursal')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (12, 12, 2, N'IND012', N'Operaciones por Empleado', N'Número', N'Cantidad de operaciones realizadas por cada colaborador')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (13, 13, 3, N'IND013', N'Tasa de Cross Selling', N'Porcentaje', N'Porcentaje de clientes con más de un producto')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (14, 14, 4, N'IND014', N'Índice de Retención', N'Porcentaje', N'Porcentaje de clientes que permanecen activos')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (15, 15, 5, N'IND015', N'Eficiencia Operativa', N'Ratio', N'Relación ingresos operativos frente a gastos')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (16, 16, 6, N'IND016', N'Tiempo de Espera', N'Segundos', N'Segundos promedio de espera antes de ser atendido')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (17, 17, 7, N'IND017', N'Desviación de Objetivos', N'Porcentaje', N'Porcentaje de desviación respecto al objetivo')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (18, 18, 8, N'IND018', N'Recuperación de Mora', N'Porcentaje', N'Porcentaje de recuperación frente a préstamos vencidos')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (19, 19, 9, N'IND019', N'Crecimiento Anualizado', N'Porcentaje', N'Proyección de crecimiento basada en el comportamiento actual')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (20, 20, 10, N'IND020', N'Cumplimiento Integral Diario', N'Índice', N'Evaluación diaria del cumplimiento total por unidad')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (21, 21, 1, N'IND021', N'Depósitos Diarios', N'Monto (S/.)', N'Monto total depositado en el día')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (22, 22, 2, N'IND022', N'Retiros Diarios', N'Monto (S/.)', N'Monto total retirado por los clientes')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (23, 23, 3, N'IND023', N'Conversión Digital', N'Porcentaje', N'Tasa de uso de canales digitales por clientes')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (24, 24, 4, N'IND024', N'Satisfacción Web', N'Índice', N'Nivel de satisfacción tras uso de la plataforma online')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (25, 25, 5, N'IND025', N'Rentabilidad por Zona', N'Ratio', N'Utilidad generada por unidad geográfica')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (26, 26, 6, N'IND026', N'Tiempo de Respuesta Web', N'Segundos', N'Tiempo promedio de carga de la web')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (27, 27, 7, N'IND027', N'Cumplimiento de KPIs Críticos', N'Porcentaje', N'Porcentaje de indicadores clave cumplidos')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (28, 28, 8, N'IND028', N'Créditos Vencidos', N'Porcentaje', N'Porcentaje de créditos con morosidad')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (29, 29, 9, N'IND029', N'Crecimiento Activos Financieros', N'Porcentaje', N'Aumento diario de activos financieros')
INSERT [dbo].[indicadores] ([id], [empleado_id], [tipo_indicador_id], [codigo], [nombre], [unidad_medida], [descripcion]) VALUES (30, 30, 10, N'IND030', N'Desempeño Integral Diario', N'Índice', N'Indicador global para medir rendimiento diario')
SET IDENTITY_INSERT [dbo].[indicadores] OFF
GO
SET IDENTITY_INSERT [dbo].[tipos_indicador] ON 

INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (1, N'Financiero', N'Indicadores relacionados al desempeño económico y rentabilidad del banco, como colocaciones, depósitos, ingresos y márgenes.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (2, N'Operativo', N'Indicadores que miden la eficiencia de los procesos internos, como tiempos de atención, cumplimiento de tareas o volumen procesado.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (3, N'Atención al Cliente', N'Indicadores relacionados con la experiencia del cliente, como tiempos de espera, reclamos atendidos, encuestas de satisfacción.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (4, N'Normativo', N'Indicadores que reflejan el cumplimiento de requisitos legales o regulatorios establecidos por organismos supervisores como la SBS.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (5, N'Comercial', N'Indicadores ligados al rendimiento de productos financieros, campañas de ventas o captación de clientes.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (6, N'Riesgo', N'Indicadores que permiten monitorear exposición al riesgo, morosidad, provisiones o pérdidas esperadas.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (7, N'Tecnológico', N'Indicadores de disponibilidad de canales digitales, tiempos de respuesta del sistema, o número de incidencias TI.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (8, N'Capital Humano', N'Indicadores que reflejan desempeño, productividad y rotación del personal.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (9, N'Sostenibilidad', N'Indicadores relacionados con impacto ambiental, responsabilidad social o inclusión financiera.')
INSERT [dbo].[tipos_indicador] ([id], [nombre], [descripcion]) VALUES (10, N'Gestión de Proyectos', N'Indicadores que miden avance, costo y cumplimiento de cronograma en proyectos estratégicos internos.')
SET IDENTITY_INSERT [dbo].[tipos_indicador] OFF
GO
/****** Object:  Index [UQ__desviaci__9719ACE259FFE9A8]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[desviaciones_indicadores] ADD  CONSTRAINT [UQ__desviaci__9719ACE259FFE9A8] UNIQUE NONCLUSTERED 
(
	[registro_diario_indicador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__empleado__2E4973E7B191EEFF]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [UQ__empleado__2E4973E7B191EEFF] UNIQUE NONCLUSTERED 
(
	[celular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__empleado__5C8FBBD7EE714728]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [UQ__empleado__5C8FBBD7EE714728] UNIQUE NONCLUSTERED 
(
	[numero_registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__empleado__AB6E6164E3449CFB]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[empleados] ADD  CONSTRAINT [UQ__empleado__AB6E6164E3449CFB] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__indicado__40F9A206EA2463D3]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[indicadores] ADD  CONSTRAINT [UQ__indicado__40F9A206EA2463D3] UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__indicado__72AFBCC6139EEEED]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[indicadores] ADD  CONSTRAINT [UQ__indicado__72AFBCC6139EEEED] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sucursal__2A16D945591EFD9D]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[sucursales] ADD  CONSTRAINT [UQ__sucursal__2A16D945591EFD9D] UNIQUE NONCLUSTERED 
(
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sucursal__40F9A206493ADAA8]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[sucursales] ADD  CONSTRAINT [UQ__sucursal__40F9A206493ADAA8] UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sucursal__636D81ABC087CC94]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[sucursales] ADD  CONSTRAINT [UQ__sucursal__636D81ABC087CC94] UNIQUE NONCLUSTERED 
(
	[direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sucursal__72AFBCC6AB48F593]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[sucursales] ADD  CONSTRAINT [UQ__sucursal__72AFBCC6AB48F593] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sucursal__AB6E6164006628FD]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[sucursales] ADD  CONSTRAINT [UQ__sucursal__AB6E6164006628FD] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tipos_in__72AFBCC6E8F1FF7A]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[tipos_indicador] ADD  CONSTRAINT [UQ__tipos_in__72AFBCC6E8F1FF7A] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__zonas__40F9A206D6B6CE0B]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[zonas] ADD  CONSTRAINT [UQ__zonas__40F9A206D6B6CE0B] UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__zonas__72AFBCC6DF681B33]    Script Date: 1/08/2025 21:15:38 ******/
ALTER TABLE [dbo].[zonas] ADD  CONSTRAINT [UQ__zonas__72AFBCC6DF681B33] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[registros_indicadores_diarios] ADD  CONSTRAINT [DF__registros__creat__5BE2A6F2]  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[desviaciones_indicadores]  WITH CHECK ADD  CONSTRAINT [fk_registro_diario_indicador] FOREIGN KEY([registro_diario_indicador_id])
REFERENCES [dbo].[registros_indicadores_diarios] ([id])
GO
ALTER TABLE [dbo].[desviaciones_indicadores] CHECK CONSTRAINT [fk_registro_diario_indicador]
GO
ALTER TABLE [dbo].[indicadores]  WITH CHECK ADD  CONSTRAINT [FK__indicador__emple__5812160E] FOREIGN KEY([empleado_id])
REFERENCES [dbo].[empleados] ([id])
GO
ALTER TABLE [dbo].[indicadores] CHECK CONSTRAINT [FK__indicador__emple__5812160E]
GO
ALTER TABLE [dbo].[indicadores]  WITH CHECK ADD  CONSTRAINT [FK__indicador__tipo___59063A47] FOREIGN KEY([tipo_indicador_id])
REFERENCES [dbo].[tipos_indicador] ([id])
GO
ALTER TABLE [dbo].[indicadores] CHECK CONSTRAINT [FK__indicador__tipo___59063A47]
GO
ALTER TABLE [dbo].[registros_indicadores_diarios]  WITH CHECK ADD  CONSTRAINT [FK__registros__indic__5DCAEF64] FOREIGN KEY([indicador_id])
REFERENCES [dbo].[indicadores] ([id])
GO
ALTER TABLE [dbo].[registros_indicadores_diarios] CHECK CONSTRAINT [FK__registros__indic__5DCAEF64]
GO
ALTER TABLE [dbo].[registros_indicadores_diarios]  WITH CHECK ADD  CONSTRAINT [fk_sucursal_indicador_id] FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursales] ([id])
GO
ALTER TABLE [dbo].[registros_indicadores_diarios] CHECK CONSTRAINT [fk_sucursal_indicador_id]
GO
ALTER TABLE [dbo].[sucursales]  WITH CHECK ADD  CONSTRAINT [FK__sucursale__geren__534D60F1] FOREIGN KEY([gerente_id])
REFERENCES [dbo].[empleados] ([id])
GO
ALTER TABLE [dbo].[sucursales] CHECK CONSTRAINT [FK__sucursale__geren__534D60F1]
GO
ALTER TABLE [dbo].[sucursales]  WITH CHECK ADD  CONSTRAINT [FK__sucursale__zona___52593CB8] FOREIGN KEY([zona_id])
REFERENCES [dbo].[zonas] ([id])
GO
ALTER TABLE [dbo].[sucursales] CHECK CONSTRAINT [FK__sucursale__zona___52593CB8]
GO
USE [master]
GO
ALTER DATABASE [bd_banca_inc_negocio] SET  READ_WRITE 
GO
