SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FirstSecondEtc] (
		[FIRST]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SECOND]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[THIRD]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FOURTH]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[FIFTH]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_FirstSecondEtc]
		PRIMARY KEY
		CLUSTERED
		([FIRST])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FirstSecondEtc] SET (LOCK_ESCALATION = TABLE)
GO
