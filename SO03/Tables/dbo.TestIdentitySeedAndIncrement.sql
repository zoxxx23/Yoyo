SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestIdentitySeedAndIncrement] (
		[PersonId]      [int] IDENTITY(0, 10) NOT NULL,
		[LastName]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FirstName]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]           [int] NULL,
		CONSTRAINT [PK__TestIden__AA2FFBE5CEF7E596]
		PRIMARY KEY
		CLUSTERED
		([PersonId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestIdentitySeedAndIncrement] SET (LOCK_ESCALATION = TABLE)
GO
