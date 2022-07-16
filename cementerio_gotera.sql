USE [master]
GO
/****** Object:  Database [cementerios_gotera]    Script Date: 15/7/2022 23:28:26 ******/
CREATE DATABASE [cementerios_gotera]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cementerios_gotera', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\cementerios_gotera.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cementerios_gotera_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\cementerios_gotera_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [cementerios_gotera] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cementerios_gotera].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cementerios_gotera] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cementerios_gotera] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cementerios_gotera] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cementerios_gotera] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cementerios_gotera] SET ARITHABORT OFF 
GO
ALTER DATABASE [cementerios_gotera] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cementerios_gotera] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cementerios_gotera] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cementerios_gotera] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cementerios_gotera] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cementerios_gotera] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cementerios_gotera] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cementerios_gotera] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cementerios_gotera] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cementerios_gotera] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cementerios_gotera] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cementerios_gotera] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cementerios_gotera] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cementerios_gotera] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cementerios_gotera] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cementerios_gotera] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cementerios_gotera] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cementerios_gotera] SET RECOVERY FULL 
GO
ALTER DATABASE [cementerios_gotera] SET  MULTI_USER 
GO
ALTER DATABASE [cementerios_gotera] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cementerios_gotera] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cementerios_gotera] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cementerios_gotera] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cementerios_gotera] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'cementerios_gotera', N'ON'
GO
ALTER DATABASE [cementerios_gotera] SET QUERY_STORE = OFF
GO
USE [cementerios_gotera]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [cementerios_gotera]
GO
/****** Object:  Table [dbo].[alcaldia]    Script Date: 15/7/2022 23:28:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alcaldia](
	[Id] [nvarchar](255) NOT NULL,
	[Nombre_Alcaldia] [nvarchar](255) NULL,
	[Direccion_Alcaldia] [nvarchar](255) NULL,
	[Telefono_Alcaldia] [nvarchar](255) NULL,
	[Alcalde_Alcaldia] [nvarchar](255) NULL,
	[web] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
	[Municipio] [nvarchar](255) NULL,
	[Jefe] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 15/7/2022 23:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[id_bitacora] [int] IDENTITY(1,1) NOT NULL,
	[Modulo] [nvarchar](255) NULL,
	[accion] [nvarchar](255) NULL,
	[Fecha] [nchar](20) NULL,
	[Usuario] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colonias]    Script Date: 15/7/2022 23:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colonias](
	[id_colonia] [int] NOT NULL,
	[colonia] [nvarchar](255) NULL,
	[id_zona] [int] NULL,
	[activo] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 15/7/2022 23:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](255) NULL,
	[Apellido] [nvarchar](255) NULL,
	[edad] [int] NULL,
	[f_nac] [datetime] NULL,
	[estado_civil] [nvarchar](255) NULL,
	[sexo] [nvarchar](255) NULL,
	[direccion] [nvarchar](255) NULL,
	[dui] [nvarchar](255) NULL,
	[nit] [nvarchar](255) NULL,
	[telefono] [nvarchar](255) NULL,
	[experiencia] [nvarchar](255) NULL,
	[logros] [nvarchar](255) NULL,
	[fallos] [nvarchar](255) NULL,
	[f_inicio] [nvarchar](255) NULL,
	[f_registro] [nvarchar](255) NULL,
	[cargo] [nvarchar](255) NULL,
	[correo] [nvarchar](255) NULL,
	[especialidad] [nvarchar](255) NULL,
	[activo] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[titulo_perpetuidad]    Script Date: 15/7/2022 23:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[titulo_perpetuidad](
	[id_titulo] [int] IDENTITY(1,1) NOT NULL,
	[monto] [float] NULL,
	[nombre] [varchar](50) NULL,
	[edad] [int] NULL,
	[oficio] [varchar](50) NULL,
	[municipio_domicilio] [varchar](50) NULL,
	[departamento_domicilio] [varchar](50) NULL,
	[dui] [varchar](10) NULL,
	[municipio_extension_dui] [varchar](50) NULL,
	[departamento_extension_dui] [varchar](50) NULL,
	[cementerio] [varchar](50) NULL,
	[metro_ancho] [int] NULL,
	[centimetro_ancho] [int] NULL,
	[metro_largo] [int] NULL,
	[centimetro_largo] [int] NULL,
	[cantidad_construir] [int] NULL,
	[tipo_construccion] [varchar](50) NULL,
	[monto_construccion] [float] NULL,
	[num_recibo_pago] [int] NULL,
	[fecha_recibo_pago] [date] NULL,
	[refrencia] [varchar](50) NULL,
	[fecha_registro] [date] NULL,
	[numero_titulo] [int] NULL,
	[zona] [varchar](50) NULL,
	[categoria_cuadro] [varchar](50) NULL,
	[calle] [varchar](50) NULL,
	[numero] [varchar](50) NULL,
	[situado] [varchar](50) NULL,
	[campo1] [varchar](50) NULL,
	[campo2] [varchar](50) NULL,
 CONSTRAINT [PK_titulo_perpetuidad] PRIMARY KEY CLUSTERED 
(
	[id_titulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 15/7/2022 23:28:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id_usuario] [int] NOT NULL,
	[Usuario] [nvarchar](255) NULL,
	[Pass] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[dui] [nvarchar](255) NULL,
	[Cargo] [nvarchar](255) NULL,
	[tipo] [nvarchar](255) NULL,
	[Fecha_registro] [datetime] NULL,
	[nit] [nvarchar](255) NULL,
	[iinmuebles] [bit] NOT NULL,
	[iinmuebles_dispensos] [bit] NOT NULL,
	[imestadoscuenta] [bit] NOT NULL,
	[imestadocuentarecagua] [bit] NOT NULL,
	[irep_inmueblesconagua] [bit] NOT NULL,
	[iimpresionmorososagua] [bit] NOT NULL,
	[irep_general_inmuebles] [bit] NOT NULL,
	[Eempresa] [bit] NOT NULL,
	[iEmpresa_dispensos] [bit] NOT NULL,
	[EestadocuentasEmpresa] [bit] NOT NULL,
	[Erep_Empresa_general] [bit] NOT NULL,
	[ccolonia] [bit] NOT NULL,
	[czonas] [bit] NOT NULL,
	[zrep_porcolonia] [bit] NOT NULL,
	[ttributos] [bit] NOT NULL,
	[trep_tributos] [bit] NOT NULL,
	[trep_ingresos_tributos] [bit] NOT NULL,
	[rrecibos_administrativos] [bit] NOT NULL,
	[rcracioncuentas] [bit] NOT NULL,
	[rrep_rec_administrativos] [bit] NOT NULL,
	[rgrupos] [bit] NOT NULL,
	[ggrupos] [bit] NOT NULL,
	[ggeneraravisos] [bit] NOT NULL,
	[IDmantenimiento] [bit] NOT NULL,
	[IDimpresiondesglose] [bit] NOT NULL,
	[IDCcobros] [bit] NOT NULL,
	[IDcobrosAnticipados] [bit] NOT NULL,
	[IDrep_ingresos_diarios] [bit] NOT NULL,
	[Cacontadores] [bit] NOT NULL,
	[Camedidas] [bit] NOT NULL,
	[Aavisos_individuales] [bit] NOT NULL,
	[Aavisos_individuales_emitidos] [bit] NOT NULL,
	[AsvisosGrupales] [bit] NOT NULL,
	[AvisosGrupales_emitidos] [bit] NOT NULL,
	[Cusuarios] [bit] NOT NULL,
	[Ctasas] [bit] NOT NULL,
	[Cbitacoras] [bit] NOT NULL,
	[Cconexion] [bit] NOT NULL,
	[Eempleado] [bit] NOT NULL,
	[Erep_empleado] [bit] NOT NULL,
	[Ealcaldia] [bit] NOT NULL,
	[Edatos_Alcaldia] [bit] NOT NULL,
	[Erespaldos] [bit] NOT NULL,
	[Ecompactar] [bit] NOT NULL,
	[activo] [bit] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[alcaldia] ([Id], [Nombre_Alcaldia], [Direccion_Alcaldia], [Telefono_Alcaldia], [Alcalde_Alcaldia], [web], [email], [Departamento], [Municipio], [Jefe]) VALUES (N'0001', N'ALCALDIA MUNICIPAL VILLA EL PARAISO CHALATENANGO', N'2° CALLE PTE Y AVE CENTRAL.', N'2362-3400', N'ALEXIS ESCALANTE', N'WWW.ELPARAISO.GOB.SV', N'SECRETARIOMUNICIPALELPARAISO@GMAIL.COM', N'CHALATENANGO', N'EL PARAISO', N'FRANCISCO ARMANDO MARROQUÍN LEIVA')
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (842, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 18 2022  1:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (872, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 22 2022  8:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (873, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 22 2022  8:08AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (874, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  9:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (875, N'Modificación de Impuestos...', N'Modifico el impuesto 06', N'Jun 24 2022  9:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (876, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: SANTA FE con el valor $344.63', N'Jun 24 2022  9:54AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (877, N'Creacion de Nuevo Concepto', N'Creo el grupo CONCEPTO SANTA FE', N'Jun 24 2022  9:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (878, N'Registro de Impuestos', N'Registro el Impuesto3131', N'Jun 24 2022 10:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (879, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto3131 a la propiedad 00000000-0000/51', N'Jun 24 2022 10:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (880, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto3131 a la propiedad 00000000-0000/51', N'Jun 24 2022 10:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (881, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/51CASA DE LEO', N'Jun 24 2022 10:16AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (882, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022 10:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (884, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  1:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (889, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  3:49PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (899, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/62', N'Jun 24 2022  4:09PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (900, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto02 a la propiedad 00000000-0000/62', N'Jun 24 2022  4:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (901, N'ADALBERTO', N'Registro de:ADALBERTOESCOBAR', N'Jun 24 2022  4:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (902, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 27 2022  6:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (903, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 27 2022  6:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (904, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 30 2022 10:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (905, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'Jun 30 2022 10:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (906, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 30 2022 11:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (907, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 30 2022 11:31AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (908, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 30 2022  1:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (909, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (910, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Jul  1 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (911, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (912, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  1:48PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (913, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  1:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (914, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Jul  1 2022  1:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (915, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 37 Por el valor de $8.10', N'Jul  1 2022  1:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (919, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  2:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (920, N'Cobros Individuales', N'Abono el recibo 245 SERIE Y', N'Jul  1 2022  2:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (922, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  2 2022  9:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (924, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 54 Por el valor de $1.80', N'Jul  2 2022  9:08AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (926, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  2 2022 12:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (927, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/63VIVIENDA', N'Jul  2 2022 12:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (928, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/63', N'Jul  2 2022 12:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (871, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  2:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (921, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  2:53PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (929, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/63VIVIENDA', N'Jul  2 2022 12:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (930, N'Modificación de Impuestos...', N'Modifico el impuesto 06', N'Jul  2 2022 12:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (931, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (954, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (969, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  6 2022  8:13AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (970, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 64 Por el valor de $8.10', N'Jul  6 2022  8:14AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (971, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  6 2022  8:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (972, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 64 Por el valor de $8.10', N'Jul  6 2022  8:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (973, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  6 2022  8:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (974, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 64 Por el valor de $8.10', N'Jul  6 2022  8:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (975, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 64 Por el valor de $8.10', N'Jul  6 2022  8:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (976, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 64 Por el valor de $8.10', N'Jul  6 2022  8:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (977, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 43 Por el valor de $2.50', N'Jul  6 2022  8:32AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (883, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  1:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (886, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  1:45PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (888, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  3:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (890, N'Catastro System-Edit User', N'Modifico el Usuario leonel Del Tipo: Administrador', N'Jun 24 2022  3:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (891, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  3:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (892, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/61', N'Jun 24 2022  3:54PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (893, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/61', N'Jun 24 2022  3:54PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (894, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto02 a la propiedad 00000000-0000/61', N'Jun 24 2022  3:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (895, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/61', N'Jun 24 2022  3:56PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (896, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto02 a la propiedad 00000000-0000/61', N'Jun 24 2022  3:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (897, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/61', N'Jun 24 2022  3:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (898, N'GUILLERMO', N'Registro de:GUILLERMOJANDRES', N'Jun 24 2022  3:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (885, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  1:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (887, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 24 2022  1:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (923, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  2 2022  9:08AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (925, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 54 Por el valor de $1.80', N'Jul  2 2022  9:09AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (932, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:21PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (933, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (934, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (935, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (936, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (937, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (938, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 53 Por el valor de $2.50', N'Jul  5 2022  5:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (939, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 53 Por el valor de $2.50', N'Jul  5 2022  5:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (940, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (941, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 666 Por el valor de $2.50', N'Jul  5 2022  5:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (942, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:40PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (943, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 666 Por el valor de $2.50', N'Jul  5 2022  5:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (944, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 7877 Por el valor de $12.00', N'Jul  5 2022  5:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (945, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 66678 Por el valor de $2.50', N'Jul  5 2022  5:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (946, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 53 Por el valor de $2.50', N'Jul  5 2022  5:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (947, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:46PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (948, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 66678 Por el valor de $1.80', N'Jul  5 2022  5:46PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (949, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 78978 Por el valor de $2.50', N'Jul  5 2022  5:46PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (950, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:48PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (951, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 66678 Por el valor de $1.80', N'Jul  5 2022  5:48PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (952, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 12 Por el valor de $2.50', N'Jul  5 2022  5:48PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (953, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  5:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (955, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (956, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (957, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (959, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (960, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (961, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (962, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 64 Por el valor de $8.10', N'Jul  5 2022  6:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (963, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:21PM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (964, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (965, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (966, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (967, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (968, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  6 2022  8:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (958, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  5 2022  6:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (978, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  6 2022  8:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (979, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  6 2022  9:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (980, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  6 2022  9:33AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (306, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/30', N'May  4 2022  2:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (307, N'Edición de Inmuebles', N'Modifico Propietario..LILIAM ARACELYQUIJADA DE ESTRADA', N'May  4 2022  2:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (308, N'Edición de Inmuebles', N'Modifico Propietario..LILIAM ARACELYQUIJADA DE ESTRADA', N'May  4 2022  2:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (309, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/30', N'May  4 2022  2:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (310, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/30', N'May  4 2022  3:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (311, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'May  4 2022  3:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (312, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  9 2022  6:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (313, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May  9 2022  6:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (314, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: HOLA con el valor $5.71', N'May  9 2022  6:16PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (315, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  9 2022  6:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (316, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  9 2022  7:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (317, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  9 2022  7:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (318, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  9 2022  7:11PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (328, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  8:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (329, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  8:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (330, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  9:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (335, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  9:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (336, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: TEST2 con el valor $3.75', N'May 11 2022  9:45AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (337, N'Creacion de Nuevo Concepto', N'Creo el grupo TEST CON FIESTA', N'May 11 2022  9:46AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (338, N'Edición:..PARTIDA', N'Modifico la Cuenta: CERTIFICACION DE PARTIDA DE DEFUNCION  con el valor $2.38', N'May 11 2022  9:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (339, N'Edición:..CERTIFICACION DE PARTIDA DE DEFUNCION ', N'Modifico la Cuenta: CERTIFICACION DE PARTIDA DE DEFUNCION  con el valor $2.38', N'May 11 2022  9:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (340, N'Edición:..PARTIDA DE NACIMIENTO ', N'Modifico la Cuenta: PARTIDA DE NACIMIENTO  con el valor $2.38', N'May 11 2022  9:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (341, N'Edición:..CERTIFICACION DE PARTIDA DE DEFUNCION ', N'Modifico la Cuenta: CERTIFICACION DE PARTIDA DE DEFUNCION  con el valor $2.38', N'May 11 2022 10:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (342, N'Creacion de Nuevo Concepto', N'Creo el grupo PARTIDA DE NACIMIENTO ', N'May 11 2022 10:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (343, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 11 2022 11:06AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (344, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 11 2022 11:07AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (345, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May 11 2022 11:32AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (346, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May 11 2022 11:33AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (347, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May 11 2022 11:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (348, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 4 Por el valor de $2.50', N'May 11 2022 11:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (349, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/30', N'May 11 2022 11:54AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (350, N'Edición de Inmuebles', N'Modifico Propietario..GUILLERMOJANDRES', N'May 11 2022  1:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (351, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto123 a la propiedad 00000000-0000/30', N'May 11 2022  1:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (352, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/30GUILLERMO', N'May 11 2022  1:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (353, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/30GUILLERMO', N'May 11 2022  1:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (354, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto123 a la propiedad 00000000-0000/31', N'May 11 2022  1:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (319, N'Reporte de Empresas Generales', N'Genero el Reporte Empresas Generales', N'May  9 2022  7:45PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (320, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0,05 La multa minima a: 2.86 La maxima a: 57.14', N'May  9 2022  8:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (321, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  9 2022  8:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (322, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May  9 2022  8:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (323, N'Reporte General de Colonias', N'Genero el reporte de Colonias ', N'May  9 2022  8:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (324, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May  9 2022  8:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (325, N'Eliminar HOLA', N'Elimino la cuenta :HOLA', N'May  9 2022  8:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (326, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARTIDA DE DEFUNCION con el valor $2.38', N'May  9 2022  8:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (327, N'Creacion de Nuevo Concepto', N'Creo el grupo PARTIDA DE DEFUNCION', N'May  9 2022  8:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (355, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto12108001 a la propiedad 00000000-0000/31', N'May 11 2022  1:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (356, N'GIOVANNI', N'Registro de:GIOVANNICHAVEZ', N'May 11 2022  1:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (357, N'Edición de Inmuebles', N'Modifico Propietario..GUILLERMO DEJESUS CORTEZ', N'May 11 2022  1:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (358, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/32GUILLERMO', N'May 11 2022  1:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (359, N'Edición de Inmuebles', N'Modifico Propietario..GUILLERMO DEJESUS CORTEZ', N'May 11 2022  2:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (360, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/32X', N'May 11 2022  2:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (361, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto02 a la propiedad 00000000-0000/32', N'May 11 2022  2:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (362, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto12108001 a la propiedad 00000000-0000/32', N'May 11 2022  2:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (363, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/32X', N'May 11 2022  2:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (364, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 5 La multa minima a: 2.86 La maxima a: 57.14', N'May 11 2022  2:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (365, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  2:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (366, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: SERVICIO DE AGUA MEDIDOR con el valor $4.76', N'May 11 2022  2:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (367, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 11 2022  2:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (368, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  2:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (369, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 11 2022  2:45PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (370, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  2:46PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (371, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/33', N'May 11 2022  2:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (372, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/33', N'May 11 2022  2:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (373, N'PABLO', N'Registro de:PABLOJUAREZ', N'May 11 2022  2:53PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (374, N'Edición:..SERVICIO DE AGUA MEDIDOR', N'Modifico la Cuenta: SERVICIO DE AGUA MEDIDOR con el valor $4.76', N'May 11 2022  2:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (375, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 11 2022  2:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (376, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  3:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (377, N'Edición de Inmuebles', N'Modifico Propietario..PABLOJUAREZ', N'May 11 2022  3:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (378, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/33PABLO', N'May 11 2022  3:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (379, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/34X', N'May 11 2022  3:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (331, N'Edición:..CERTIFICACION', N'Modifico la Cuenta: PARTIDA DE NACIMIENTO  con el valor $2.38', N'May 11 2022  9:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (332, N'Edición:..SERVICIOS DIVERSOS', N'Modifico la Cuenta: SERVICIOS DIVERSOS con el valor $0.000', N'May 11 2022  9:14AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (333, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 11 2022  9:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (334, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0,05 La multa minima a: 2.86 La maxima a: 57.14', N'May 11 2022  9:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (393, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 12 2022  8:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (394, N'SAC-[Sistema de Administración Catastral]', N'Genero el reporte genral de tributos', N'May 12 2022  9:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (395, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 12 2022  9:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (396, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 4 Por el valor de $2.50', N'May 12 2022  9:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (397, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 12 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (398, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 12 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (399, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 4 Por el valor de $2.50', N'May 12 2022  9:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (400, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 4 Por el valor de $2.50', N'May 12 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (401, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 12 2022 10:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (402, N'Estados de Cuenta', N'Genero estado de cuenta', N'May 12 2022 10:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (403, N'Nuevo Inmueble Dispenso de Impuestos', N'Registro Inmueble Dispenso:SUAREZ LORENA ', N'May 12 2022 10:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (404, N'Estados de Cuenta', N'Genero estado de cuenta', N'May 12 2022 10:58AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (405, N'Estados de Cuenta', N'Genero estado de cuenta', N'May 12 2022 10:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (406, N'Reporte Tajetas Por dia', N'Genero el Reporte de Tajetas ingresadas Por dia', N'May 12 2022 11:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (407, N'Morosos de Agua', N'Reviso  Morosos de agua', N'May 12 2022 11:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (408, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'May 12 2022 11:01AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (409, N'Reporte de Inmuebles Generales', N'Genero el Reporte Inmuebles Generales', N'May 12 2022 11:02AM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (410, N'Reporte de Inmuebles Generales', N'Genero el Reporte Inmuebles Generales', N'May 12 2022 11:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (411, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May 12 2022 11:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (412, N'Reporte de mora por Inmueble', N'Genero el Reporte de mora por Inmueble', N'May 12 2022 11:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (413, N'Reporte de mora por Inmueble', N'Genero el Reporte de mora por Inmueble', N'May 12 2022 11:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (414, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'May 12 2022 11:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (415, N'Reporte de Inmuebles Generales', N'Genero el Reporte Inmuebles Generales', N'May 12 2022 11:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (416, N'Edición de Datos de Empresa', N'Modifico Empresa:DIALCA S.A DE C.V DIALCA S.A DE C.V.', N'May 12 2022 11:36AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (417, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'May 12 2022 11:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (418, N'Reporte de Empresas Generales', N'Genero el Reporte Empresas Generales', N'May 12 2022 11:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (419, N'Reporte de mora por Empresa', N'Genero el Reporte de mora por Empresa', N'May 12 2022 11:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (420, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'May 12 2022 11:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (421, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'May 12 2022 11:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (422, N'Reporte de Empresas Generales', N'Genero el Reporte Empresas Generales', N'May 12 2022 11:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (423, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/37', N'May 12 2022  2:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (424, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/37', N'May 12 2022  2:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (425, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/37', N'May 12 2022  2:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (380, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/34', N'May 11 2022  3:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (381, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/34X', N'May 11 2022  3:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (382, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/35', N'May 11 2022  3:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (383, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/35', N'May 11 2022  3:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (384, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/35', N'May 11 2022  3:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (385, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/35', N'May 11 2022  3:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (386, N'FRANK', N'Registro de:FRANKLEIVA', N'May 11 2022  3:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (387, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:AMIGUITOS AMIGUITOS S.A. DE C.V', N'May 11 2022  3:54PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (388, N'Registro de Impuestos', N'Registro el Impuesto1180101', N'May 11 2022  4:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (389, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto1180101 a la propiedad 00000000-0000/36', N'May 11 2022  4:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (390, N'Modificación de Impuestos...', N'Modifico el impuesto 1180101', N'May 11 2022  4:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (391, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto1180101 a la propiedad 00000000-0000/36', N'May 11 2022  4:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (392, N'Edición de Datos de Empresa', N'Modifico Empresa:AMIGUITOS AMIGUITOS S.A. DE C.V', N'May 11 2022  4:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (426, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/37', N'May 12 2022  2:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (427, N'ARMANDO', N'Registro de:ARMANDOMARROQUIN', N'May 12 2022  2:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (428, N'SAC-[Sistema de Administración Catastral]', N'Genero el reporte genral de tributos', N'May 12 2022  3:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (429, N'SAC-[Sistema de Administración Catastral]', N'Genero el reporte genral de tributos', N'May 12 2022  3:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (430, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'May 12 2022  3:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (431, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/38', N'May 12 2022  4:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (432, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/38', N'May 12 2022  4:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (433, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/38', N'May 12 2022  4:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (434, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/38', N'May 12 2022  4:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (435, N'RENE', N'Registro de:RENELASER', N'May 12 2022  4:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (436, N'Cobros Individuales', N'Abono el recibo 7 SERIE y', N'May 12 2022  4:11PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (437, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 13 2022 11:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (438, N'Eliminar TEST2', N'Elimino la cuenta :TEST2', N'May 13 2022 11:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (439, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: CADA MARGINACION AGREGADA con el valor $0.50', N'May 13 2022 11:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (440, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: CARNET DE IDENTIFICACION DE MENORIDAD con el valor $2.00', N'May 13 2022 12:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (441, N'Creacion de Nuevo Concepto', N'Creo el grupo CARNET DE IDENTIFICACION DE MENORIDAD ', N'May 13 2022 12:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (442, N'Creacion de Nuevo Concepto', N'Creo el grupo CADA MARGINACION AGREGADA ', N'May 13 2022  1:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (443, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: COTEJO DE FIERROS POR CABEZA con el valor $0.09', N'May 13 2022  1:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (444, N'Creacion de Nuevo Concepto', N'Creo el grupo COTEJO DE FIERROS POR CABEZA', N'May 13 2022  1:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (445, N'Creacion de Nuevo Concepto', N'Creo el grupo COTEJO DE FIERROS POR CABEZA', N'May 13 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (446, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: ENTERRAMIENTO EN CEMENTERIO MUNICIPAL con el valor $1.71', N'May 13 2022  1:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (447, N'Creacion de Nuevo Concepto', N'Creo el grupo ENTERRAMIENTO EN CEMENTERIO MUNICIPAL', N'May 13 2022  1:53PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (448, N'Modificar Conceptos', N'Mofico el grupo ENTERRAMIENTO EN CEMENTERIO MUNICIPAL', N'May 13 2022  1:56PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (449, N'Modificación de Impuestos...', N'Modifico el impuesto 33', N'May 13 2022  2:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (450, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: MATRICULA DE FIERROS con el valor $5.71', N'May 13 2022  2:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (451, N'Creacion de Nuevo Concepto', N'Creo el grupo MATRICULA DE FIERROS', N'May 13 2022  2:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (452, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: MATRICULA DE FIERRO CON MULTA  con el valor $5.71', N'May 13 2022  2:22PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (453, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: OTRAS MULTAS MUNICIPALES  con el valor $17.13', N'May 13 2022  2:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (454, N'Creacion de Nuevo Concepto', N'Creo el grupo MATRICULAS DE FIERRO CON MULTA', N'May 13 2022  2:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (455, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: SACRIFICIO Y DESTACE POR GANADO MAYOR con el valor $1.71', N'May 13 2022  2:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (456, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: SERVICIOS DIVERSOS POR CARTA DE VENTA  con el valor $0.06', N'May 13 2022  2:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (457, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: VIALIDAD con el valor $3.43', N'May 13 2022  2:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (458, N'Creacion de Nuevo Concepto', N'Creo el grupo VIALIDAD', N'May 13 2022  2:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (459, N'Creacion de Nuevo Concepto', N'Creo el grupo DESTACE', N'May 13 2022  3:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (460, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: VISTO BUENO POR CABEZA con el valor $1.69', N'May 13 2022  3:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (461, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: FORMULARIO DE CARTA DE VENTA con el valor $0.15', N'May 13 2022  3:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (462, N'Creacion de Nuevo Concepto', N'Creo el grupo CARTA DE VENTA(VISTO BUENO)', N'May 13 2022  3:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (463, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 13 2022  3:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (464, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: POR INTRODUCCION DE CARNE, HUEZO con el valor $2.40', N'May 13 2022  3:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (465, N'Creacion de Nuevo Concepto', N'Creo el grupo GUIA DE CONDUCIR CARNE', N'May 13 2022  3:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (466, N'Edición:..POR INTRODUCCION DE CARNE, HUEZO', N'Modifico la Cuenta: POR INTRODUCCION DE CARNE, HUEZO con el valor $0.03', N'May 13 2022  3:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (467, N'Creacion de Nuevo Concepto', N'Creo el grupo GUIA DE CONDUCIR CARNE', N'May 13 2022  3:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (468, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 13 2022  3:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (469, N'Modificar Conceptos', N'Mofico el grupo PARTIDA DE NACIMIENTO ', N'May 13 2022  3:45PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (483, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 14 2022  2:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (484, N'Modificación de Impuestos...', N'Modifico el impuesto 16', N'May 14 2022  2:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (485, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARA CADA ENTERRAMIENTO CEMENTERIO JARDINES EL PARAISO 1° CATEGORIA con el valor $2.500', N'May 14 2022  2:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (486, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARA CADA ENTERRAMIENTO CEMENTERIO JARDINES EL PARAISO 2° CATEGORIA con el valor $2.500', N'May 14 2022  2:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (487, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARA CADA ENTERRAMIENTO CEMENTERIO JARDINES EL PARAISO 3° CATEGORIA con el valor $300.00', N'May 14 2022  2:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (488, N'Edición:..PARA CADA ENTERRAMIENTO CEMENTERIO JARDINES EL PARAISO 1° CATEGORIA', N'Modifico la Cuenta: PARA CADA ENTERRAMIENTO CEMENTERIO JARDINES EL PARAISO 1° CATEGORIA con el valor $2500.00', N'May 14 2022  2:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (490, N'Creacion de Nuevo Concepto', N'Creo el grupo COBRO TITULO 1° CATEGORIA CEMENTERIO ', N'May 14 2022  2:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (491, N'Creacion de Nuevo Concepto', N'Creo el grupo COBRO TITULO 2° CATEGORIA CEMENTERIO ', N'May 14 2022  2:38PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (492, N'Creacion de Nuevo Concepto', N'Creo el grupo COBRO TITULO 3° CATEGORIA CEMENTERIO ', N'May 14 2022  2:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (493, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: DERECHO DIVERSOS COMPRA DERECHOS DE AGUA POTABLE con el valor $220.0000', N'May 14 2022  2:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (494, N'Creacion de Nuevo Concepto', N'Creo el grupo COBRO DE CONEXION DE UN SERVICIO DE AGUA', N'May 14 2022  2:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (470, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 13 2022  4:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (471, N'Edición:..VIALIDAD', N'Modifico la Cuenta: VIALIDAD con el valor $3.43', N'May 13 2022  4:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (472, N'Modificar Conceptos', N'Mofico el grupo VIALIDAD', N'May 13 2022  4:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (473, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 13 2022  4:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (474, N'Cuenta Corriente Ingresos', N'Anulo el recibo 1 COn el valor de $238,00', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (475, N'Cuenta Corriente Ingresos', N'Anulo el recibo 2 COn el valor de $238,00', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (476, N'Cuenta Corriente Ingresos', N'Anulo el recibo 3 COn el valor de $357,00', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (477, N'Cuenta Corriente Ingresos', N'Anulo el recibo 4 COn el valor de $2.50', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (478, N'Cuenta Corriente Ingresos', N'Anulo el recibo 5 COn el valor de $2.50', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (479, N'Cuenta Corriente Ingresos', N'Anulo el recibo 6 COn el valor de $2.50', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (480, N'Cuenta Corriente Ingresos', N'Anulo el recibo 7 COn el valor de $2.10', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (481, N'Cuenta Corriente Ingresos', N'Anulo el recibo 8 COn el valor de $0.53', N'May 13 2022  4:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (482, N'Cuenta Corriente Ingresos', N'Anulo el recibo 9 COn el valor de $1.86', N'May 13 2022  4:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (489, N'Edición:..PARA CADA ENTERRAMIENTO CEMENTERIO JARDINES EL PARAISO 2° CATEGORIA', N'Modifico la Cuenta: PARA CADA ENTERRAMIENTO CEMENTERIO JARDINES EL PARAISO 2° CATEGORIA con el valor $2500.00', N'May 14 2022  2:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (495, N'Cuenta Corriente Ingresos', N'Anulo el recibo 10 COn el valor de $231.00', N'May 14 2022  2:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (496, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARA CADA ENTERRAMIENTO QUE SE VERIFIQUE con el valor $1.14', N'May 14 2022  2:49PM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (497, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARA CONSTRUCCION DE SOTANO EN NICHO con el valor $23.00', N'May 14 2022  2:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (498, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARA CONSTRUCCION DE SOTANO EN NICH con el valor $46.00', N'May 14 2022  2:54PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (499, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARA CONSTRUCCION DE SOTANO EN NIC con el valor $69.00', N'May 14 2022  2:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (500, N'Edición:..PARA CONSTRUCCION DE SOTANO EN NIC', N'Modifico la Cuenta: PARA CONSTRUCCION DE SOTANO EN NICHOS con el valor $69.00', N'May 14 2022  2:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (501, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 15 2022 11:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (502, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'May 15 2022 11:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (503, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  8:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (504, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  8:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (505, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Intento de inicio de Sesion Fallido...', N'May 16 2022  8:50AM ', N'Admon')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (508, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  8:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (509, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.50', N'May 16 2022  8:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (510, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.50', N'May 16 2022  8:54AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (513, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  9:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (514, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.50', N'May 16 2022  9:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (521, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  9:17AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (522, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022  9:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (523, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $5.25', N'May 16 2022  9:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (524, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  9:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (525, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $30,00', N'May 16 2022  9:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (506, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  8:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (507, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.50', N'May 16 2022  8:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (515, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: TALA Y PODA DE ARBOL EN EL MUNICIPIO con el valor $5.00', N'May 16 2022  9:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (516, N'Creacion de Nuevo Concepto', N'Creo el grupo TALA Y PODA ', N'May 16 2022  9:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (517, N'Cuenta Corriente Ingresos', N'Anulo el recibo 10 COn el valor de $2.50', N'May 16 2022  9:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (518, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $5.25', N'May 16 2022  9:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (519, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022  9:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (520, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $5.25', N'May 16 2022  9:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (560, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022 11:28AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (575, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  1:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (576, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (577, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $23.13', N'May 16 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (578, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $23.13', N'May 16 2022  1:53PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (579, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022  1:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (580, N'Estados de Cuenta', N'Genero estado de cuenta', N'May 16 2022  2:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (581, N'Estados de Cuenta', N'Genero estado de cuenta', N'May 16 2022  2:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (582, N'Morosos de Agua', N'Reviso  Morosos de agua', N'May 16 2022  2:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (583, N'Reporte Tajetas Por dia', N'Genero el Reporte de Tajetas ingresadas Por dia', N'May 16 2022  2:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (584, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022  2:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (585, N'Reporte Tajetas Por dia', N'Genero el Reporte de Tajetas ingresadas Por dia', N'May 16 2022  2:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (586, N'Cuenta Corriente Ingresos', N'Anulo el recibo 10 COn el valor de $23.13', N'May 16 2022  2:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (587, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  2:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (588, N'Reporte Tajetas Por dia', N'Genero el Reporte de Tajetas ingresadas Por dia', N'May 16 2022  2:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (589, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  2:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (590, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May 16 2022  2:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (596, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022  6:54PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (597, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022  7:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (599, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022  7:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (600, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022  7:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (601, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022  7:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (602, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022  9:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (603, N'Cuenta Corriente Ingresos', N'Anulo el recibo 11 COn el valor de $2.50', N'May 17 2022 10:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (604, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022 10:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (605, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022 10:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (606, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022 10:20PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (607, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  7:46AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (608, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May 18 2022  7:46AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (609, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.50', N'May 18 2022  7:47AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (511, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  8:58AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (512, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.50', N'May 16 2022  8:58AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (598, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022  7:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (610, N'Edición de Impueto Aplicado.', N'Modifico la medida del impuesto 06 a la propiedad LEONEL ANTONIO LOPEZ VALENCIA Apartir de ENERO La nueva medida es 1', N'May 18 2022  7:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (611, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/44', N'May 18 2022  7:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (612, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/4437', N'May 18 2022  7:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (613, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/45LEO 2', N'May 18 2022  7:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (614, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/45', N'May 18 2022  7:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (615, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/45LEO 2', N'May 18 2022  7:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (620, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  9:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (621, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: INTERESES PERSONA con el valor $0.0854', N'May 18 2022  9:09AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (622, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 18 2022  9:13AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (623, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  9:14AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (627, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  9:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (628, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/46', N'May 18 2022 10:07AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (629, N'ANDREA', N'Registro de:ANDREAWEYL', N'May 18 2022 10:07AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (630, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 18 2022 10:54AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (631, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022 10:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (632, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/47', N'May 18 2022 11:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (633, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto12108001 a la propiedad 00000000-0000/47', N'May 18 2022 11:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (634, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto12108001 a la propiedad 00000000-0000/47', N'May 18 2022 11:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (635, N'WILLIAM', N'Registro de:WILLIAMPINEDA', N'May 18 2022 11:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (636, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 18 2022 11:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (637, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022 11:45AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (640, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022 11:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (641, N'Cobros Individuales', N'Abono el recibo 118 SERIE Y', N'May 18 2022 12:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (642, N'Anular Rec.', N'Anulo Recibo Nº118', N'May 18 2022 12:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (643, N'Reactivar Rec.', N'Reactivo el recibo Nº 118 SERIE 118', N'May 18 2022 12:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (644, N'Anular Rec.', N'Anulo Recibo Nº115', N'May 18 2022 12:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (645, N'Anular Rec.', N'Anulo Recibo Nº116', N'May 18 2022 12:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (646, N'Anular Rec.', N'Anulo Recibo Nº117', N'May 18 2022 12:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (647, N'Reactivar Rec.', N'Reactivo el recibo Nº 115 SERIE 115', N'May 18 2022 12:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (648, N'Reactivar Rec.', N'Reactivo el recibo Nº 115 SERIE 115', N'May 18 2022 12:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (649, N'Reactivar Rec.', N'Reactivo el recibo Nº 115 SERIE 115', N'May 18 2022 12:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (650, N'Reactivar Rec.', N'Reactivo el recibo Nº 115 SERIE 115', N'May 18 2022 12:03PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (651, N'Reactivar Rec.', N'Reactivo el recibo Nº 116 SERIE 116', N'May 18 2022 12:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (652, N'Reactivar Rec.', N'Reactivo el recibo Nº 117 SERIE 117', N'May 18 2022 12:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (526, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022  9:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (527, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022  9:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (528, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 16 2022  9:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (529, N'Edición de Inmuebles', N'Modifico Propietario..ISAEL ABREGOGUARDADO', N'May 16 2022  9:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (530, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/39ISAEL ABREGO GUARDADO', N'May 16 2022  9:31AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (531, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto05 a la propiedad 00000000-0000/39', N'May 16 2022  9:33AM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (532, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto05 a la propiedad 00000000-0000/39', N'May 16 2022  9:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (533, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/39ISAEL ABREGO GUARDADO', N'May 16 2022  9:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (534, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 16 2022  9:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (535, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: SERVICIO DE AGUA POTABLE  con el valor $4.76', N'May 16 2022  9:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (536, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/39', N'May 16 2022  9:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (537, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/39ISAEL ABREGO GUARDADO', N'May 16 2022  9:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (538, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/39ISAEL ABREGO GUARDADO', N'May 16 2022  9:48AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (539, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/40', N'May 16 2022  9:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (540, N'ISAEL ', N'Registro de:ISAEL ABREGO GUARDADO', N'May 16 2022  9:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (541, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/40', N'May 16 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (542, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/40PROPIA', N'May 16 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (543, N'Cobros Individuales', N'Abono el recibo 10 SERIE Y', N'May 16 2022  9:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (544, N'Morosos de Agua', N'Reviso  Morosos de agua', N'May 16 2022 10:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (545, N'Morosos de Agua', N'Reviso  Morosos de agua', N'May 16 2022 10:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (546, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.10', N'May 16 2022 10:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (547, N'Edición de Inmuebles', N'Modifico Propietario..MARIA MILAGROALEMAN DE CARABANTE', N'May 16 2022 11:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (548, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/41MARIA MILAGRO ALEMAN DE CARABANTES', N'May 16 2022 11:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (549, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/41', N'May 16 2022 11:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (550, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/41', N'May 16 2022 11:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (551, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/41', N'May 16 2022 11:06AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (552, N'Eliminar Cuentas Corrientes', N'Elimino Propietario..MARIA MILAGROALEMAN DE CARABANTE', N'May 16 2022 11:07AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (553, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/42', N'May 16 2022 11:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (554, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/42', N'May 16 2022 11:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (555, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/42', N'May 16 2022 11:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (556, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/42', N'May 16 2022 11:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (557, N'MARIA MILAGRO', N'Registro de:MARIA MILAGROALEMAN DE CARABANTES', N'May 16 2022 11:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (558, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/42', N'May 16 2022 11:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (559, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/42PROPIO', N'May 16 2022 11:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (561, N'Edición de Inmuebles', N'Desmembro  Propiedad ..00000000-0000/42 al contribuyente PROPIO', N'May 16 2022 11:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (562, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/43ALEMAN DE CARABANTES', N'May 16 2022 11:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (563, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/43', N'May 16 2022 11:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (564, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/43', N'May 16 2022 11:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (565, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto04 a la propiedad 00000000-0000/43', N'May 16 2022 11:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (566, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/43', N'May 16 2022 11:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (567, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/43', N'May 16 2022 11:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (568, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/43ALEMAN DE CARABANTES', N'May 16 2022 11:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (569, N'Edición de Inmuebles', N'Modifico Propietario..MARIA MILAGROALEMAN DE CARABANTES', N'May 16 2022 11:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (570, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/43', N'May 16 2022 11:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (571, N'Anular Rec.', N'Anulo Recibo Nº16', N'May 16 2022 11:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (572, N'Reactivar Rec.', N'Reactivo el recibo Nº 16 SERIE 16', N'May 16 2022 11:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (573, N'Registro de Impuestos', N'Registro el Impuesto366', N'May 16 2022 12:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (574, N'Eliminación de Impuestos', N'Descativo el impuesto 366', N'May 16 2022  1:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (653, N'Cobros Individuales', N'Abono el recibo 139 SERIE Y', N'May 18 2022  1:45PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (654, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 10 Por el valor de $2.50', N'May 18 2022  1:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (655, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  4:37PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (656, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/48WILLIAM CASA', N'May 18 2022  4:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (657, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/48', N'May 18 2022  4:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (658, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/48', N'May 18 2022  4:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (659, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/48WILLIAM CASA', N'May 18 2022  4:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (660, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 18 2022  4:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (661, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  4:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (662, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 18 2022  4:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (663, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  4:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (664, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  8:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (665, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/49', N'May 19 2022  8:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (666, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/49', N'May 19 2022  8:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (667, N'CAROLINA', N'Registro de:CAROLINAVALENCIA', N'May 19 2022  8:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (668, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/49CAROLINA 1', N'May 19 2022  8:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (669, N'Eliminar Cuentas Corrientes', N'Elimino Propietario..CAROLINAVALENCIA', N'May 19 2022  8:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (670, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/50', N'May 19 2022  8:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (671, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/50', N'May 19 2022  8:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (672, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/50', N'May 19 2022  8:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (591, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022 10:17AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (592, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022 10:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (593, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 17 2022 10:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (594, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/44', N'May 17 2022 10:45AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (595, N'LEONEL ANTONIO', N'Registro de:LEONEL ANTONIOLOPEZ VALENCIA', N'May 17 2022 10:45AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (638, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022 11:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (639, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022 11:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (673, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/50', N'May 19 2022  8:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (674, N'CAROLINA', N'Registro de:CAROLINAVALENCIA', N'May 19 2022  8:28AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (675, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: INTERES SOBRE MULTA PERSONAS con el valor $0.0854', N'May 19 2022  9:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (676, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 19 2022  9:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (677, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  9:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (678, N'Edición:..INTERES SOBRE MULTA PERSONAS', N'Modifico la Cuenta: INTERES con el valor $0.0854', N'May 19 2022  9:33AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (679, N'Eliminación de Impuestos', N'Descativo el impuesto 07', N'May 19 2022  9:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (680, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 19 2022  9:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (681, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  9:45AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (682, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 19 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (700, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  2:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (701, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:11PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (702, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (703, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (704, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (705, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (706, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (707, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (708, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (709, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (710, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  3:53PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (711, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  4:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (712, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  4:09PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (713, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  4:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (714, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto11801001 a la propiedad 00000000-0000/01', N'May 19 2022  4:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (715, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  4:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (716, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  4:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (717, N'Registro de Impuestos', N'Registro el Impuesto301', N'May 19 2022  5:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (718, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  5:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (719, N'Registro de Impuestos', N'Registro el Impuesto302', N'May 19 2022  5:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (616, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  8:18AM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (617, N'Reporte de Inmuebles Generales', N'Genero el Reporte Inmuebles Generales', N'May 18 2022  8:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (618, N'Reporte de mora por Inmueble', N'Genero el Reporte de mora por Inmueble', N'May 18 2022  8:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (619, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'May 18 2022  8:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (624, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 18 2022  9:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (625, N'Eliminación de Impuestos', N'Descativo el impuesto 52', N'May 18 2022  9:47AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (626, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 18 2022  9:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (720, N'Registro de Impuestos', N'Registro el Impuesto303', N'May 19 2022  5:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (721, N'Registro de Impuestos', N'Registro el Impuesto304', N'May 19 2022  5:19PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (722, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  2:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (723, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 12 Por el valor de $2.50', N'May 23 2022  2:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (724, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 12 Por el valor de $2.50', N'May 23 2022  2:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (725, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  2:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (726, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 12 Por el valor de $2.50', N'May 23 2022  2:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (727, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  4:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (728, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  4:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (729, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 14 Por el valor de $2.50', N'May 23 2022  4:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (730, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 14 Por el valor de $2.50', N'May 23 2022  4:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (731, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/14', N'May 23 2022  4:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (732, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/14SUPER TIENDA ALESSANDRA ', N'May 23 2022  4:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (733, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  4:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (734, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (735, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (736, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (737, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (746, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  7:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (747, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/46', N'May 24 2022  7:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (748, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/46', N'May 24 2022  7:54AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (749, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  8:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (750, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/51CASA DE LEO', N'May 24 2022  8:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (751, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto05 a la propiedad 00000000-0000/51', N'May 24 2022  8:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (752, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/51CASA DE LEO', N'May 24 2022  8:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (753, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  8:56AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (754, N'Cobros Individuales', N'Abono el recibo 138 SERIE y', N'May 24 2022  9:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (755, N'Anular Rec.', N'Anulo Recibo Nº138', N'May 24 2022  9:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (756, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  9:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (757, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022 10:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (683, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (684, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 19 2022 10:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (685, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022 10:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (686, N'Edición de Inmuebles', N'Modifico Propietario..CAROLINAVALENCIA', N'May 19 2022 10:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (687, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/50CAROLINA 2', N'May 19 2022 10:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (688, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 19 2022 10:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (689, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022 10:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (690, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 19 2022 10:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (691, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022 10:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (692, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0.05 La multa minima a: 2.86 La maxima a: 57.14', N'May 19 2022 10:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (693, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022 10:31AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (694, N'Edición:..INTERES', N'Modifico la Cuenta: INTERES con el valor $0.0854', N'May 19 2022 10:56AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (695, N'Registro de Impuestos', N'Registro el Impuesto1530201', N'May 19 2022 11:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (696, N'Eliminación de Impuestos', N'Descativo el impuesto 1530201', N'May 19 2022 11:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (697, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  1:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (698, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  1:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (699, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 19 2022  1:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (738, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (739, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (740, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (741, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (742, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (743, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:38PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (744, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 23 2022  5:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (745, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto05 a la propiedad 00000000-0000/46', N'May 23 2022  6:22PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (760, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022 11:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (775, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022  9:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (776, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022  9:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (777, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/53', N'May 29 2022  9:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (778, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/53', N'May 29 2022  9:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (779, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/53', N'May 29 2022  9:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (780, N'LEONEL 007', N'Registro de:LEONEL 007LOPEZ ', N'May 29 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (781, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022 10:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (782, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022 10:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (783, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022 10:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (784, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022 10:16AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (758, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022 11:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (761, N'Edición de Inmuebles', N'Modifico Propietario..YEIMI ANTONIETAHERNANDEZ HERNANDEZ', N'May 24 2022 11:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (762, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/52R', N'May 24 2022 11:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (763, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/52', N'May 24 2022 11:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (764, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/52R', N'May 24 2022 11:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (785, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022 10:35AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (786, N'Anular Rec.', N'Anulo Recibo Nº162', N'May 29 2022 10:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (809, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 30 2022  8:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (810, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'May 30 2022  8:35AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (815, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  7 2022  5:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (823, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  7 2022  5:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (824, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/58', N'Jun  7 2022  5:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (825, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/58', N'Jun  7 2022  5:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (826, N'Edición de Inmuebles', N'Modifico Propiedad ..00000000-0000/5810', N'Jun  7 2022  5:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (830, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022 11:46AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (831, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022 11:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (832, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022 11:54AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (834, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022  2:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (835, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022  3:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (836, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 23 Por el valor de $4.20', N'Jun  8 2022  3:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (838, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 10 2022  2:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (839, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 17 2022 10:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (840, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 18 2022 10:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (848, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (849, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'Jun 19 2022  9:58AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (850, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Jun 19 2022  9:58AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (851, N'Cobros Individuales', N'Abono el recibo 192 SERIE Y', N'Jun 19 2022 10:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (852, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'Jun 19 2022 10:00AM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (853, N'Cobros Individuales', N'Abono el recibo 193 SERIE Y', N'Jun 19 2022 10:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (854, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/60', N'Jun 19 2022 10:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (855, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/60', N'Jun 19 2022 10:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (856, N'GIOVANNI ARIEL', N'Registro de:GIOVANNI ARIELTZEC', N'Jun 19 2022 10:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (864, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  1:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (865, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (866, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  1:47PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (867, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  1:48PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (868, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  1:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (869, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  1:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (759, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022 11:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (765, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  1:49PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (766, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (767, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (768, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:11PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (769, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:16PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (770, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:20PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (771, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (772, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (773, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (774, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 24 2022  2:47PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (827, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022 11:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (828, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022 11:28AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (829, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022 11:41AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (841, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 18 2022 10:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (870, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  1:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (787, N'Reactivar Rec.', N'Reactivo el recibo Nº 162 SERIE 162', N'May 29 2022 10:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (788, N'Cobros Individuales', N'Abono el recibo 154 SERIE R', N'May 29 2022 11:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (789, N'Anular Rec.', N'Anulo Recibo Nº154', N'May 29 2022 11:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (790, N'Reactivar Rec.', N'Reactivo el recibo Nº 154 SERIE 154', N'May 29 2022 11:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (791, N'Cobros Individuales', N'Abono el recibo 155 SERIE R', N'May 29 2022 11:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (792, N'Anular Rec.', N'Anulo Recibo Nº156', N'May 29 2022 11:33AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (793, N'Reactivar Rec.', N'Reactivo el recibo Nº 156 SERIE 156', N'May 29 2022 11:33AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (794, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'May 29 2022 12:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (795, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022  4:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (796, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: X con el valor $3.60', N'May 29 2022  4:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (797, N'Creacion de Nuevo Concepto', N'Creo el grupo X-CON FIESTAS', N'May 29 2022  4:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (798, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/54', N'May 29 2022  4:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (799, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/54', N'May 29 2022  4:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (800, N'GUILLERMO', N'Registro de:GUILLERMOANDRADE', N'May 29 2022  4:53PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (801, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:GUILLERMO COMERCIAL', N'May 29 2022  4:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (802, N'Edición de Inmuebles', N'Modifico Propietario..PATRICIA GUADALUPEESCOTO GARCIA', N'May 29 2022  5:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (803, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/56SANTA ELENA', N'May 29 2022  5:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (804, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/56', N'May 29 2022  5:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (805, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 29 2022  5:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (806, N'Cobros Individuales', N'Abono el recibo 165 SERIE y', N'May 29 2022  5:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (807, N'Anular Rec.', N'Anulo Recibo Nº165', N'May 29 2022  5:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (808, N'Reactivar Rec.', N'Reactivo el recibo Nº 165 SERIE 165', N'May 29 2022  5:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (833, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  8 2022  2:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (843, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  8:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (844, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/59', N'Jun 19 2022  8:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (845, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/59', N'Jun 19 2022  8:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (846, N'JUAN ANTONIO', N'Registro de:JUAN ANTONIOPEREZ', N'Jun 19 2022  8:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (847, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022  9:17AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (857, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022 11:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (858, N'Cobros Individuales', N'Abono el recibo 211 SERIE Y', N'Jun 19 2022 11:28AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (859, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Jun 19 2022 11:36AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (860, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022 11:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (861, N'Anular Rec.', N'Anulo Recibo Nº211', N'Jun 19 2022 11:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (862, N'Cuenta Corriente Ingresos', N'Anulo el recibo 33 COn el valor de $6.30', N'Jun 19 2022 11:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (863, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 19 2022 12:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (916, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  2:22PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (917, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  2:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (918, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul  1 2022  2:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1, N'SAC-[Sistema de Administración Catastral]', N'Genero el reporte genral de tributos', N'Mar 16 2022  2:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2, N'Reporte de Ingresos por Tributos', N'Genero el Reporte Ingresos por Tributos', N'Mar 16 2022  2:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (3, N'Eliminar JUVENTUD', N'Elimino la cuenta :JUVENTUD', N'Mar 16 2022  2:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (4, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 17 2022  2:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (5, N'SAC-[Sistema de Administración Catastral]', N'Genero el reporte genral de tributos', N'Mar 17 2022  2:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (6, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 17 2022  2:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (7, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 16 2022  7:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (8, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 16 2022  7:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (9, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Mar 16 2022  7:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (10, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 16 2022  7:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (11, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 17 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (12, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 17 2022 10:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (13, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 18 2022  9:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (14, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'Mar 18 2022  9:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (15, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Mar 18 2022 10:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (16, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'Mar 18 2022 10:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (17, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 23 2022 11:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (18, N'Reporte Por Colonias', N'Genero el Reporte de Propiedades Por Colonias', N'Mar 23 2022 11:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (19, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'Mar 23 2022 11:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (20, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Mar 23 2022 11:54AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (21, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'Mar 23 2022 12:09PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (22, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'Mar 23 2022 12:20PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (23, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 26 2022  5:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (24, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 26 2022  5:09PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (25, N'Alcaldia Modificar', N'Cambio la configurcion de los datos de la AlcaldiaALCALDIA MUNICIPAL VILLA EL PARAISO CHALATENANGO', N'Abr 26 2022  5:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (26, N'Alcaldia Modificar', N'Cambio la configurcion de los datos de la AlcaldiaALCALDIA MUNICIPAL VILLA EL PARAISO CHALATENANGO', N'Abr 26 2022  5:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (27, N'Alcaldia Modificar', N'Cambio la configurcion de los datos de la AlcaldiaALCALDIA MUNICIPAL VILLA EL PARAISO CHALATENANGO', N'Abr 26 2022  5:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (28, N'Registro de Nuevos Empleados', N'Registro el empleado ESCALANTE GALDAMEZ ALEXI ANTONIO', N'Abr 26 2022  5:20PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (29, N'Registro de Nuevos Empleados', N'Registro el empleado ALVARENGA HERCULES  GRECIA ISABEL', N'Abr 26 2022  5:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (30, N'Registro de Nuevos Empleados', N'Registro el empleado GALADAEZ LOPEZ  SONIA MARLENI', N'Abr 26 2022  5:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (31, N'Registro de Nuevos Empleados', N'Registro el empleado SAAVEDRA GUARDADO MARLON OMAR', N'Abr 26 2022  5:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (32, N'Registro de Nuevos Empleados', N'Registro el empleado MARTINEZ ANABEL ', N'Abr 26 2022  5:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (33, N'Registro de Nuevos Empleados', N'Registro el empleado MARTINEZ HILDA GLADIS ', N'Abr 26 2022  5:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (34, N'Registro de Nuevos Empleados', N'Registro el empleado MARROQUIN LEIVA  FRANCISCO ARMANDO ', N'Abr 26 2022  5:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (35, N'Registro Nuevo Usuario', N'Registro el Usuario CATASTRO_1 Del Tipo: Administrador', N'Abr 26 2022  5:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (36, N'Registro Nuevo Usuario', N'Registro el Usuario CUENTACORRIENTE_1 Del Tipo: Catastro', N'Abr 26 2022  5:46PM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (37, N'Registro Nuevo Usuario', N'Registro el Usuario COLECTOR_1 Del Tipo: Tesorero', N'Abr 26 2022  5:48PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (38, N'Registro Nuevo Usuario', N'Registro el Usuario REGISTRO_FAMILIAR Del Tipo: Catastro', N'Abr 26 2022  5:49PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (39, N'Registro Nuevo Usuario', N'Registro el Usuario REGISTRO_CIUDADANO Del Tipo: Catastro', N'Abr 26 2022  5:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (40, N'Registro Nuevo Usuario', N'Registro el Usuario AUXILIAR_1 Del Tipo: Administrador', N'Abr 26 2022  5:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (41, N'Catastro System-Edit User', N'Modifico el Usuario CATASTRO_1 Del Tipo: Administrador', N'Abr 26 2022  5:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (42, N'Catastro System-Edit User', N'Modifico el Usuario CUENTACORRIENTE_1 Del Tipo: Catastro', N'Abr 26 2022  5:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (43, N'Catastro System-Edit User', N'Modifico el Usuario COLECTOR_1 Del Tipo: Tesorero', N'Abr 26 2022  6:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (44, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022  9:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (45, N'Catastro System-Edit User', N'Modifico el Usuario CATASTRO_1 Del Tipo: Administrador', N'Abr 27 2022  9:11AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (46, N'Edicion de Empleados', N'Modifico El empleado ALVARENGA HERCULES  GRECIA ISABEL', N'Abr 27 2022  9:14AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (47, N'Edicion de Empleados', N'Modifico El empleado GALADAEZ LOPEZ  SONIA MARLENI', N'Abr 27 2022  9:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (48, N'Edicion de Empleados', N'Modifico El empleado ALVARENGA HERCULES  GRECIA ISABEL', N'Abr 27 2022  9:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (49, N'Edicion de Empleados', N'Modifico El empleado GALADAEZ LOPEZ  SONIA MARLENI', N'Abr 27 2022  9:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (50, N'Edicion de Empleados', N'Modifico El empleado SAAVEDRA GUARDADO MARLON OMAR', N'Abr 27 2022  9:28AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (51, N'Edicion de Empleados', N'Modifico El empleado MARTINEZ ANABEL ', N'Abr 27 2022  9:32AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (52, N'Edicion de Empleados', N'Modifico El empleado MARTINEZ HILDA GLADIS ', N'Abr 27 2022  9:35AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (53, N'Catastro System-Edit User', N'Modifico el Usuario CATASTRO_1 Del Tipo: Administrador', N'Abr 27 2022  9:36AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (54, N'Catastro System-Edit User', N'Modifico el Usuario CUENTACORRIENTE_1 Del Tipo: Administrador', N'Abr 27 2022  9:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (55, N'Catastro System-Edit User', N'Modifico el Usuario COLECTOR_1 Del Tipo: Tesorero', N'Abr 27 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (56, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022 10:09AM ', N'CATASTRO_1')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (57, N'Catastro System-Edit User', N'Modifico el Usuario CUENTA1 Del Tipo: Administrador', N'Abr 27 2022 10:13AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (58, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022 10:17AM ', N'COLECTOR_1')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (59, N'Edicion de Empleados', N'Modifico El empleado MARTINEZ HILDA GLADIS ', N'Abr 27 2022 10:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (60, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022 10:19AM ', N'CUENTA1')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (61, N'Catastro System-Edit User', N'Modifico el Usuario REGISTRO Del Tipo: Catastro', N'Abr 27 2022 10:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (65, N'Registro de Nuevas Zonas', N'Registro de Zonas CASCO URBANO  1', N'Abr 27 2022 11:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (66, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022 11:27AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (67, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 28 2022  9:13AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (68, N'Registro de Nueva Colonia...', N'Registro de Colonia TEESST', N'Abr 28 2022  9:17AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (69, N'Editar TEESST', N'Edito la  Colonia PRUEBA', N'Abr 28 2022  9:17AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (70, N'Eliminar PRUEBA', N'Elimino la Colonia PRUEBA', N'Abr 28 2022  9:17AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (71, N'Registro de Nueva Colonia...', N'Registro de Colonia COL SANTA ELENA ', N'Abr 28 2022  9:18AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (72, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO CERRO PARTIDO', N'Abr 28 2022  9:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (73, N'Registro de Nueva Colonia...', N'Registro de Colonia COL. FATIMA CASERIO CALLE NUEVA ', N'Abr 28 2022  9:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (74, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO CALLE NUEVA ', N'Abr 28 2022  9:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (75, N'Registro de Nueva Colonia...', N'Registro de Colonia CANTON SANTA BARBARA', N'Abr 28 2022  9:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (76, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO AGUA HELADA', N'Abr 28 2022  9:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (62, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022 10:22AM ', N'REGISTRO')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (63, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022 10:23AM ', N'REGISTRO')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (64, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 27 2022 10:26AM ', N'REGISTRO_FAMILIAR')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (77, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO EL ARENAL', N'Abr 28 2022  9:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (78, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO ANGOSTURA ', N'Abr 28 2022  9:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (79, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO EL TAMARINDO', N'Abr 28 2022  9:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (80, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO LA COYOTERA ', N'Abr 28 2022  9:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (81, N'Registro de Nueva Colonia...', N'Registro de Colonia CANTON EL TABLON', N'Abr 28 2022  9:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (82, N'Registro de Nueva Colonia...', N'Registro de Colonia COL. SANTA FE ', N'Abr 28 2022  9:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (83, N'Registro de Nueva Colonia...', N'Registro de Colonia COL. LAS ARADAS ', N'Abr 28 2022  9:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (84, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO LOS CRUCES ', N'Abr 28 2022  9:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (85, N'Registro de Nueva Colonia...', N'Registro de Colonia COL SAN LUIS 5° AVE. SUR', N'Abr 28 2022  9:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (86, N'Registro de Nueva Colonia...', N'Registro de Colonia COL. LAS BRISAS', N'Abr 28 2022  9:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (87, N'Registro de Nueva Colonia...', N'Registro de Colonia COL. EL MILAGRO', N'Abr 28 2022  9:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (88, N'Registro de Nueva Colonia...', N'Registro de Colonia CANTON VALLE NUEVO ', N'Abr 28 2022  9:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (89, N'Registro de Nueva Colonia...', N'Registro de Colonia 7° AVE. SUR ', N'Abr 28 2022  9:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (90, N'Registro de Nueva Colonia...', N'Registro de Colonia AVENIDA MORAZAN ', N'Abr 28 2022  9:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (91, N'Registro de Nueva Colonia...', N'Registro de Colonia CALLE EL CALVARIO', N'Abr 28 2022  9:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (92, N'Registro de Nueva Colonia...', N'Registro de Colonia AVENIDA CENTRAL', N'Abr 28 2022  9:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (93, N'Registro de Nueva Colonia...', N'Registro de Colonia 4° CALLE PONIENTE', N'Abr 28 2022  9:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (94, N'Registro de Nueva Colonia...', N'Registro de Colonia 2° CALLE PONIENTE ', N'Abr 28 2022  9:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (95, N'Registro de Nueva Colonia...', N'Registro de Colonia COL EL ROBLE I', N'Abr 28 2022  9:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (96, N'Registro de Nueva Colonia...', N'Registro de Colonia COLONIA EL ROBLE II', N'Abr 28 2022  9:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (97, N'Registro de Nueva Colonia...', N'Registro de Colonia 3° AVENIDA NORTE ', N'Abr 28 2022  9:29AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (98, N'Registro de Nueva Colonia...', N'Registro de Colonia 1° CALLE PTE', N'Abr 28 2022  9:29AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (99, N'Registro de Nueva Colonia...', N'Registro de Colonia 5° AVENIDA NORTE', N'Abr 28 2022  9:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (100, N'Registro de Nueva Colonia...', N'Registro de Colonia 6° CALLE PTE ', N'Abr 28 2022  9:31AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (101, N'Registro de Nueva Colonia...', N'Registro de Colonia 3° CALLE PTE', N'Abr 28 2022  9:31AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (102, N'Registro de Nueva Colonia...', N'Registro de Colonia 1° AVENIDA SUR ', N'Abr 28 2022  9:32AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (103, N'Registro de Nuevas Zonas', N'Registro de Zonas ZONA A 2', N'Abr 28 2022  9:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (104, N'Registro de Nuevas Zonas', N'agregado la colonia: COL SANTA ELENA  a la Zona ZONA A', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (105, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO CERRO PARTIDO a la Zona ZONA A', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (106, N'Registro de Nuevas Zonas', N'agregado la colonia: COL. FATIMA CASERIO CALLE NUEVA  a la Zona ZONA A', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (107, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO CALLE NUEVA  a la Zona ZONA A', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (108, N'Registro de Nuevas Zonas', N'agregado la colonia: CANTON SANTA BARBARA a la Zona ZONA A', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (109, N'Registro de Nuevas Zonas', N'Registro de Zonas ZONA B 3', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (110, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO AGUA HELADA a la Zona ZONA B', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (111, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO EL ARENAL a la Zona ZONA B', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (112, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO ANGOSTURA  a la Zona ZONA B', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (113, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO EL TAMARINDO a la Zona ZONA B', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (114, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO LA COYOTERA  a la Zona ZONA B', N'Abr 28 2022  9:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (115, N'Registro de Nuevas Zonas', N'Registro de Zonas ZONA C 4', N'Abr 28 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (116, N'Registro de Nuevas Zonas', N'agregado la colonia: CANTON EL TABLON a la Zona ZONA C', N'Abr 28 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (117, N'Registro de Nuevas Zonas', N'agregado la colonia: COL. SANTA FE  a la Zona ZONA C', N'Abr 28 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (118, N'Registro de Nuevas Zonas', N'agregado la colonia: COL. LAS ARADAS  a la Zona ZONA C', N'Abr 28 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (119, N'Registro de Nuevas Zonas', N'agregado la colonia: CASERIO LOS CRUCES  a la Zona ZONA C', N'Abr 28 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (120, N'Registro de Nuevas Zonas', N'Registro de Zonas ZONA D 5', N'Abr 28 2022  9:39AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (121, N'Registro de Nuevas Zonas', N'agregado la colonia: COL. LAS BRISAS a la Zona ZONA D', N'Abr 28 2022  9:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (122, N'Registro de Nuevas Zonas', N'agregado la colonia: COL. EL MILAGRO a la Zona ZONA D', N'Abr 28 2022  9:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (123, N'Registro de Nuevas Zonas', N'agregado la colonia: COL EL ROBLE I a la Zona ZONA D', N'Abr 28 2022  9:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (124, N'Registro de Nuevas Zonas', N'agregado la colonia: COLONIA EL ROBLE II a la Zona ZONA D', N'Abr 28 2022  9:40AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (125, N'Registro de Nueva Colonia...', N'Registro de Colonia COL LOS ANGELES ', N'Abr 28 2022  9:41AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (126, N'Registro de Nuevas Zonas', N'Registro de Zonas E 6', N'Abr 28 2022  9:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (127, N'Registro de Nuevas Zonas', N'agregado la colonia: CANTON VALLE NUEVO  a la Zona E', N'Abr 28 2022  9:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (128, N'Registro de Nueva Colonia...', N'Registro de Colonia CASERIO LOS CORTECES CANTON VALLE NUEVO', N'Abr 28 2022  9:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (129, N'Registro de Nueva Colonia...', N'Registro de Colonia COL EL TRIUNFO LOS AMATES', N'Abr 28 2022  9:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (130, N'Registro de Nueva Colonia...', N'Registro de Colonia COL. EL MILAGRO CANTON VALLE NUEVO', N'Abr 28 2022  9:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (131, N'Registro de Impuestos', N'Registro el Impuesto1', N'Abr 28 2022  9:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (132, N'Modificación de Impuestos...', N'Modifico el impuesto 1', N'Abr 28 2022  9:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (133, N'Eliminación de Impuestos', N'Descativo el impuesto 1', N'Abr 28 2022  9:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (134, N'Registro de Categorias', N'Registro la categoria2', N'Abr 28 2022 10:06AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (135, N'Registro de Impuestos', N'Registro el Impuesto01', N'Abr 28 2022 10:14AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (136, N'Registro de Impuestos', N'Registro el Impuesto02', N'Abr 28 2022 10:15AM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (137, N'Registro de Impuestos', N'Registro el Impuesto03', N'Abr 28 2022 10:20AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (138, N'Registro de Impuestos', N'Registro el Impuesto04', N'Abr 28 2022 10:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (139, N'Registro de Impuestos', N'Registro el Impuesto05', N'Abr 28 2022 10:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (140, N'Registro de Impuestos', N'Registro el Impuesto06', N'Abr 28 2022 10:25AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (141, N'Registro de Impuestos', N'Registro el Impuesto07', N'Abr 28 2022 10:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (142, N'Registro de Impuestos', N'Registro el Impuesto08', N'Abr 28 2022 10:35AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (143, N'Registro de Impuestos', N'Registro el Impuesto09', N'Abr 28 2022 10:36AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (144, N'Registro de Impuestos', N'Registro el Impuesto10', N'Abr 28 2022 10:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (145, N'Registro de Impuestos', N'Registro el Impuesto11', N'Abr 28 2022 10:43AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (146, N'Registro de Impuestos', N'Registro el Impuesto12', N'Abr 28 2022 10:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (147, N'Registro de Impuestos', N'Registro el Impuesto13', N'Abr 28 2022 10:47AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (148, N'Registro de Impuestos', N'Registro el Impuesto14', N'Abr 28 2022 10:50AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (149, N'Registro de Impuestos', N'Registro el Impuesto15', N'Abr 28 2022 10:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (150, N'Registro de Impuestos', N'Registro el Impuesto16', N'Abr 28 2022 10:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (151, N'Registro de Impuestos', N'Registro el Impuesto17', N'Abr 28 2022 10:58AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (152, N'Registro de Impuestos', N'Registro el Impuesto18', N'Abr 28 2022 10:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (153, N'Registro de Impuestos', N'Registro el Impuesto19', N'Abr 28 2022 11:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (154, N'Registro de Impuestos', N'Registro el Impuesto20', N'Abr 28 2022 11:01AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (155, N'Registro de Impuestos', N'Registro el Impuesto21', N'Abr 28 2022 11:01AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (156, N'Eliminación de Impuestos', N'Descativo el impuesto 21', N'Abr 28 2022 11:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (157, N'Registro de Impuestos', N'Registro el Impuesto22', N'Abr 28 2022 11:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (158, N'Registro de Impuestos', N'Registro el Impuesto23', N'Abr 28 2022 11:07AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (159, N'Registro de Impuestos', N'Registro el Impuesto24', N'Abr 28 2022 11:09AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (160, N'Registro de Impuestos', N'Registro el Impuesto25', N'Abr 28 2022 11:13AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (161, N'Registro de Impuestos', N'Registro el Impuesto26', N'Abr 28 2022 11:15AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (162, N'Registro de Impuestos', N'Registro el Impuesto27', N'Abr 28 2022  1:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (163, N'Registro de Impuestos', N'Registro el Impuesto28', N'Abr 28 2022  1:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (164, N'Registro de Impuestos', N'Registro el Impuesto29', N'Abr 28 2022  1:19PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (165, N'Registro de Impuestos', N'Registro el Impuesto30', N'Abr 28 2022  1:20PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (166, N'Registro de Impuestos', N'Registro el Impuesto31', N'Abr 28 2022  1:21PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (167, N'Registro de Impuestos', N'Registro el Impuesto32', N'Abr 28 2022  1:22PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (168, N'Registro de Impuestos', N'Registro el Impuesto33', N'Abr 28 2022  1:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (169, N'Registro de Impuestos', N'Registro el Impuesto34', N'Abr 28 2022  1:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (170, N'Registro de Impuestos', N'Registro el Impuesto35', N'Abr 28 2022  1:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (171, N'Registro de Impuestos', N'Registro el Impuesto36', N'Abr 28 2022  1:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (172, N'Modificación de Impuestos...', N'Modifico el impuesto 33', N'Abr 28 2022  1:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (173, N'Registro de Impuestos', N'Registro el Impuesto37', N'Abr 28 2022  2:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (174, N'Registro de Impuestos', N'Registro el Impuesto38', N'Abr 28 2022  2:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (175, N'Registro de Impuestos', N'Registro el Impuesto39', N'Abr 28 2022  2:02PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (176, N'Registro de Impuestos', N'Registro el Impuesto40', N'Abr 28 2022  2:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (177, N'Registro de Impuestos', N'Registro el Impuesto41', N'Abr 28 2022  2:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (178, N'Registro de Impuestos', N'Registro el Impuesto43', N'Abr 28 2022  2:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (179, N'Registro de Impuestos', N'Registro el Impuesto42', N'Abr 28 2022  2:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (180, N'Registro de Impuestos', N'Registro el Impuesto44', N'Abr 28 2022  2:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (181, N'Registro de Impuestos', N'Registro el Impuesto45', N'Abr 28 2022  2:20PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (182, N'Registro de Impuestos', N'Registro el Impuesto46', N'Abr 28 2022  2:21PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (183, N'Registro de Impuestos', N'Registro el Impuesto47', N'Abr 28 2022  2:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (184, N'Registro de Impuestos', N'Registro el Impuesto48', N'Abr 28 2022  2:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (185, N'Registro de Impuestos', N'Registro el Impuesto49', N'Abr 28 2022  2:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (186, N'Registro de Impuestos', N'Registro el Impuesto50', N'Abr 28 2022  2:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (187, N'Registro de Impuestos', N'Registro el Impuesto51', N'Abr 28 2022  2:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (188, N'Registro de Impuestos', N'Registro el Impuesto52', N'Abr 28 2022  2:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (189, N'Registro de Impuestos', N'Registro el Impuesto53', N'Abr 28 2022  2:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (190, N'Registro de Impuestos', N'Registro el Impuesto54', N'Abr 28 2022  2:47PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (191, N'Registro de Impuestos', N'Registro el Impuesto55', N'Abr 28 2022  2:49PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (192, N'Modificación de Impuestos...', N'Modifico el impuesto 55', N'Abr 28 2022  2:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (193, N'Modificación de Impuestos...', N'Modifico el impuesto 50', N'Abr 28 2022  2:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (194, N'Modificación de Impuestos...', N'Modifico el impuesto 16', N'Abr 28 2022  2:54PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (195, N'Registro de Impuestos', N'Registro el Impuesto56', N'Abr 28 2022  2:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (196, N'Modificación de Impuestos...', N'Modifico el impuesto 45', N'Abr 28 2022  2:56PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (197, N'Registro de Impuestos', N'Registro el Impuesto57', N'Abr 28 2022  2:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (198, N'Registro de Impuestos', N'Registro el Impuesto58', N'Abr 28 2022  2:58PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (199, N'Registro de Impuestos', N'Registro el Impuesto59', N'Abr 28 2022  3:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (200, N'Modificación de Impuestos...', N'Modifico el impuesto 55', N'Abr 28 2022  3:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (201, N'Registro de Impuestos', N'Registro el Impuesto60', N'Abr 28 2022  3:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (202, N'Configuración de Recibos de Cobro y multas', N'Modifico las configuraciones de Interes de multa a: 0 La multa minima a: 2.86 La maxima a: 0.00', N'Abr 28 2022  4:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (203, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Intento de inicio de Sesion Fallido...', N'Abr 28 2022  4:16PM ', N'Admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (204, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 28 2022  4:18PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (205, N'Estados de Cuenta Empresa', N'Genero estado de cuenta de la Empresa', N'Abr 28 2022  4:34PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (206, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 29 2022  8:29AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (207, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 29 2022  9:34AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (208, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 29 2022  9:36AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (243, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 30 2022  9:21AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (244, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FERRETERIA SANTA BARBARA FERRETERIA SANTA BARBARA ', N'Abr 30 2022  9:31AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (245, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:SBA TORRES EL SALVADOR S.A DE C.V SBA TORRES EL SALVADOR S.A. DE C.V.', N'Abr 30 2022  9:41AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (246, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FERRETERIA EL TABLON FERRETERIA EL TABLON', N'Abr 30 2022  9:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (247, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:SUPER TIENDA ALESSANDRA  SUPER TIENDA ALESSANDRA ', N'Abr 30 2022 10:06AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (248, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:BETYS CAKE BETYS CAKE', N'Abr 30 2022 10:17AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (249, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FARMACIA LA SALUD SUCURSAL#1 FARMACIA LA SALUD SUCURSAL#1', N'Abr 30 2022 10:36AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (250, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FARMACIA LA SALUD SUCURSAL#2 FARMACIA LA SALUD SUCURSAL#2', N'Abr 30 2022 10:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (251, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FUNERALES SAN MIGUELITO FUNERALES SAN MIGUELITO', N'Abr 30 2022 11:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (252, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:C.T.E. S.A DE C.V C.T.E. S.A DE C.V', N'Abr 30 2022 11:26AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (253, N'Edición de Datos de Empresa', N'Modifico Empresa:DIALCA S.A DE C.V DIALCA S.A DE C.V.', N'Abr 30 2022 11:37AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (254, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  2 2022  9:41AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (255, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  2 2022  9:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (256, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  2 2022 10:33AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (257, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:TELEMOVIL EL SALVADOR S.A. DE C.V. TELEMOVIL EL SALVADOR S.A. DE C.V.', N'May  2 2022 10:41AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (258, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:AQUA MARINA, S.A DE C.V AQUA MARINA, S.A DE C.V', N'May  2 2022 11:56AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (259, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:PHOENIX TOWER INTERNATIONAL ES, S.A DE C.V PHOENIX TOWER INTERNATIONAL ES, S.A DE C.V', N'May  2 2022  1:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (260, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FERRETERIA HERMANO PEDRO DE BETANCUR FERRETERIA HERMANO PEDRO DE BETANCUR', N'May  2 2022  1:33PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (261, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:ESTACION DE SERVICIO GASOLINERA EL PARAISO   ESTACION DE SERVICIO GASOLINERA EL PARAISO', N'May  2 2022  1:40PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (262, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:SUMINISTRO ENMANUEL S.A DE C.V SUMINISTRO ENMANUEL S.A DE C.V', N'May  2 2022  1:44PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (263, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto27 a la propiedad 00000000-0000/27', N'May  2 2022  1:53PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (264, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:LA CASA DEL CONSTRUCTOR  LA CASA DEL CONSTRUCTOR', N'May  2 2022  1:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (265, N'Edición:..CERTIFICACION', N'Modifico la Cuenta: CERTIFICACION con el valor $2.38', N'May  2 2022  2:16PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (266, N'Edición:..SERVICIOS DIVERSOS', N'Modifico la Cuenta: SERVICIOS DIVERSOS con el valor $0.000', N'May  2 2022  2:16PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (267, N'Edición:..FIESTAS', N'Modifico la Cuenta: FIESTAS con el valor $0.05', N'May  2 2022  2:17PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (209, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Abr 29 2022 10:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (210, N'Reporte de Empresas Generales', N'Genero el Reporte Empresas Generales', N'Abr 29 2022 10:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (211, N'Registro de Impuestos', N'Registro el Impuesto61', N'Abr 29 2022 10:57AM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (212, N'Registro de Impuestos', N'Registro el Impuesto62', N'Abr 29 2022 10:59AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (213, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:DIALCA S.A DE C.V DIALCA S.A DE C.V.', N'Abr 29 2022 11:10AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (214, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:AGROINDUSTRIA BUENAVISTA S.A DE C.V  AGROINDUSTRIA BUENAVISTA S.A DE C.V', N'Abr 29 2022 11:22AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (215, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:CAES S.A  DE C.V CAES S.A DE C.V ', N'Abr 29 2022 11:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (216, N'Registro de Impuestos', N'Registro el Impuesto63', N'Abr 29 2022 11:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (217, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto63 a la propiedad 00000000-0000/03', N'Abr 29 2022 11:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (218, N'Edición de Datos de Empresa', N'Modifico Empresa:CAES S.A  DE C.V CAES S.A DE C.V ', N'Abr 29 2022 11:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (219, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FERRETERIA SAN JOSE  FERRETERIA SAN JOSE ', N'Abr 29 2022  1:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (220, N'Edición de Datos de Empresa', N'Modifico Empresa:FERRETERIA SAN JOSE  FERRETERIA SAN JOSE ', N'Abr 29 2022  1:28PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (221, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Abr 29 2022  2:21PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (222, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Abr 29 2022  2:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (223, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Abr 29 2022  2:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (224, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: PARTIDA con el valor $2.38', N'Abr 29 2022  2:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (225, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Abr 29 2022  2:30PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (226, N'Edición:..PARTIDA', N'Modifico la Cuenta: PARTIDA con el valor $2.38', N'Abr 29 2022  2:41PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (227, N'Reporte de recibos administrativos', N'Genero el reporte de Recibos Administrativos', N'Abr 29 2022  2:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (228, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto27 a la propiedad 00000000-0000/04', N'Abr 29 2022  2:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (229, N'Edición de Datos de Empresa', N'Modifico Empresa:FERRETERIA SAN JOSE  FERRETERIA SAN JOSE ', N'Abr 29 2022  3:04PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (230, N'Modificación de Impuestos...', N'Modifico el impuesto 01', N'Abr 29 2022  3:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (231, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/04', N'Abr 29 2022  3:07PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (232, N'Modificación de Impuestos...', N'Modifico el impuesto 01', N'Abr 29 2022  3:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (233, N'Modificación de Impuestos...', N'Modifico el impuesto 01', N'Abr 29 2022  3:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (234, N'Modificación de Impuestos...', N'Modifico el impuesto 01', N'Abr 29 2022  3:14PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (235, N'Modificación de Impuestos...', N'Modifico el impuesto 01', N'Abr 29 2022  3:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (236, N'Edición de Impueto Aplicado.', N'Modifico la medida del impuesto 01 a la propiedad FERRETERIA SAN JOSE  FERRETERIA SAN JOSE  Apartir de ABRIL La nueva medida es 49.20', N'Abr 29 2022  3:16PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (237, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FARMACIA CORAZON DE MARIA  FARMACIA CORAZON DE MARIA ', N'Abr 29 2022  3:23PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (238, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:PRODUCTOS ALIMENTICIOS BOCA DELI S.A. DE C.V PRODUCTOS ALIMENTICIOS BOCA DELI S.A. DE C.V', N'Abr 29 2022  3:38PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (239, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:ESPECIES SOLIS ESPECIES SOLIS S.A DE C.V', N'Abr 29 2022  3:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (240, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FARMACIA NUEVA NESTOR Y CAROLINA  FARMACIA NESTOR S.A. DE C.V', N'Abr 29 2022  3:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (241, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:FARMACIA EL NAZARENO FARMACIA EL NAZARENO', N'Abr 29 2022  3:57PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (242, N'Registro de Nuevas Empresas', N'Registro de nueva empresa:CONSTRUTOP S.A DE C.V CONSTRUTOP S.A DE C.V', N'Abr 29 2022  4:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (268, N'Creacion de Nuevo Concepto', N'Creo el grupo PRUEBA', N'May  2 2022  2:21PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (269, N'Edición:..CERTIFICACION', N'Modifico la Cuenta: CERTIFICACION con el valor $2,38', N'May  2 2022  2:24PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (270, N'Edición:..CERTIFICACION', N'Modifico la Cuenta: CERTIFICACION con el valor $2.38', N'May  2 2022  2:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (271, N'Creacion de Nuevo Concepto', N'Creo el grupo MARIA LOPEZ', N'May  2 2022  2:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (272, N'Edición:..PARTIDA', N'Modifico la Cuenta: PARTIDA con el valor $2,38', N'May  2 2022  2:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (273, N'Modificar Conceptos', N'Mofico el grupo MARIA LOPEZ', N'May  2 2022  2:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (274, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  2 2022  2:40PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (275, N'Creacion de Nuevo Concepto', N'Creo el grupo TEST', N'May  2 2022  2:54PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (276, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  2 2022  3:05PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (277, N'Edición:..CERTIFICACION', N'Modifico la Cuenta: CERTIFICACION con el valor $2.38', N'May  2 2022  3:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (278, N'Edición:..CEMENTERIO MUNICIPAL', N'Modifico la Cuenta: CEMENTERIO MUNICIPAL con el valor $2', N'May  2 2022  3:08PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (279, N'Creacion de Nuevo Concepto', N'Creo el grupo CEMENTERIO', N'May  2 2022  3:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (280, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  3 2022  9:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (281, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/29', N'May  3 2022  9:19AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (282, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/29', N'May  3 2022  9:24AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (283, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  3 2022  9:52AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (284, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/29ADAN FLORES ', N'May  3 2022  9:56AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (285, N'Edición de Inmuebles', N'Registro de Propiedad ..00000000-0000/29FLORES', N'May  3 2022  9:57AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (286, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/29', N'May  3 2022 10:09AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (287, N'Modificación de Impuestos...', N'Modifico el impuesto 01', N'May  3 2022 10:46AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (288, N'Edición de Inmuebles', N'Modifico Propietario..ADANFLORES', N'May  3 2022 10:46AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (289, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/30', N'May  3 2022 10:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (290, N'Edición:..CEMENTERIO MUNICIPAL', N'Modifico la Cuenta: CEMENTERIO MUNICIPAL con el valor $2.38', N'May  3 2022 10:51AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (291, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Intento de inicio de Sesion Fallido...', N'May  3 2022 11:48AM ', N'Admon')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (292, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  3 2022 11:49AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (293, N'Edición de Inmuebles', N'Modifico Propietario..ADANFLORES', N'May  3 2022  1:51PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (294, N'Edición de Inmuebles', N'Modifico Propietario..ADANFLORES', N'May  3 2022  1:56PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (295, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  4 2022 11:02AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (296, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May  4 2022  1:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (297, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/30', N'May  4 2022  1:35PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (298, N'Edición de Inmuebles', N'Modifico Propietario..ADANFLORES', N'May  4 2022  2:12PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (299, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto02 a la propiedad 00000000-0000/29', N'May  4 2022  2:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (300, N'Edición de Inmuebles', N'Modifico Propietario..LILIAM ARACELYQUIJADA DE ESTRADA', N'May  4 2022  2:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (301, N'Edición de Inmuebles', N'Activacion de Contador de la propiedad..00000000-0000/30', N'May  4 2022  2:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (302, N'Edición de Inmuebles', N'Modifico Propietario..LILIAM ARACELYQUIJADA DE ESTRADA', N'May  4 2022  2:32PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (303, N'Edición de Inmuebles', N'Modifico Propietario..LILIAM ARACELYQUIJADA DE ESTRADA', N'May  4 2022  2:36PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (304, N'Edición de Inmuebles', N'Modifico Propietario..LILIAM ARACELYQUIJADA DE ESTRADA', N'May  4 2022  2:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (305, N'Edición de Inmuebles', N'Modifico Propietario..LILIAM ARACELYQUIJADA DE ESTRADA', N'May  4 2022  2:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (811, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'May 31 2022  4:29PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (812, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 12 Por el valor de $2.50', N'May 31 2022  4:31PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (813, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  1 2022  9:13AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (814, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  7 2022  5:26PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (816, N'Registro Nuevo Usuario', N'Registro el Usuario leonel Del Tipo: Administrador', N'Jun  7 2022  5:27PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (817, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun  7 2022  5:28PM ', N'leonel')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (818, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/57', N'Jun  7 2022  5:34PM ', N'leonel')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (819, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/57', N'Jun  7 2022  5:34PM ', N'leonel')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (820, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto06 a la propiedad 00000000-0000/57', N'Jun  7 2022  5:35PM ', N'leonel')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (821, N'LEONEL', N'Registro de:LEONELLOPEZ 45', N'Jun  7 2022  5:38PM ', N'leonel')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (822, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/58', N'Jun  7 2022  5:39PM ', N'leonel')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (837, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jun 10 2022  1:25PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (981, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  9:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (982, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  9:12AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (983, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 46 Por el valor de $7.80', N'Jul 10 2022  9:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (984, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 46 Por el valor de $7.80', N'Jul 10 2022  9:23AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (985, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 46 Por el valor de $7.80', N'Jul 10 2022  9:31AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (986, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 46 Por el valor de $7.80', N'Jul 10 2022  9:32AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (987, N'Cuenta Corriente Ingresos', N'Anulo el recibo 46 COn el valor de $7.80', N'Jul 10 2022  9:32AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (988, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  3:01PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (989, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  3:52PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (990, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  3:59PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (991, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  4:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (992, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  4:16PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1981, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  4:38PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1982, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  4:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1983, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  4:48PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1984, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 74 Por el valor de $2.50', N'Jul 10 2022  4:49PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1985, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 74 Por el valor de $2.50', N'Jul 10 2022  4:50PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1986, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  4:55PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1987, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 1067 Por el valor de $2.10', N'Jul 10 2022  4:56PM ', N'admin')
GO
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1988, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 1065 Por el valor de $2.10', N'Jul 10 2022  4:56PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1989, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  5:00PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1990, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  5:06PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1991, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  5:10PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1992, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  5:13PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1993, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  5:15PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2001, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 11 2022 10:28AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2002, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 11 2022 10:44AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2003, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 11 2022 11:00AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2004, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 11 2022 11:04AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2005, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 11 2022 11:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2006, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 12 2022  8:38AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2007, N'Registro de nuevas Cuentas:...', N'Creo la Cuenta: CUENTA DE PRUEBA con el valor $10', N'Jul 12 2022  9:03AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1994, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  5:20PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1995, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 1068 Por el valor de $0.53', N'Jul 10 2022  5:21PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1996, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 10 2022  5:39PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1997, N'Cobros Individuales', N'Abono el recibo 248 SERIE Y', N'Jul 10 2022  5:40PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1998, N'Cobros Individuales', N'Abono el recibo 2 SERIE 10', N'Jul 10 2022  5:42PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (1999, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 54 Por el valor de $1.80', N'Jul 10 2022  5:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2000, N'Cobros Individuales', N'Abono el recibo 181 SERIE y', N'Jul 10 2022  5:43PM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2008, N'Creacion de Nuevo Concepto', N'Creo el grupo PRUEBA DE SERVICIO', N'Jul 12 2022  9:05AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2009, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 1071 Por el valor de $0.53', N'Jul 12 2022  9:08AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2010, N'Recibo Administrativo', N'Reemprimio el recibo administrativo 1072 Por el valor de $2.10', N'Jul 12 2022  9:30AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2011, N'SAC -  Alcaldía Municipal 
VILLA EL PARAISO', N'Inicio  de Sesión:', N'Jul 12 2022  9:53AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2012, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto01 a la propiedad 00000000-0000/64', N'Jul 12 2022  9:55AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2013, N'Seleccione el impuestos que desee aplicar.', N'Aplico el impuesto05 a la propiedad 00000000-0000/64', N'Jul 12 2022  9:56AM ', N'admin')
INSERT [dbo].[Bitacora] ([id_bitacora], [Modulo], [accion], [Fecha], [Usuario]) VALUES (2014, N'LUIS', N'Registro de:LUISMARQUEZ', N'Jul 12 2022  9:56AM ', N'admin')
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (1, N'COL SANTA ELENA ', 2, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (2, N'CASERIO CERRO PARTIDO', 2, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (3, N'COL. FATIMA CASERIO CALLE NUEVA ', 2, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (4, N'CASERIO CALLE NUEVA ', 2, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (5, N'CANTON SANTA BARBARA', 2, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (6, N'CASERIO AGUA HELADA', 3, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (7, N'CASERIO EL ARENAL', 3, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (8, N'CASERIO ANGOSTURA ', 3, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (9, N'CASERIO EL TAMARINDO', 3, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (10, N'CASERIO LA COYOTERA ', 3, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (11, N'CANTON EL TABLON', 4, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (12, N'COL. SANTA FE ', 4, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (13, N'COL. LAS ARADAS ', 4, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (14, N'CASERIO LOS CRUCES ', 4, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (15, N'COL SAN LUIS 5° AVE. SUR', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (16, N'COL. LAS BRISAS', 5, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (17, N'COL. EL MILAGRO', 5, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (18, N'CANTON VALLE NUEVO ', 6, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (19, N'7° AVE. SUR ', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (20, N'AVENIDA MORAZAN ', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (21, N'CALLE EL CALVARIO', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (22, N'AVENIDA CENTRAL', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (23, N'4° CALLE PONIENTE', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (24, N'2° CALLE PONIENTE ', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (25, N'COL EL ROBLE I', 5, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (26, N'COLONIA EL ROBLE II', 5, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (27, N'3° AVENIDA NORTE ', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (28, N'1° CALLE PTE', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (29, N'5° AVENIDA NORTE', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (30, N'6° CALLE PTE ', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (31, N'3° CALLE PTE', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (32, N'1° AVENIDA SUR ', 1, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (33, N'COL LOS ANGELES ', 5, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (34, N'CASERIO LOS CORTECES CANTON VALLE NUEVO', 6, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (35, N'COL EL TRIUNFO LOS AMATES', 6, 1)
INSERT [dbo].[Colonias] ([id_colonia], [colonia], [id_zona], [activo]) VALUES (36, N'COL. EL MILAGRO CANTON VALLE NUEVO', 6, 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [edad], [f_nac], [estado_civil], [sexo], [direccion], [dui], [nit], [telefono], [experiencia], [logros], [fallos], [f_inicio], [f_registro], [cargo], [correo], [especialidad], [activo]) VALUES (1, N'ALEXI ANTONIO', N'ESCALANTE GALDAMEZ', 32, CAST(N'1990-02-01T00:00:00.000' AS DateTime), N'Soltero(a)', N'M', N'EL PARAISO, CHALATENANGO', N'00000000-0', N'0000-000000-000-0', N'2362-3462', N'', N'', N'', N'01/03/2021', N'01/03/2021', N'ALCALDE MUNICIPAL ', N'', N'LICENCIADO', 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [edad], [f_nac], [estado_civil], [sexo], [direccion], [dui], [nit], [telefono], [experiencia], [logros], [fallos], [f_inicio], [f_registro], [cargo], [correo], [especialidad], [activo]) VALUES (2, N'GRECIA ISABEL', N'ALVARENGA HERCULES ', 23, CAST(N'1990-03-03T00:00:00.000' AS DateTime), N'Soltero(a)', N'F', N'CASERIO ANGOSTURA EL PARAISO, CHALATENANGO', N'05777747-0', N'0410-150798-101-7', N'7039-7576', N'', N'', N'', N'26/04/2022', N'26/04/2022', N'CATASTRO', N'', N'LICENCIADA', 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [edad], [f_nac], [estado_civil], [sexo], [direccion], [dui], [nit], [telefono], [experiencia], [logros], [fallos], [f_inicio], [f_registro], [cargo], [correo], [especialidad], [activo]) VALUES (3, N'SONIA MARLENI', N'GALADAEZ LOPEZ ', 25, CAST(N'1996-07-11T00:00:00.000' AS DateTime), N'Soltero(a)', N'F', N'CANTON EL TABLON EL PARAISO CHALATENANGO', N'05408828-8', N'0000-000000-000-0', N'2362-3408', N'', N'', N'', N'26/04/2022', N'26/04/2022', N'INTERINA CUENTAS CORRIENTES ', N'', N'TECNICO', 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [edad], [f_nac], [estado_civil], [sexo], [direccion], [dui], [nit], [telefono], [experiencia], [logros], [fallos], [f_inicio], [f_registro], [cargo], [correo], [especialidad], [activo]) VALUES (4, N'MARLON OMAR', N'SAAVEDRA GUARDADO', 27, CAST(N'1995-03-29T00:00:00.000' AS DateTime), N'Soltero(a)', N'M', N'COL. SANTA FE ', N'05263323-1', N'0407-290395-101-5', N'7672-8270', N'', N'', N'', N'26/04/2022', N'26/04/2022', N'COLECTOR ', N'', N'TECNICO', 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [edad], [f_nac], [estado_civil], [sexo], [direccion], [dui], [nit], [telefono], [experiencia], [logros], [fallos], [f_inicio], [f_registro], [cargo], [correo], [especialidad], [activo]) VALUES (5, N'ANABEL ', N'MARTINEZ', 51, CAST(N'1970-09-27T00:00:00.000' AS DateTime), N'Soltero(a)', N'F', N'COL. EL ROBLE I EL PARAISO, CHALATENANGO ', N'01888971-9', N'0407-270970-102-4', N'2362-3402', N'', N'', N'', N'26/04/2022', N'26/04/2022', N'REGISTRO FAMILIAR ', N'', N'PROFESORA ', 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [edad], [f_nac], [estado_civil], [sexo], [direccion], [dui], [nit], [telefono], [experiencia], [logros], [fallos], [f_inicio], [f_registro], [cargo], [correo], [especialidad], [activo]) VALUES (6, N'HILDA GLADIS ', N'MARTINEZ', 59, CAST(N'1963-04-18T00:00:00.000' AS DateTime), N'Soltero(a)', N'F', N'BARRIO EL ENTRO EL PARAISO CHALATENANGO', N'01048277-5', N'0407-180463-101-0', N'2362-3400', N'', N'', N'', N'26/04/2022', N'26/04/2022', N'REGISTRO CIUDADANO', N'', N'PROFESORA ', 1)
INSERT [dbo].[Empleados] ([Id], [Nombre], [Apellido], [edad], [f_nac], [estado_civil], [sexo], [direccion], [dui], [nit], [telefono], [experiencia], [logros], [fallos], [f_inicio], [f_registro], [cargo], [correo], [especialidad], [activo]) VALUES (7, N'FRANCISCO ARMANDO ', N'MARROQUIN LEIVA ', 37, CAST(N'1985-07-05T00:00:00.000' AS DateTime), N'Soltero(a)', N'M', N'EL PARAISO CHALATENANGO', N'03036862-4', N'0000-000000-000-0', N'2362-3409', N'', N'', N'', N'26/04/2022', N'26/04/2022', N'AUXILIAR DE CATASTRO', N'', N'PROFESOR ', 1)
SET IDENTITY_INSERT [dbo].[titulo_perpetuidad] ON 

INSERT [dbo].[titulo_perpetuidad] ([id_titulo], [monto], [nombre], [edad], [oficio], [municipio_domicilio], [departamento_domicilio], [dui], [municipio_extension_dui], [departamento_extension_dui], [cementerio], [metro_ancho], [centimetro_ancho], [metro_largo], [centimetro_largo], [cantidad_construir], [tipo_construccion], [monto_construccion], [num_recibo_pago], [fecha_recibo_pago], [refrencia], [fecha_registro], [numero_titulo], [zona], [categoria_cuadro], [calle], [numero], [situado], [campo1], [campo2]) VALUES (1, 350, N'Giovanni', 30, N'Ingeniero', N'Mejicanos', N'San salvador', N'12345678-9', N'El paraiso', N'Chalatenango', N'Los ilustres', 2, 200, 3, 300, 1, N'tipo', 200, 333, CAST(N'2022-05-11' AS Date), N'ninguno', CAST(N'2022-05-11' AS Date), 123, N'casco urbano', NULL, N'el pedregal', N'3', N'el paraiso', NULL, NULL)
INSERT [dbo].[titulo_perpetuidad] ([id_titulo], [monto], [nombre], [edad], [oficio], [municipio_domicilio], [departamento_domicilio], [dui], [municipio_extension_dui], [departamento_extension_dui], [cementerio], [metro_ancho], [centimetro_ancho], [metro_largo], [centimetro_largo], [cantidad_construir], [tipo_construccion], [monto_construccion], [num_recibo_pago], [fecha_recibo_pago], [refrencia], [fecha_registro], [numero_titulo], [zona], [categoria_cuadro], [calle], [numero], [situado], [campo1], [campo2]) VALUES (2, 300, N'FRANCISCO ', 30, N'ESTUDIANTE', N'EL PARAISO ', N'CHALATENANGO', N'03030144-8', N'CHALATENANGO ', N'CHALATENANGO', N'JARDINES EL PARAISO', 1, 0, 2, 0, 3, N'CRIPTA', 0, 5555, CAST(N'2022-05-04' AS Date), N'JULIO (HERMANO) JULIA (HERMANA)', CAST(N'2022-05-03' AS Date), 55555564, N'7', N'PRIMERA CATEGORIA', N'7', N'123', N'JARDINES EL PARAISO', NULL, NULL)
SET IDENTITY_INSERT [dbo].[titulo_perpetuidad] OFF
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (4, N'admin', N'GaKFQUS2Oo92F6byJQGbEg==', N'administrador', N'00000000-0', N'administrador', N'Administrador', CAST(N'2011-11-07T00:00:00.000' AS DateTime), N'', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (5, N'CATASTRO_1', N'sgnevoy5D+/57YtwFyE3gA==', N'GRECIA ISABEL ALVARENGA HERCULES ', N'05777747-0', N'LICENCIADA', N'Administrador', CAST(N'2022-04-26T00:00:00.000' AS DateTime), N'', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (6, N'CUENTA1', N'sgnevoy5D+/57YtwFyE3gA==', N'SONIA MARLENI GALADAEZ LOPEZ ', N'05408828-8', N'TECNICO', N'Administrador', CAST(N'2022-04-26T00:00:00.000' AS DateTime), N'', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (7, N'COLECTOR_1', N'sgnevoy5D+/57YtwFyE3gA==', N'MARLON OMAR SAAVEDRA GUARDADO', N'05263323-1', N'TECNICO', N'Tesorero', CAST(N'2022-04-26T00:00:00.000' AS DateTime), N'', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1)
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (8, N'REGISTRO_FAMILIAR', N'sgnevoy5D+/57YtwFyE3gA==', N'ANABEL  MARTINEZ', N'00000000-0', N'REGISTRO FAMILIAR ', N'Catastro', CAST(N'2022-04-26T00:00:00.000' AS DateTime), N'', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1)
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (9, N'REGISTRO', N'sgnevoy5D+/57YtwFyE3gA==', N'HILDA GLADIS  MARTINEZ', N'00000000-0', N'REGISTRO_CIUDADANO ', N'Catastro', CAST(N'2022-04-26T00:00:00.000' AS DateTime), N'', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1)
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (10, N'AUXILIAR_1', N'sgnevoy5D+/57YtwFyE3gA==', N'FRANCISCO ARMANDO  MARROQUIN LEIVA ', N'03036862-4', N'AUXILIAR DE CATASTRO', N'Administrador', CAST(N'2022-04-26T00:00:00.000' AS DateTime), N'', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Users] ([Id_usuario], [Usuario], [Pass], [Nombre], [dui], [Cargo], [tipo], [Fecha_registro], [nit], [iinmuebles], [iinmuebles_dispensos], [imestadoscuenta], [imestadocuentarecagua], [irep_inmueblesconagua], [iimpresionmorososagua], [irep_general_inmuebles], [Eempresa], [iEmpresa_dispensos], [EestadocuentasEmpresa], [Erep_Empresa_general], [ccolonia], [czonas], [zrep_porcolonia], [ttributos], [trep_tributos], [trep_ingresos_tributos], [rrecibos_administrativos], [rcracioncuentas], [rrep_rec_administrativos], [rgrupos], [ggrupos], [ggeneraravisos], [IDmantenimiento], [IDimpresiondesglose], [IDCcobros], [IDcobrosAnticipados], [IDrep_ingresos_diarios], [Cacontadores], [Camedidas], [Aavisos_individuales], [Aavisos_individuales_emitidos], [AsvisosGrupales], [AvisosGrupales_emitidos], [Cusuarios], [Ctasas], [Cbitacoras], [Cconexion], [Eempleado], [Erep_empleado], [Ealcaldia], [Edatos_Alcaldia], [Erespaldos], [Ecompactar], [activo]) VALUES (11, N'leonel', N'GaKFQUS2Oo92F6byJQGbEg==', N'LEONEL LOPEZ', N'00000000-0', N'ADMINISTRADOR', N'Administrador', CAST(N'2022-06-07T00:00:00.000' AS DateTime), N'', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
SET ANSI_PADDING ON
GO
/****** Object:  Index [PK__alcaldia__3214EC0611B5EB79]    Script Date: 15/7/2022 23:28:28 ******/
ALTER TABLE [dbo].[alcaldia] ADD  CONSTRAINT [PK__alcaldia__3214EC0611B5EB79] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__Bitacora__7E4268B18A30D603]    Script Date: 15/7/2022 23:28:28 ******/
ALTER TABLE [dbo].[Bitacora] ADD  CONSTRAINT [PK__Bitacora__7E4268B18A30D603] PRIMARY KEY NONCLUSTERED 
(
	[id_bitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__Colonias__E267D3BB095285E6]    Script Date: 15/7/2022 23:28:28 ******/
ALTER TABLE [dbo].[Colonias] ADD  CONSTRAINT [PK__Colonias__E267D3BB095285E6] PRIMARY KEY NONCLUSTERED 
(
	[id_colonia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__Empleado__3214EC06A4F15418]    Script Date: 15/7/2022 23:28:28 ******/
ALTER TABLE [dbo].[Empleados] ADD  CONSTRAINT [PK__Empleado__3214EC06A4F15418] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__Users__EF59F7637FB921D0]    Script Date: 15/7/2022 23:28:28 ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [PK__Users__EF59F7637FB921D0] PRIMARY KEY NONCLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Colonias] ADD  DEFAULT ((0)) FOR [activo]
GO
ALTER TABLE [dbo].[Empleados] ADD  DEFAULT ((0)) FOR [activo]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [iinmuebles]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [iinmuebles_dispensos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [imestadoscuenta]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [imestadocuentarecagua]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [irep_inmueblesconagua]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [iimpresionmorososagua]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [irep_general_inmuebles]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Eempresa]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [iEmpresa_dispensos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [EestadocuentasEmpresa]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Erep_Empresa_general]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [ccolonia]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [czonas]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [zrep_porcolonia]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [ttributos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [trep_tributos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [trep_ingresos_tributos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [rrecibos_administrativos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [rcracioncuentas]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [rrep_rec_administrativos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [rgrupos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [ggrupos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [ggeneraravisos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IDmantenimiento]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IDimpresiondesglose]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IDCcobros]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IDcobrosAnticipados]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IDrep_ingresos_diarios]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Cacontadores]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Camedidas]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Aavisos_individuales]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Aavisos_individuales_emitidos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [AsvisosGrupales]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [AvisosGrupales_emitidos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Cusuarios]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Ctasas]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Cbitacoras]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Cconexion]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Eempleado]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Erep_empleado]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Ealcaldia]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Edatos_Alcaldia]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Erespaldos]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [Ecompactar]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [activo]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Nombre_Alcaldia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Direccion_Alcaldia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Telefono_Alcaldia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Alcalde_Alcaldia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'web'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Departamento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Municipio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'alcaldia', @level2type=N'COLUMN',@level2name=N'Jefe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'Apellido'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'edad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'f_nac'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'estado_civil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'sexo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'direccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'dui'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'nit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'telefono'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'experiencia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'logros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'fallos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'f_inicio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'f_registro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'cargo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'correo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'especialidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Empleados', @level2type=N'COLUMN',@level2name=N'activo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Id_usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Pass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'dui'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Cargo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'tipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Fecha_registro'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'nit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'iinmuebles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'iinmuebles_dispensos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'imestadoscuenta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'imestadocuentarecagua'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'irep_inmueblesconagua'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'iimpresionmorososagua'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'irep_general_inmuebles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Eempresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'iEmpresa_dispensos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'EestadocuentasEmpresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Erep_Empresa_general'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'ccolonia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'czonas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'zrep_porcolonia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'ttributos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'trep_tributos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'trep_ingresos_tributos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'rrecibos_administrativos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'rcracioncuentas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'rrep_rec_administrativos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'rgrupos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'ggrupos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'ggeneraravisos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IDmantenimiento'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'33' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IDimpresiondesglose'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'34' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IDCcobros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'35' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IDcobrosAnticipados'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'36' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IDrep_ingresos_diarios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'37' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Cacontadores'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Camedidas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'39' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Aavisos_individuales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'40' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Aavisos_individuales_emitidos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'41' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'AsvisosGrupales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'42' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'AvisosGrupales_emitidos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'43' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Cusuarios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'44' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Ctasas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'45' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Cbitacoras'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'46' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Cconexion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'47' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Eempleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'48' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Erep_empleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'49' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Ealcaldia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Edatos_Alcaldia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'51' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Erespaldos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'52' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Ecompactar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'53' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'activo'
GO
USE [master]
GO
ALTER DATABASE [cementerios_gotera] SET  READ_WRITE 
GO
