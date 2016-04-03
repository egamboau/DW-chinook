USE [Chinook_DW]
GO
/****** Object:  Table [dbo].[DT_Album]    Script Date: 4/3/2016 1:11:33 PM ******/
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
/****** Object:  Table [dbo].[DT_Artist]    Script Date: 4/3/2016 1:11:33 PM ******/
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
/****** Object:  Table [dbo].[DT_BillingAddress]    Script Date: 4/3/2016 1:11:33 PM ******/
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
/****** Object:  Table [dbo].[DT_Customer]    Script Date: 4/3/2016 1:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Customer](
	[DT_Customer_ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[ref_CustomerID] [int] NOT NULL,
 CONSTRAINT [PK_DT_Customer] PRIMARY KEY CLUSTERED 
(
	[DT_Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_CustomerAddress]    Script Date: 4/3/2016 1:11:33 PM ******/
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
/****** Object:  Table [dbo].[DT_Genre]    Script Date: 4/3/2016 1:11:33 PM ******/
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
/****** Object:  Table [dbo].[DT_MediaType]    Script Date: 4/3/2016 1:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_MediaType](
	[DT_MediaTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](120) NOT NULL,
	[red_MediaTypeID] [int] NOT NULL,
 CONSTRAINT [PK_DT_MediaType] PRIMARY KEY CLUSTERED 
(
	[DT_MediaTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_Track]    Script Date: 4/3/2016 1:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Track](
	[DT_TrackID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Miliseconds] [int] NOT NULL,
	[Bytes] [int] NOT NULL,
	[red_TrackID] [int] NOT NULL,
 CONSTRAINT [PK_DT_Track] PRIMARY KEY CLUSTERED 
(
	[DT_TrackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FT_Sales]    Script Date: 4/3/2016 1:11:33 PM ******/
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
	[price] [int] NOT NULL
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
REFERENCES [dbo].[DT_Customer] ([DT_Customer_ID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_Customer]
GO
ALTER TABLE [dbo].[FT_Sales]  WITH CHECK ADD  CONSTRAINT [FK_FT_Sales_DT_CustomerAddress] FOREIGN KEY([DT_CustomerAddressID])
REFERENCES [dbo].[DT_CustomerAddress] ([DT_CustomerAddressID])
GO
ALTER TABLE [dbo].[FT_Sales] CHECK CONSTRAINT [FK_FT_Sales_DT_CustomerAddress]
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
