SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HasIndexx] (
		[PersonId]      [int] NOT NULL,
		[LastName]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FirstName]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]           [int] NULL,
		CONSTRAINT [PK__HasIndex__AA2FFBE5F680A8CD]
		PRIMARY KEY
		CLUSTERED
		([PersonId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Index000]
	ON [dbo].[HasIndexx] ([PersonId])
	ON [PRIMARY]
 	WITH ( FILLFACTOR = 4)
GO
ALTER TABLE [dbo].[HasIndexx] SET (LOCK_ESCALATION = TABLE)
GO
