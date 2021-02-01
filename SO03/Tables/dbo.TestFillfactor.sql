SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestFillfactor] (
		[PersonId]      [int] NOT NULL,
		[LastName]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FirstName]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]           [int] NULL,
		CONSTRAINT [PK__TestFill__AA2FFBE5CDA3FB5A]
		PRIMARY KEY
		CLUSTERED
		([PersonId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IndexBRE]
	ON [dbo].[TestFillfactor] ([PersonId])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestFillfactor] SET (LOCK_ESCALATION = TABLE)
GO
