USE [Chinook_SA]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](160) NOT NULL,
	[ArtistId] [int] NOT NULL);

GO
/****** Object:  Table [dbo].[Artist]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL);
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Company] [nvarchar](80) NULL,
	[Address] [nvarchar](70) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[Email] [nvarchar](60) NOT NULL;
	--[SupportRepId] [int] NULL);

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20/02/2016 08:30:13 p.m. ******/
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int]  NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[Title] [nvarchar](30) NULL,
	[ReportsTo] [int] NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[Address] [nvarchar](70) NULL,
	[City] [nvarchar](40) NULL,
	[State] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[PostalCode] [nvarchar](10) NULL,
	[Phone] [nvarchar](24) NULL,
	[Fax] [nvarchar](24) NULL,
	[Email] [nvarchar](60) NULL);

GO*/
/****** Object:  Table [dbo].[Genre]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NULL);
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int]  NOT NULL,
	[CustomerId] [int] NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[BillingAddress] [nvarchar](70) NULL,
	[BillingCity] [nvarchar](40) NULL,
	[BillingState] [nvarchar](40) NULL,
	[BillingCountry] [nvarchar](40) NULL,
	[BillingPostalCode] [nvarchar](10) NULL,
	[Total] [numeric](10, 2) NOT NULL);
GO
/****** Object:  Table [dbo].[InvoiceLine]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceLine](
	[InvoiceLineId] [int]  NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[TrackId] [int] NOT NULL,
	[UnitPrice] [numeric](10, 2) NOT NULL,
	[Quantity] [int] NOT NULL);
GO
/****** Object:  Table [dbo].[MediaType]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediaType](
	[MediaTypeId] [int] NOT NULL,
	[Name] [nvarchar](120) NULL);
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 20/02/2016 08:30:13 p.m. ******/
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[PlaylistId] [int]  NOT NULL,
	[Name] [nvarchar](120) NULL);
GO*/
/****** Object:  Table [dbo].[PlaylistTrack]    Script Date: 20/02/2016 08:30:13 p.m. ******/
/*SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaylistTrack](
	[PlaylistId] [int] NOT NULL,
	[TrackId] [int] NOT NULL);
GO*/
/****** Object:  Table [dbo].[Track]    Script Date: 20/02/2016 08:30:13 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[TrackId] [int]  NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[AlbumId] [int] NULL,
	[MediaTypeId] [int] NOT NULL,
	[GenreId] [int] NULL,
	--[Composer] [nvarchar](220) NULL,
	[Milliseconds] [int] NOT NULL,
	[Bytes] [int] NULL,
	[UnitPrice] [numeric](10, 2) NOT NULL);
GO