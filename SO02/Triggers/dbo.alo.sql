SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [alo]
ON [dbo].[EnableDisableTrigger]
AFTER UPDATE 
AS RAISERROR ('Notify Customer Relations', 16, 10);
GO
DISABLE TRIGGER [dbo].[alo]
	ON [dbo].[EnableDisableTrigger]
GO
