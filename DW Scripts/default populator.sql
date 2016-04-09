IF NOT EXISTS (SELECT [DT_AlbumID] FROM [dbo].[DT_Album] WHERE [DT_AlbumID] = -1)
BEGIN

SET IDENTITY_INSERT [dbo].[DT_Album] ON;

INSERT INTO [dbo].[DT_Album] ([DT_AlbumID], [Title], [ref_AlbumID])
	VALUES (-1, 'n/a', -1)

SET IDENTITY_INSERT [dbo].[DT_Album] OFF;
END

-----------------------------------------------------------------------

IF NOT EXISTS (SELECT [DT_ArtistID] FROM [dbo].[DT_Artist] WHERE [DT_ArtistID] = -1)
BEGIN

SET IDENTITY_INSERT [dbo].[DT_Artist] ON;

INSERT INTO [dbo].[DT_Artist]
           ([DT_ArtistID]
		   ,[Name]
           ,[ref_ArtistId])
     VALUES
           (-1,'n/a',
           -1)

SET IDENTITY_INSERT [dbo].[DT_Artist] OFF;
END
----------------------------------------------------------------------

IF NOT EXISTS (SELECT [DT_BillingAddressID] FROM [dbo].[DT_BillingAddress] WHERE [DT_BillingAddressID] = -1)
BEGIN

SET IDENTITY_INSERT [dbo].[DT_BillingAddress] ON;

INSERT INTO [dbo].[DT_BillingAddress]
           ([DT_BillingAddressID]
		   ,[Address]
           ,[City]
           ,[State]
           ,[Country]
           ,[PostalCode]
           ,[ref_BillingAddressID])
     VALUES
           (-1, 'n/a'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,-1)

SET IDENTITY_INSERT [dbo].[DT_BillingAddress] OFF;
END

-------------------------------------------------------------------------------

IF NOT EXISTS (SELECT [DT_CustomerID] FROM [dbo].[DT_Customer] WHERE [DT_CustomerID] = -1)
BEGIN

SET IDENTITY_INSERT [dbo].[DT_Customer] ON;

INSERT INTO [dbo].[DT_Customer]
           ([DT_CustomerID]
		   ,[FirstName]
           ,[LastName]
           ,[Email]
           ,[ref_CustomerID])
     VALUES
           (-1, 'n/a'
           ,'n/a'
           ,'n/a'
           ,-1)

SET IDENTITY_INSERT [dbo].[DT_Customer] OFF;
END
-----------------------------------------------------------------------------


IF NOT EXISTS (SELECT [DT_CustomerAddressID] FROM [dbo].[DT_CustomerAddress] WHERE [DT_CustomerAddressID] = -1)
BEGIN

SET IDENTITY_INSERT  [dbo].[DT_CustomerAddress] ON;

INSERT INTO [dbo].[DT_CustomerAddress]
           ([DT_CustomerAddressID]
		   ,[City]
           ,[State]
           ,[Country]
           ,[PostalCode]
           ,[Phone]
           ,[Fax]
           ,[ref_CustomerAddressID])
     VALUES
           (-1, 'n/a'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,-1)

SET IDENTITY_INSERT  [dbo].[DT_CustomerAddress] OFF;
END

-------------------------------------------------------------------------

IF NOT EXISTS (SELECT [DT_DateID] FROM [dbo].[DT_Date] WHERE [DT_DateID] = -1)
BEGIN
INSERT INTO [dbo].[DT_Date]
           ([DT_DateID]
           ,[Date]
           ,[FullDateUK]
           ,[FullDateUSA]
           ,[DayOfMonth]
           ,[DaySuffix]
           ,[DayName]
           ,[DayOfWeekUSA]
           ,[DayOfWeekUK]
           ,[DayOfWeekInMonth]
           ,[DayOfWeekInYear]
           ,[DayOfQuarter]
           ,[DayOfYear]
           ,[WeekOfMonth]
           ,[WeekOfQuarter]
           ,[WeekOfYear]
           ,[Month]
           ,[MonthName]
           ,[MonthOfQuarter]
           ,[Quarter]
           ,[QuarterName]
           ,[Year]
           ,[YearName]
           ,[MonthYear]
           ,[MMYYYY]
           ,[FirstDayOfMonth]
           ,[LastDayOfMonth]
           ,[FirstDayOfQuarter]
           ,[LastDayOfQuarter]
           ,[FirstDayOfYear]
           ,[LastDayOfYear]
           ,[IsWeekday])
     VALUES
           (-1
           ,'1-1-1753'
           ,'n/a'
           ,'n/a'
           ,'na'
           ,'n/a'
           ,'n/a'
           ,'n'
           ,'n'
           ,'na'
           ,'na'
           ,'n/a'
           ,'n/a'
           ,'n'
           ,'na'
           ,'ns'
           ,'na'
           ,'n/a'
           ,'na'
           ,'n'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,'n/a'
           ,'1-1-1753'
           ,'1-1-1753'
           ,'1-1-1753'
           ,'1-1-1753'
           ,'1-1-1753'
           ,'1-1-1753'
           ,0)
END
---------------------------------------------------------------------------

IF NOT EXISTS (SELECT [DT_GenreID] FROM [dbo].[DT_Genre] WHERE [DT_GenreID] = -1)
BEGIN

SET IDENTITY_INSERT [dbo].[DT_Genre] ON;

INSERT INTO [dbo].[DT_Genre]
           ([DT_GenreID]
		   ,[Name]
           ,[ref_GenreID])
     VALUES
           (-1, 'n/a',
           -1)

SET IDENTITY_INSERT [dbo].[DT_Genre] OFF;
END

-------------------------------------------------------------------------------------
IF NOT EXISTS (SELECT [DT_MediaTypeID] FROM [dbo].[DT_MediaType] WHERE [DT_MediaTypeID] = -1)
BEGIN

SET IDENTITY_INSERT [dbo].[DT_MediaType] ON;

INSERT INTO [dbo].[DT_MediaType]
           ([DT_MediaTypeID]
		   ,[Name]
           ,[ref_MediaTypeID])
     VALUES
           (-1 ,'n/a'
           ,-1)

SET IDENTITY_INSERT [dbo].[DT_MediaType] OFF;
END
-------------------------------------------------------------------------------------------

IF NOT EXISTS (SELECT [DT_TrackID] FROM [dbo].[DT_Track] WHERE [DT_TrackID] = -1)
BEGIN

SET IDENTITY_INSERT [dbo].[DT_Track] ON;

INSERT INTO [dbo].[DT_Track]
           ([DT_TrackID]
		   ,[Name]
           ,[Miliseconds]
           ,[Bytes]
           ,[ref_TrackID])
     VALUES
           (-1, 'n/a'
           ,-1
           ,-1
           ,-1)
SET IDENTITY_INSERT [dbo].[DT_Track] OFF;
END

