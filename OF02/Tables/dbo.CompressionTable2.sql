SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CompressionTable2] (
		[AAA]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[BBB]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[CCC]     [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
	WITH (	DATA_COMPRESSION = ROW)
GO
ALTER TABLE [dbo].[CompressionTable2] SET (LOCK_ESCALATION = TABLE)
GO
