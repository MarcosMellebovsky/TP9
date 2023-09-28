USE [master]
GO
/****** Object:  Database [BD-TP9]    Script Date: 28/9/2023 15:21:39 ******/
CREATE DATABASE [BD-TP9]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD-TP9', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD-TP9.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD-TP9_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BD-TP9_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BD-TP9] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD-TP9].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD-TP9] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD-TP9] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD-TP9] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD-TP9] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD-TP9] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD-TP9] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD-TP9] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD-TP9] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD-TP9] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD-TP9] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD-TP9] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD-TP9] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD-TP9] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD-TP9] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD-TP9] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD-TP9] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD-TP9] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD-TP9] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD-TP9] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD-TP9] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD-TP9] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD-TP9] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD-TP9] SET RECOVERY FULL 
GO
ALTER DATABASE [BD-TP9] SET  MULTI_USER 
GO
ALTER DATABASE [BD-TP9] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD-TP9] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD-TP9] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD-TP9] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD-TP9] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD-TP9', N'ON'
GO
ALTER DATABASE [BD-TP9] SET QUERY_STORE = OFF
GO
USE [BD-TP9]
GO
/****** Object:  User [alumno]    Script Date: 28/9/2023 15:21:39 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/9/2023 15:21:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [BD-TP9] SET  READ_WRITE 
GO
