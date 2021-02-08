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
ALTER TABLE [dbo].[Motorcycles]
	ADD
	CONSTRAINT [CheckID]
	CHECK
	([Type]>'Naked')
GO
ALTER TABLE [dbo].[Motorcycles]
CHECK CONSTRAINT [CheckID]
GO
ALTER TABLE [dbo].[Motorcycles]
	ADD
	CONSTRAINT [DefaultBrand]
	DEFAULT ('Bona') FOR [Brand]
GO
EXEC sp_addextendedproperty N'Test', N'Testing extend properties in SC', 'SCHEMA', N'dbo', 'TABLE', N'Motorcycles', 'COLUMN', N'Type'
GO
ALTER TABLE [dbo].[Motorcycles] SET (LOCK_ESCALATION = TABLE)
GO
