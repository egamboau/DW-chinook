USE [master]
GO
/****** Object:  Database [Chinook_DW]    Script Date: 4/9/2016 11:11:27 AM ******/
CREATE DATABASE [Chinook_DW]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Chinook_DW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Chinook_DW.mdf' , SIZE = 102400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'Chinook_DW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Chinook_DW_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Chinook_DW] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Chinook_DW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Chinook_DW] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Chinook_DW] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Chinook_DW] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Chinook_DW] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Chinook_DW] SET ARITHABORT OFF 
GO
ALTER DATABASE [Chinook_DW] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Chinook_DW] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Chinook_DW] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Chinook_DW] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Chinook_DW] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Chinook_DW] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Chinook_DW] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Chinook_DW] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Chinook_DW] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Chinook_DW] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Chinook_DW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Chinook_DW] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Chinook_DW] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Chinook_DW] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Chinook_DW] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Chinook_DW] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Chinook_DW] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Chinook_DW] SET RECOVERY FULL 
GO
ALTER DATABASE [Chinook_DW] SET  MULTI_USER 
GO
ALTER DATABASE [Chinook_DW] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Chinook_DW] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Chinook_DW] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Chinook_DW] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Chinook_DW] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Chinook_DW', N'ON'
GO
USE [Chinook_DW]
GO
/****** Object:  Table [dbo].[DT_Album]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Album](
	[DT_AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](160) NOT NULL,
	[ref_AlbumID] [int] NOT NULL,
 CONSTRAINT [PK_DT_Album] PRIMARY KEY CLUSTERED 
(
	[DT_AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_Artist]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Artist](
	[DT_ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[ref_ArtistId] [int] NOT NULL,
 CONSTRAINT [PK_DT_Artist] PRIMARY KEY CLUSTERED 
(
	[DT_ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_BillingAddress]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_BillingAddress](
	[DT_BillingAddressID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](70) NOT NULL,
	[City] [nvarchar](40) NOT NULL,
	[State] [nvarchar](40) NOT NULL,
	[Country] [nvarchar](40) NOT NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[ref_BillingAddressID] [int] NOT NULL,
 CONSTRAINT [PK_DT_BillingAddress] PRIMARY KEY CLUSTERED 
(
	[DT_BillingAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_Customer]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Customer](
	[DT_CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[ref_CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_DT_Customer] PRIMARY KEY CLUSTERED 
(
	[DT_CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_CustomerAddress]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_CustomerAddress](
	[DT_CustomerAddressID] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](40) NOT NULL,
	[State] [nvarchar](40) NOT NULL,
	[Country] [nvarchar](40) NOT NULL,
	[PostalCode] [nvarchar](10) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
	[Fax] [nvarchar](24) NOT NULL,
	[ref_CustomerAddressID] [int] NOT NULL,
 CONSTRAINT [PK_DT_CustomerAddress] PRIMARY KEY CLUSTERED 
(
	[DT_CustomerAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_Date]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DT_Date](
	[DT_DateID] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDateUK] [char](10) NULL,
	[FullDateUSA] [char](10) NULL,
	[DayOfMonth] [varchar](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeekUSA] [char](1) NULL,
	[DayOfWeekUK] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsWeekday] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DT_DateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DT_Genre]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Genre](
	[DT_GenreID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[ref_GenreID] [int] NOT NULL,
 CONSTRAINT [PK_DT_Genre] PRIMARY KEY CLUSTERED 
(
	[DT_GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_MediaType]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_MediaType](
	[DT_MediaTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](120) NOT NULL,
	[ref_MediaTypeID] [int] NOT NULL,
 CONSTRAINT [PK_DT_MediaType] PRIMARY KEY CLUSTERED 
(
	[DT_MediaTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_Track]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Track](
	[DT_TrackID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Miliseconds] [int] NOT NULL,
	[Bytes] [int] NOT NULL,
	[ref_TrackID] [int] NOT NULL,
 CONSTRAINT [PK_DT_Track] PRIMARY KEY CLUSTERED 
(
	[DT_TrackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FT_Sales]    Script Date: 4/9/2016 11:11:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FT_Sales](
	[DT_GenreId] [int] NOT NULL,
	[DT_MediaTypeID] [int] NOT NULL,
	[DT_BillingAddressID] [int] NOT NULL,
	[DT_AlbumID] [int] NOT NULL,
	[DT_CustomerID] [int] NOT NULL,
	[DT_TrackID] [int] NOT NULL,
	[DT_CustomerAddressID] [int] NOT NULL,
	[DT_ArtistID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [int] NOT NULL,
	[DT_DateID] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_Album] FOREIGN KEY([DT_AlbumID])
REFERENCES [dbo].[DT_Album] ([DT_AlbumID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_Album]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_Artist] FOREIGN KEY([DT_ArtistID])
REFERENCES [dbo].[DT_Artist] ([DT_ArtistID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_Artist]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_BillingAddress] FOREIGN KEY([DT_BillingAddressID])
REFERENCES [dbo].[DT_BillingAddress] ([DT_BillingAddressID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_BillingAddress]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_Customer] FOREIGN KEY([DT_CustomerID])
REFERENCES [dbo].[DT_Customer] ([DT_CustomerID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_Customer]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_CustomerAddress] FOREIGN KEY([DT_CustomerAddressID])
REFERENCES [dbo].[DT_CustomerAddress] ([DT_CustomerAddressID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_CustomerAddress]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_Date] FOREIGN KEY([DT_DateID])
REFERENCES [dbo].[DT_Date] ([DT_DateID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_Date]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_Genre] FOREIGN KEY([DT_GenreId])
REFERENCES [dbo].[DT_Genre] ([DT_GenreID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_Genre]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_MediaType] FOREIGN KEY([DT_MediaTypeID])
REFERENCES [dbo].[DT_MediaType] ([DT_MediaTypeID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_MediaType]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_Track] FOREIGN KEY([DT_TrackID])
REFERENCES [dbo].[DT_Track] ([DT_TrackID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_Track]
GO
USE [master]
GO
ALTER DATABASE [Chinook_DW] SET  READ_WRITE 
GO
