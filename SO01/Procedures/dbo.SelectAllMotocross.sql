SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SelectAllMotocross
AS
SELECT * FROM Motorcycles WHERE Type = 'Motocross'
GO
