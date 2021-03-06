SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnableDisableTrigger] (
		[PersonId]      [int] NOT NULL,
		[LastName]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FirstName]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]           [int] NULL,
		CONSTRAINT [PK__EnableDi__AA2FFBE572304B84]
		PRIMARY KEY
		CLUSTERED
		([PersonId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EnableDisableTrigger] SET (LOCK_ESCALATION = TABLE)
GO
