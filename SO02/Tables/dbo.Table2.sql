SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Table2] (
		[Column1]     [int] NOT NULL,
		[Column2]     [int] NOT NULL,
		CONSTRAINT [PK__Table2__529C02D58A9A1FD9]
		PRIMARY KEY
		NONCLUSTERED
		([Column1])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table2]
	ADD
	CONSTRAINT [CK__Table2__Column1__3F466844]
	CHECK
	([Column1]>=(1) AND [Column1]<=(999))
GO
ALTER TABLE [dbo].[Table2]
CHECK CONSTRAINT [CK__Table2__Column1__3F466844]
GO
ALTER TABLE [dbo].[Table2] SET (LOCK_ESCALATION = TABLE)
GO
