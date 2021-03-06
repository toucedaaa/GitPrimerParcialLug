USE [master]
GO
/****** Object:  Database [PrimerParcialLug]    Script Date: 28/9/2020 07:03:37 ******/
CREATE DATABASE [PrimerParcialLug]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PrimerParcialLug', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PrimerParcialLug.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PrimerParcialLug_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PrimerParcialLug_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PrimerParcialLug] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PrimerParcialLug].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PrimerParcialLug] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET ARITHABORT OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PrimerParcialLug] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PrimerParcialLug] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PrimerParcialLug] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PrimerParcialLug] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PrimerParcialLug] SET  MULTI_USER 
GO
ALTER DATABASE [PrimerParcialLug] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PrimerParcialLug] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PrimerParcialLug] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PrimerParcialLug] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PrimerParcialLug] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PrimerParcialLug] SET QUERY_STORE = OFF
GO
USE [PrimerParcialLug]
GO
/****** Object:  Table [dbo].[CONCEPTOS]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONCEPTOS](
	[IDConceptos] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Porcentaje] [int] NOT NULL,
	[TipoDePorcentaje] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CONCEPTOS] PRIMARY KEY CLUSTERED 
(
	[IDConceptos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[Legajo] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Cuil] [int] NOT NULL,
	[FechaAlta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[Legajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECIBOS]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECIBOS](
	[Legajo] [int] NOT NULL,
	[Fecha] [varchar](50) NOT NULL,
	[SueldoBruto] [int] NOT NULL,
	[SueldoNeto] [int] NOT NULL,
	[TotalDescuento] [int] NOT NULL,
	[Conceptos] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[CONCEPTOS] ([IDConceptos], [Descripcion], [Porcentaje], [TipoDePorcentaje]) VALUES (1, N'Obra Social', 10, N'Positivo')
INSERT [dbo].[CONCEPTOS] ([IDConceptos], [Descripcion], [Porcentaje], [TipoDePorcentaje]) VALUES (2, N'Gremio', 14, N'Negativo')
INSERT [dbo].[CONCEPTOS] ([IDConceptos], [Descripcion], [Porcentaje], [TipoDePorcentaje]) VALUES (3, N'IVA', 21, N'Negativo')
INSERT [dbo].[CONCEPTOS] ([IDConceptos], [Descripcion], [Porcentaje], [TipoDePorcentaje]) VALUES (4, N'Ganancias', 15, N'Positivo')
INSERT [dbo].[CONCEPTOS] ([IDConceptos], [Descripcion], [Porcentaje], [TipoDePorcentaje]) VALUES (5, N'Ganancias', 30, N'Positivo')
GO
INSERT [dbo].[EMPLEADO] ([Legajo], [Nombre], [Apellido], [Cuil], [FechaAlta]) VALUES (1, N'Juan', N'Perez', 20546395, N'28/09/2020')
INSERT [dbo].[EMPLEADO] ([Legajo], [Nombre], [Apellido], [Cuil], [FechaAlta]) VALUES (2, N'Julieta', N'Gomez', 12569781, N'28/09/2020')
INSERT [dbo].[EMPLEADO] ([Legajo], [Nombre], [Apellido], [Cuil], [FechaAlta]) VALUES (3, N'Pepe', N'Argento', 30984555, N'28/09/2020')
INSERT [dbo].[EMPLEADO] ([Legajo], [Nombre], [Apellido], [Cuil], [FechaAlta]) VALUES (4, N'Belen', N'Zelman', 50698741, N'28/09/2020')
INSERT [dbo].[EMPLEADO] ([Legajo], [Nombre], [Apellido], [Cuil], [FechaAlta]) VALUES (5, N'Lucas', N'Gomez', 40855333, N'28/09/2020')
GO
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (4, N'28/09/2020', 308, 308, 0, N'Ganancias 15% Positivo - ')
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (4, N'28/09/2020', 200, 200, 0, N'No hay conceptos aplicados en este Recibo')
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (1, N'28/09/2020', 26000, 26000, 0, N'No hay conceptos aplicados en este Recibo')
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (1, N'28/09/2020', 74750, 45708, 29042, N'Obra Social 10% Negativo - Gremio 14% Negativo - I')
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (1, N'28/09/2020', 32200, 28980, 3220, N'Obra Social 10% Negativo - Ganancias 15% Positivo ')
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (2, N'28/09/2020', 50000, 39500, 10500, N'IVA 21% Negativo - ')
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (3, N'28/09/2020', 119600, 119600, 0, N'Ganancias 15% Positivo - Ganancias 30% Positivo - ')
INSERT [dbo].[RECIBOS] ([Legajo], [Fecha], [SueldoBruto], [SueldoNeto], [TotalDescuento], [Conceptos]) VALUES (4, N'28/09/2020', 130, 130, 0, N'Ganancias 30% Positivo - ')
GO
ALTER TABLE [dbo].[RECIBOS]  WITH CHECK ADD  CONSTRAINT [FK_RECIBOS_EMPLEADO1] FOREIGN KEY([Legajo])
REFERENCES [dbo].[EMPLEADO] ([Legajo])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RECIBOS] CHECK CONSTRAINT [FK_RECIBOS_EMPLEADO1]
GO
/****** Object:  StoredProcedure [dbo].[ConceptoAlta]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConceptoAlta]
@descripcion varchar(50), @porcentaje int , @tipo varchar(50)
as
begin

declare @id int
set @id = ISNULL((Select MAX(IDConceptos)From CONCEPTOS),0)+1

Insert Into CONCEPTOS(IDConceptos,Descripcion,Porcentaje,TipoDePorcentaje) Values (@id,@descripcion,@porcentaje,@tipo)
end
GO
/****** Object:  StoredProcedure [dbo].[ConceptoBaja]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ConceptoBaja]
@id int
as
begin

Delete From CONCEPTOS Where IDConceptos= @id

end
GO
/****** Object:  StoredProcedure [dbo].[ConceptoLeer]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ConceptoLeer]
as
begin

SELECT a.IDConceptos , a.Descripcion, A.Porcentaje, a.TipoDePorcentaje
FROM CONCEPTOS a

end
GO
/****** Object:  StoredProcedure [dbo].[ConceptoModificar]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[ConceptoModificar]
@id int, @descripcion varchar(50), @porcentaje int , @tipo varchar(50)
as
begin

Update CONCEPTOS set 
Descripcion= @descripcion,
Porcentaje = @porcentaje,
TipoDePorcentaje = @tipo
Where IDConceptos = @id

end
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoAlta]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[EmpleadoAlta]
@nom varchar(50), @ape varchar(50), @cui int , @fecha varchar(50)
as
begin

declare @legajo int
set @legajo = ISNULL((Select MAX(Legajo)From EMPLEADO),0)+1

Insert Into EMPLEADO(Legajo,Nombre,Apellido,Cuil,FechaAlta) Values (@legajo,@nom,@ape,@cui,@fecha)
end
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoBaja]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[EmpleadoBaja]
@legajo int
as
begin

Delete From EMPLEADO Where Legajo = @legajo

end
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoLeer]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EmpleadoLeer]
as
begin

SELECT a.Legajo , a.Nombre , a.Apellido , a.Cuil , a.FechaAlta 
FROM EMPLEADO a

end
GO
/****** Object:  StoredProcedure [dbo].[EmpleadoModificar]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[EmpleadoModificar]
@legajo int, @nom varchar(50), @ape varchar(50), @cuil int
as
begin

Update EMPLEADO set 
Nombre = @nom,
Apellido = @ape,
Cuil = @cuil
Where Legajo = @legajo

end
GO
/****** Object:  StoredProcedure [dbo].[ReciboAlta]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[ReciboAlta]
@legajo int , @fecha varchar(50) , @sueldobruto int , @sueldoneto int, @totaldescuento int , @Conceptos varchar(50)
as
begin

Insert Into RECIBOS(Legajo,Fecha,SueldoBruto,SueldoNeto,TotalDescuento,Conceptos) Values (@legajo,@fecha,@sueldobruto,@sueldoneto,@totaldescuento,@Conceptos)
end
GO
/****** Object:  StoredProcedure [dbo].[ReciboLeer]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ReciboLeer]
@id int
as
begin

SELECT a.Legajo , a.Fecha , a.SueldoBruto , a.SueldoNeto , a.TotalDescuento , a.Conceptos
FROM RECIBOS a Where A.Legajo = @id

end
GO
/****** Object:  StoredProcedure [dbo].[ReciboLeerHistorialCompleto]    Script Date: 28/9/2020 07:03:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ReciboLeerHistorialCompleto]
as
begin

SELECT a.Legajo , a.Fecha , a.SueldoBruto , a.SueldoNeto , a.TotalDescuento , a.Conceptos
FROM RECIBOS a

end
GO
USE [master]
GO
ALTER DATABASE [PrimerParcialLug] SET  READ_WRITE 
GO
