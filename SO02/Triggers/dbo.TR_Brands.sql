SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[TR_Brands] ON [dbo].[Motorcycles]
FOR UPDATE
AS
BEGIN
  INSERT INTO TestScriptOptions
  SELECT 'Brand'
    ,getdate()
  FROM inserted
END
GO
