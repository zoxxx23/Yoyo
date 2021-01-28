SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  StoredProcedure [dbo].[SelectAllNaked]    Script Date: 1/28/2021 9:53:21 AM ******/

CREATE PROCEDURE [dbo].[SelectAllNaked]
as
SELECT * FROM Motorcycles WHERE Type='Naked'
GO
