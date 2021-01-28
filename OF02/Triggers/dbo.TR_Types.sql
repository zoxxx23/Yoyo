SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[TR_Types] ON [dbo].[Motorcycles]
FOR UPDATE
AS
BEGIN
  INSERT INTO DefaultDb
  SELECT 'Types'
    ,getdate()
  FROM inserted
END
GO
