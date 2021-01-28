SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

create trigger [alo]
on [dbo].[ajdee]
AFTER UPDATE   
AS RAISERROR ('Notify Customer Relations', 16, 10);
GO
DISABLE TRIGGER [dbo].[alo]
	ON [dbo].[ajdee]
GO
