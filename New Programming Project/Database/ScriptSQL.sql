USE [master]
GO
/****** Object:  Database [NewProgrammingProject]    Script Date: 8/8/2024 6:35:30 PM ******/
CREATE DATABASE [NewProgrammingProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewProgrammingProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NewProgrammingProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewProgrammingProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NewProgrammingProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NewProgrammingProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewProgrammingProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewProgrammingProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewProgrammingProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewProgrammingProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NewProgrammingProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewProgrammingProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET RECOVERY FULL 
GO
ALTER DATABASE [NewProgrammingProject] SET  MULTI_USER 
GO
ALTER DATABASE [NewProgrammingProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewProgrammingProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewProgrammingProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewProgrammingProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewProgrammingProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NewProgrammingProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'NewProgrammingProject', N'ON'
GO
ALTER DATABASE [NewProgrammingProject] SET QUERY_STORE = OFF
GO
USE [NewProgrammingProject]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 8/8/2024 6:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Subject] [varchar](100) NULL,
	[Message] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/8/2024 6:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[cedula] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[contrasena] [nvarchar](50) NULL,
	[LastLogin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[GetUserDetails]    Script Date: 8/8/2024 6:35:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserDetails]
    @UserName NVARCHAR(50)
AS
BEGIN
    SELECT nombre, correo, contrasena
    FROM Usuario
    WHERE nombre = @UserName;
END;
GO
USE [master]
GO
ALTER DATABASE [NewProgrammingProject] SET  READ_WRITE 
GO
