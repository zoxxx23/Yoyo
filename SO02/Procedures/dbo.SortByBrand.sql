SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SortByBrand
AS
SELECT * FROM Motorcycles
ORDER BY Brand
COLLATE Latin1_General_CS_AS_KS_WS ASC;
GO
