SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SelectAllNaked
AS
SELECT * FROM Motorcycles WHERE Type = 'Naked'
GO
