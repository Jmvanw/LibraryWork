USE [master]
GO
/****** Object:  Database [dbOregonLibrary]    Script Date: 3/8/2017 4:32:26 PM ******/
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
/****** Object:  Table [dbo].[BOOK_AUTHORS]    Script Date: 3/8/2017 4:32:26 PM ******/
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
/****** Object:  Table [dbo].[BOOK_COPIES]    Script Date: 3/8/2017 4:32:26 PM ******/
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
/****** Object:  Table [dbo].[BOOK_LOANS]    Script Date: 3/8/2017 4:32:26 PM ******/
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
/****** Object:  Table [dbo].[BOOKS]    Script Date: 3/8/2017 4:32:26 PM ******/
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
/****** Object:  Table [dbo].[BORROWER]    Script Date: 3/8/2017 4:32:26 PM ******/
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
/****** Object:  Table [dbo].[LIBRARY_BRANCH]    Script Date: 3/8/2017 4:32:26 PM ******/
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
/****** Object:  Table [dbo].[PUBLISHER]    Script Date: 3/8/2017 4:32:26 PM ******/
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
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (1, N'Harper Lee')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (2, N'Robert Musil ')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (3, N'Stephen Chbosky')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (4, N'Gabriel Garcí­a Márquez')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (5, N'Dave Eggers')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (6, N'Nick Flynn')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (7, N'Anthony Burgess')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (8, N'Neil Gaiman')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (9, N'Stephen Colbert')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (10, N'John Kennedy Toole')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (11, N'Tony Perez-Giese')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (12, N'Aldous Huxley')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (13, N'Cormac McCarthy')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (14, N'Stephen King')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (15, N'Stephen King')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (16, N'John Steinbeck')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (17, N'David Markson')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (18, N'Dodie Smith')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (19, N'John le Carré')
INSERT [dbo].[BOOK_AUTHORS] ([BookID], [AuthorName]) VALUES (20, N'Joseph Heller')
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (1, 1, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (2, 1, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (3, 1, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (4, 1, 5)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (5, 1, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (6, 1, 5)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (7, 1, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (8, 1, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (9, 1, 5)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (10, 1, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (11, 1, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (12, 1, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (13, 1, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (14, 1, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (15, 1, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (16, 1, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (17, 1, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (18, 1, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (19, 1, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (20, 1, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (1, 2, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (2, 2, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (3, 2, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (4, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (5, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (6, 2, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (7, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (8, 2, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (9, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (10, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (11, 2, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (12, 2, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (13, 2, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (14, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (15, 2, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (16, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (17, 2, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (18, 2, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (19, 2, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (20, 2, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (1, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (2, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (3, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (4, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (5, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (6, 3, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (7, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (8, 3, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (9, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (10, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (11, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (12, 3, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (13, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (14, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (15, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (16, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (17, 3, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (18, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (19, 3, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (20, 3, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (1, 4, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (2, 4, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (3, 4, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (4, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (5, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (6, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (7, 4, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (8, 4, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (9, 4, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (10, 4, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (11, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (12, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (13, 4, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (14, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (15, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (16, 4, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (17, 4, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (18, 4, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (19, 4, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (20, 4, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (1, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (2, 5, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (3, 5, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (4, 5, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (5, 5, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (6, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (7, 5, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (8, 5, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (9, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (10, 5, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (11, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (12, 5, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (13, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (14, 5, 3)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (15, 5, 2)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (16, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (17, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (18, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (19, 5, 4)
INSERT [dbo].[BOOK_COPIES] ([BookID], [BranchID], [Number_Of_Copies]) VALUES (20, 5, 4)
GO
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (3, 4, 52685343, CAST(N'2016-04-14' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (16, 5, 551541389, CAST(N'2016-07-25' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (4, 5, 76366001, CAST(N'2016-07-15' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (12, 4, 369871170, CAST(N'2016-07-09' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (15, 4, 369871170, CAST(N'2016-07-12' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (9, 1, 548686387, CAST(N'2016-07-04' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (7, 4, 369871170, CAST(N'2016-07-19' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (16, 3, 551541389, CAST(N'2016-07-12' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (1, 5, 2681496, CAST(N'2016-07-14' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (20, 2, 76366001, CAST(N'2016-07-21' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (3, 1, 650440538, CAST(N'2016-07-16' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (3, 4, 43353768, CAST(N'2016-07-15' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (11, 3, 2681496, CAST(N'2016-07-20' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (15, 2, 369871170, CAST(N'2016-07-08' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (1, 3, 33261224, CAST(N'2016-07-06' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (17, 2, 548686387, CAST(N'2016-07-08' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (10, 4, 548686387, CAST(N'2016-07-23' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (10, 3, 650440538, CAST(N'2016-07-15' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (16, 4, 68999626, CAST(N'2016-07-17' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (12, 4, 548686387, CAST(N'2016-07-20' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (15, 1, 68999626, CAST(N'2016-07-10' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (12, 3, 76366001, CAST(N'2016-07-11' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (17, 3, 33261224, CAST(N'2016-07-21' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (8, 1, 548686387, CAST(N'2016-07-10' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (5, 1, 33261224, CAST(N'2016-07-21' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (12, 4, 551541389, CAST(N'2016-07-21' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (5, 4, 551541389, CAST(N'2016-07-09' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (7, 5, 33261224, CAST(N'2016-07-03' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (18, 4, 33261224, CAST(N'2016-07-25' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (3, 2, 33261224, CAST(N'2016-07-13' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (15, 1, 68999626, CAST(N'2016-07-02' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (11, 5, 548686387, CAST(N'2016-07-21' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (1, 4, 548686387, CAST(N'2016-07-26' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (20, 3, 650440538, CAST(N'2016-07-22' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (16, 1, 52685343, CAST(N'2016-07-19' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (3, 4, 33261224, CAST(N'2016-07-11' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (19, 4, 548686387, CAST(N'2016-07-22' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (15, 1, 650440538, CAST(N'2016-07-08' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (17, 1, 548686387, CAST(N'2016-07-14' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (3, 5, 548686387, CAST(N'2016-07-14' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (18, 4, 33261224, CAST(N'2016-07-13' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (6, 2, 52685343, CAST(N'2016-07-09' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (17, 1, 551541389, CAST(N'2016-07-25' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (17, 4, 551541389, CAST(N'2016-07-18' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (17, 5, 76366001, CAST(N'2016-07-26' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (18, 1, 43353768, CAST(N'2016-07-05' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (11, 2, 68999626, CAST(N'2016-07-12' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (11, 3, 43353768, CAST(N'2016-07-27' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (13, 3, 43353768, CAST(N'2016-07-26' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (19, 5, 33261224, CAST(N'2016-07-20' AS Date))
INSERT [dbo].[BOOK_LOANS] ([BookID], [BranchID], [CardNO], [DateOut]) VALUES (5, 2, 551541389, CAST(N'2016-07-16' AS Date))
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (1, N'To Kill a Mockingbird', N'Publication Study')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (2, N'The Man Without Qualities', N'Publication Study')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (3, N'The Lost Tribe', N'Publication Study')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (4, N'One Hundred Years of Solitude', N'Publication Study')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (5, N'A Heartbreaking Work of Staggering Genius', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (6, N'Another Bullshit Night in Suck City', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (7, N'A Clockwork Orange', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (8, N'Neverwhere', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (9, N'I Am America', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (10, N'A Confederacy of Dunces', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (11, N'Send More Idiots', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (12, N'Brave New World', N'Macrocosm Publishing')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (13, N'No Country For Old Men', N'Macrocosm Publishing')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (14, N'The Gunslinger', N'Macrocosm Publishing')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (15, N'Full Dark, No Stars', N'Publication Study')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (16, N'Of Mice and Men', N'Publication Study')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (17, N'This Is Not a Novel', N'Macrocosm Publishing')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (18, N'I Capture the Castle', N'Macrocosm Publishing')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (19, N'Tinker, Tailor, Soldier, Spy', N'Taverns Book')
INSERT [dbo].[BOOKS] ([BookID], [Title], [PublisherName]) VALUES (20, N'Catch-22', N'Macrocosm Publishing')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (2681496, N'Gregory Brooks', N'43 Monica Lane', N'6068948244')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (33261224, N'Michelle Gibson', N'44565 Northview Plaza', N'6905484980')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (43353768, N'Jacqueline Reed', N'275 Dayton Lane', N'7573879017')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (52685343, N'Antonio Gutierrez', N'77 Miller Place', N'5548093273')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (68999626, N'Cynthia Duncan', N'411 Debra Point', N'8132978685')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (76366001, N'Rose Butler', N'774 Lawn Terrace', N'7251885914')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (369111170, N'Bill Harrison', N'57639 Hintze Court', N'8988272131')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (369871170, N'Irene Harrison', N'57639 Hintze Court', N'8988272131')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (548686387, N'Craig Fields', N'652 New Castle Place', N'2123455675')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (551541389, N'Paul Mcdonald', N'18222 2nd Place', N'9341840691')
INSERT [dbo].[BORROWER] ([CardNo], [Name], [Address], [Phone]) VALUES (650440538, N'Terry Wheeler', N'682 Service Lane', N'1532331297')
INSERT [dbo].[LIBRARY_BRANCH] ([BranchID], [BranchName], [Address]) VALUES (1, N'Sharpstown', N'83 Summer Ridge Way')
INSERT [dbo].[LIBRARY_BRANCH] ([BranchID], [BranchName], [Address]) VALUES (2, N'Dullstown', N'2 Schlimgen Road')
INSERT [dbo].[LIBRARY_BRANCH] ([BranchID], [BranchName], [Address]) VALUES (3, N'Central', N'351 Union Parkway')
INSERT [dbo].[LIBRARY_BRANCH] ([BranchID], [BranchName], [Address]) VALUES (4, N'Western', N'4 Corben Junction')
INSERT [dbo].[LIBRARY_BRANCH] ([BranchID], [BranchName], [Address]) VALUES (5, N'Eastern', N'6566 Bultman Court')
INSERT [dbo].[PUBLISHER] ([PublisherName], [Address], [Phone]) VALUES (N'Macrocosm Publishing', N'8 Drewry Court', N'5032113666')
INSERT [dbo].[PUBLISHER] ([PublisherName], [Address], [Phone]) VALUES (N'Publication Study', N'6367 Caliangt Drive', N'5033622702')
INSERT [dbo].[PUBLISHER] ([PublisherName], [Address], [Phone]) VALUES (N'Taverns Book', N'7394 Donald Pass', N'5038977043')
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
