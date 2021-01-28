SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HasIdentity] (
		[PersonId]      [int] IDENTITY(1, 1) NOT NULL,
		[LastName]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FirstName]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]           [int] NULL,
		CONSTRAINT [PK__HasIdent__AA2FFBE59F15D37A]
		PRIMARY KEY
		CLUSTERED
		([PersonId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HasIdentity] SET (LOCK_ESCALATION = TABLE)
GO
