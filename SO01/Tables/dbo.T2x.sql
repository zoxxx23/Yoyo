SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T2x] (
		[PersonId]      [int] NOT NULL,
		[LastName]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FirstName]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]           [int] NULL,
		CONSTRAINT [PK__T2x__AA2FFBE564B3108F]
		PRIMARY KEY
		CLUSTERED
		([PersonId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [eee]
	ON [dbo].[T2x] ([Age])
	WITH ( PAD_INDEX = ON)
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[T2x] SET (LOCK_ESCALATION = TABLE)
GO
