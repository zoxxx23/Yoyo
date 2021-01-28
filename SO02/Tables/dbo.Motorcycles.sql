SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Motorcycles] (
		[ID]        [int] NOT NULL,
		[Brand]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Model]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[Type]      [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_Motorcycles]
		PRIMARY KEY
		CLUSTERED
		([ID])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Motorcycles] SET (LOCK_ESCALATION = TABLE)
GO

GRANT SELECT, INSERT, UPDATE
  ON [dbo].[Motorcycles]
  TO [guest]
GO

