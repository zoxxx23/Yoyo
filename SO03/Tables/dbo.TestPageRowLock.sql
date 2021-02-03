SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TestPageRowLock] (
		[PersonId]      [int] NOT NULL,
		[LastName]      [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[FirstName]     [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Age]           [int] NULL,
		CONSTRAINT [PK__TestPage__AA2FFBE51EA9F7F9]
		PRIMARY KEY
		CLUSTERED
		([PersonId])
	ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [eee]
	ON [dbo].[TestPageRowLock] ([Age])
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestPageRowLock] SET (LOCK_ESCALATION = TABLE)
GO
