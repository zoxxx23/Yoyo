SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pr_Transfer_vo_VisitOccurrence] @RegistryName VARCHAR(10), @ETLLogID Int,@debug BIT = 0
AS
BEGIN
SET NOCOUNT ON;
SET XACT_ABORT ON;
/**************************************************************************************************
Project:		EDW2.0
JIRA:			?
Developer:		zbachore
Date:			2016-07-14
Description:	This stored procedure just selects rows from VisitOccurrence table with 
				LoadStatusID = 2. The SSIS package will use the result set. The reason we use this
				here is because the result set is dynamic - by passing RegistryName as a parameter
___________________________________________________________________________________________________
Example: EXEC load.pr_Transfer_vo_VisitOccurrence 'ICD', 5
___________________________________________________________________________________________________
Revision History
Date			Author			Reason for Change
6/29/2017       Madhu           Addded Result set 
-------	 ------- -----------------------------------------------------------------------
***************************************************************************************************/
--Variables:
DECLARE @ErrorMessage VARCHAR(2000) = ' ',
        @VisitOccurrence VARCHAR(100) = @RegistryName + '_vo.VisitOccurrence',
		@SelectSQL VARCHAR(max)

BEGIN TRY

BEGIN

SELECT @SelectSQL = '
SELECT [VisitOccurrenceKey]
      ,[ClientPatientID]
      ,[ClientPatientKey]
      ,[SubmissionKey]
	  ,ClientKey
      ,[VisitConceptID]
      ,[VisitStartDate]
      ,[VisitStartTime]
      ,[VisitEndDate]
      ,[VisitEndTime]
      ,[VendorEncounterID]
      ,ETLLogIDInsert = ' + CAST(@ETLLogID AS VARCHAR(10)) + '
  FROM ' + @VisitOccurrence + '  vo
  INNER JOIN etl.ETLSubmissionQueue sq ON vo.SubmissionID = sq.SubmissionID
  WHERE sq.LoadStatusID = 2'

  IF @debug = 1
  PRINT @SelectSQL
  ELSE
  EXEC(@SelectSQL)
  
   WITH RESULT SETS -- Hahahahha, aj pukni jbm li ti sve!
  (
	(
    [VisitOccurrenceKey] [bigint],
	[ClientPatientID] [int] ,
	[ClientPatientKey] [int] ,
	[SubmissionKey] [int] ,
	[ClientKey] [int] ,
	[VisitConceptID] [int] ,
	[VisitStartDate] [date] ,
	[VisitStartTime] [time](2) ,
	[VisitEndDate] [date] ,
	[VisitEndTime] [time](2) ,
	[VendorEncounterID] [varchar](50) ,
	[ETLLogIDInsert] [int] 

  )
);
  --PRINT @SelectSQL --for debugging only

  END
  	END TRY
	BEGIN CATCH
		set @ErrorMessage =  'An error occurred in stored procedure load.pr_Transfer_vo_VisitOccurrence ' + ERROR_MESSAGE()
		RAISERROR (@ErrorMessage,
               16,
               1 
               );
	END CATCH



SET NOCOUNT OFF;
END


GO
