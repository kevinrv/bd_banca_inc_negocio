USE [master]
GO
/****** Object:  Database [bd_banca_inc_negocio]    Script Date: 1/08/2025 20:27:26 ******/
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
/****** Object:  Table [dbo].[desviaciones_indicadores]    Script Date: 1/08/2025 20:27:26 ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[registro_diario_indicador_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 1/08/2025 20:27:26 ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[celular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[numero_registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[indicadores]    Script Date: 1/08/2025 20:27:26 ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registros_indicadores_diarios]    Script Date: 1/08/2025 20:27:26 ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 1/08/2025 20:27:26 ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_indicador]    Script Date: 1/08/2025 20:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_indicador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[descripcion] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zonas]    Script Date: 1/08/2025 20:27:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zonas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](6) NOT NULL,
	[nombre] [varchar](155) NOT NULL,
	[ubigeo_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[registros_indicadores_diarios] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[desviaciones_indicadores]  WITH CHECK ADD  CONSTRAINT [fk_registro_diario_indicador] FOREIGN KEY([registro_diario_indicador_id])
REFERENCES [dbo].[registros_indicadores_diarios] ([id])
GO
ALTER TABLE [dbo].[desviaciones_indicadores] CHECK CONSTRAINT [fk_registro_diario_indicador]
GO
ALTER TABLE [dbo].[indicadores]  WITH CHECK ADD FOREIGN KEY([empleado_id])
REFERENCES [dbo].[empleados] ([id])
GO
ALTER TABLE [dbo].[indicadores]  WITH CHECK ADD FOREIGN KEY([tipo_indicador_id])
REFERENCES [dbo].[tipos_indicador] ([id])
GO
ALTER TABLE [dbo].[registros_indicadores_diarios]  WITH CHECK ADD FOREIGN KEY([indicador_id])
REFERENCES [dbo].[indicadores] ([id])
GO
ALTER TABLE [dbo].[registros_indicadores_diarios]  WITH CHECK ADD  CONSTRAINT [fk_sucursal_indicador_id] FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursales] ([id])
GO
ALTER TABLE [dbo].[registros_indicadores_diarios] CHECK CONSTRAINT [fk_sucursal_indicador_id]
GO
ALTER TABLE [dbo].[sucursales]  WITH CHECK ADD FOREIGN KEY([gerente_id])
REFERENCES [dbo].[empleados] ([id])
GO
ALTER TABLE [dbo].[sucursales]  WITH CHECK ADD FOREIGN KEY([zona_id])
REFERENCES [dbo].[zonas] ([id])
GO
USE [master]
GO
ALTER DATABASE [bd_banca_inc_negocio] SET  READ_WRITE 
GO
