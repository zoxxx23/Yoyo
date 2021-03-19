SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Control].[conection] (
		[ww]        [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[NOVO]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[NOVO2]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[NOVO3]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Control].[conection] SET (LOCK_ESCALATION = TABLE)
GO
