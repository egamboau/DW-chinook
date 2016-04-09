SELECT [DT_GenreId] = ISNULL(DW_G.DT_GenreID, -1)
      ,[DT_MediaTypeID] = ISNULL(DW_MT.DT_MediaTypeID, -1)
      ,[DT_BillingAddressID] = ISNULL(DW_BA.DT_BillingAddressID, -1)
      ,[DT_AlbumID] = ISNULL (DW_A.DT_AlbumID, -1)
      ,[DT_CustomerID] = ISNULL(DW_C.DT_CustomerID, -1)
      ,[DT_TrackID] = ISNULL(DW_T.DT_TrackID, -1)
      ,[DT_CustomerAddressID] = ISNULL(DW_CA.DT_CustomerAddressID, -1)
      ,[DT_ArtistID] = ISNULL(DW_AR.DT_ArtistID, -1)
      ,[quantity] = ISNULL(SA_IL.Quantity, 0)
      ,[price] = ISNULL(SA_IL.UnitPrice, 0)
      ,[DT_DateID] = ISNULL(DW_D.DT_DateID, -1)
-- Transaction
FROM [Chinook_SA].[dbo].[Invoice] SA_I
JOIN [Chinook_SA].[dbo].[Customer] SA_C
	ON SA_I.CustomerId = SA_C.CustomerId
JOIN [Chinook_SA].[dbo].[InvoiceLine] SA_IL
	ON SA_I.InvoiceId = SA_IL.InvoiceId
JOIN [Chinook_SA].[dbo].[Track] SA_T
	ON SA_T.TrackId = SA_IL.TrackId
JOIN [Chinook_SA].[dbo].[Genre] SA_G
	ON SA_G.GenreId = SA_T.GenreId
JOIN [Chinook_SA].[dbo].[MediaType] SA_MT
	ON SA_MT.MediaTypeId = SA_T.MediaTypeId
JOIN [Chinook_SA].[dbo].[Album] SA_A
	ON SA_T.AlbumId = SA_A.AlbumId
JOIN [Chinook_SA].[dbo].[Artist] SA_AR
	ON SA_AR.ArtistId = SA_A.ArtistId
-------------------------------------------
--Datawarehouse
LEFT JOIN [Chinook_DW].[dbo].[DT_Genre] DW_G 
	ON DW_G.ref_GenreID = SA_G.GenreId
LEFT JOIN [Chinook_DW].[dbo].[DT_MediaType] DW_MT
	ON DW_MT.ref_MediaTypeID = SA_MT.MediaTypeId
LEFT JOIN [Chinook_DW].[dbo].[DT_BillingAddress] DW_BA
	ON DW_BA.ref_BillingAddressID = SA_I.InvoiceId
LEFT JOIN [Chinook_DW].[dbo].[DT_Album] DW_A
	ON DW_A.ref_AlbumID = SA_A.AlbumId
LEFT JOIN [Chinook_DW].[dbo].[DT_Customer] DW_C
	ON DW_C.ref_CustomerID = SA_C.CustomerId
LEFT JOIN [Chinook_DW].[dbo].[DT_Track] DW_T
	ON DW_T.ref_TrackID = SA_T.TrackId
LEFT JOIN [Chinook_DW].[dbo].[DT_CustomerAddress] DW_CA
	ON DW_CA.ref_CustomerAddressID = SA_C.CustomerId
LEFT JOIN [Chinook_DW].[dbo].[DT_Artist] DW_AR
	ON DW_AR.ref_ArtistId = SA_AR.ArtistId
LEFT JOIN [Chinook_DW].[dbo].[DT_Date] DW_D
	ON DW_D.Date = SA_I.InvoiceDate