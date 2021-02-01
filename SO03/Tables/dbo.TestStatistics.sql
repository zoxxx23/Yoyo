SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[TestStatistics] (
		[Column1]     [int] NULL,
		[Column2]     [int] NOT NULL,
		CONSTRAINT [UQ__TestStat__529C02D59E865721]
		UNIQUE
		NONCLUSTERED
		([Column1])
		ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestStatistics]
	ADD
	CONSTRAINT [CK__TestStati__Colum__3C69FB99]
	CHECK
	([Column1]>=(1) AND [Column1]<=(999))
GO
ALTER TABLE [dbo].[TestStatistics]
CHECK CONSTRAINT [CK__TestStati__Colum__3C69FB99]
GO
CREATE STATISTICS [Stat1]
	ON [dbo].[TestStatistics] ([Column1])
GO
ALTER TABLE [dbo].[TestStatistics] SET (LOCK_ESCALATION = TABLE)
GO
