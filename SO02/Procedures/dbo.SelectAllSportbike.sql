SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SelectAllSportbike
AS
SELECT * FROM Motorcycles WHERE Type = 'Sportbike'
GO