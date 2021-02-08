SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TR_Models] ON [dbo].[Motorcycles]
FOR UPDATE
AS
BEGIN
  INSERT INTO TestScriptOptions
  SELECT 'Model'
    ,getdate()
  FROM inserted
END
GO
