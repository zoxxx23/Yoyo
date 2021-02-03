USE [TESTBre]
GO

/****** Object:  Table [dbo].[TestANSITable]    Script Date: 2/3/2021 2:45:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE TABLE [dbo].[TestANSITable] (
		[1col]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[2col]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[3col]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
