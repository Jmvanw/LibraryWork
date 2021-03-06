USE [master]
GO
/****** Object:  Database [dbOregonLibrary]    Script Date: 3/18/2017 1:20:35 PM ******/
CREATE DATABASE [dbOregonLibrary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbOregonLibrary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbOregonLibrary.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbOregonLibrary_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\dbOregonLibrary_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbOregonLibrary] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbOregonLibrary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbOregonLibrary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dbOregonLibrary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbOregonLibrary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbOregonLibrary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbOregonLibrary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbOregonLibrary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET RECOVERY FULL 
GO
ALTER DATABASE [dbOregonLibrary] SET  MULTI_USER 
GO
ALTER DATABASE [dbOregonLibrary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbOregonLibrary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbOregonLibrary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbOregonLibrary] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbOregonLibrary', N'ON'
GO
USE [dbOregonLibrary]
GO
/****** Object:  Table [dbo].[BOOK_AUTHORS]    Script Date: 3/18/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOK_AUTHORS](
	[BookID] [int] NOT NULL,
	[AuthorName] [varchar](150) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOOK_COPIES]    Script Date: 3/18/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_COPIES](
	[BookID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[Number_Of_Copies] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOOK_LOANS]    Script Date: 3/18/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_LOANS](
	[BookID] [int] NOT NULL,
	[BranchID] [int] NOT NULL,
	[CardNO] [int] NOT NULL,
	[DateOut] [date] NOT NULL,
	[DateDue]  AS (dateadd(month,(1),[DateOut]))
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BOOKS]    Script Date: 3/18/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOOKS](
	[BookID] [int] NOT NULL,
	[Title] [varchar](150) NULL,
	[PublisherName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BORROWER]    Script Date: 3/18/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BORROWER](
	[CardNo] [int] NOT NULL,
	[Name] [varchar](150) NULL,
	[Address] [varchar](150) NULL,
	[Phone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[CardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LIBRARY_BRANCH]    Script Date: 3/18/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LIBRARY_BRANCH](
	[BranchID] [int] NOT NULL,
	[BranchName] [varchar](150) NULL,
	[Address] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PUBLISHER]    Script Date: 3/18/2017 1:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PUBLISHER](
	[PublisherName] [varchar](150) NOT NULL,
	[Address] [varchar](150) NULL,
	[Phone] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[PublisherName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BOOK_AUTHORS]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[BOOKS] ([BookID])
GO
ALTER TABLE [dbo].[BOOK_COPIES]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[BOOKS] ([BookID])
GO
ALTER TABLE [dbo].[BOOK_COPIES]  WITH CHECK ADD FOREIGN KEY([BranchID])
REFERENCES [dbo].[LIBRARY_BRANCH] ([BranchID])
GO
ALTER TABLE [dbo].[BOOK_LOANS]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[BOOKS] ([BookID])
GO
ALTER TABLE [dbo].[BOOK_LOANS]  WITH CHECK ADD FOREIGN KEY([BranchID])
REFERENCES [dbo].[LIBRARY_BRANCH] ([BranchID])
GO
ALTER TABLE [dbo].[BOOK_LOANS]  WITH CHECK ADD FOREIGN KEY([CardNO])
REFERENCES [dbo].[BORROWER] ([CardNo])
GO
ALTER TABLE [dbo].[BOOKS]  WITH CHECK ADD FOREIGN KEY([PublisherName])
REFERENCES [dbo].[PUBLISHER] ([PublisherName])
GO
USE [master]
GO
ALTER DATABASE [dbOregonLibrary] SET  READ_WRITE 
GO
