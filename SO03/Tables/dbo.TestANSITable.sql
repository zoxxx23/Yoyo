CREATE TABLE [dbo].[TestANSITable] (
		[1col]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[2col]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[3col]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestANSITable] SET (LOCK_ESCALATION = TABLE)
GO
