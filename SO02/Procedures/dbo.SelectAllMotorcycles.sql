SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SelectAllMotorcycles
WITH ENCRYPTION
AS
SELECT * FROM Motorcycles
GO