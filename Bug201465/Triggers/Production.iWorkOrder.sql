SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [Production].[iWorkOrder] ON [Production].[WorkOrder] 
AFTER INSERT AS 
BEGIN
    DECLARE @Count int;

    SET @Count = @@ROWCOUNT;
    IF @Count = 0 
        RETURN;

    SET NOCOUNT ON;

    BEGIN TRY
        INSERT INTO [Production].[TransactionHistory](
            [ProductID]
            ,[ReferenceOrderID]
            ,[TransactionType]
            ,[TransactionDate]
            ,[Quantity]
            ,[ActualCost])
        SELECT 
            inserted.[ProductID]
            ,inserted.[WorkOrderID]
            ,'W'
            ,GETDATE()
            ,inserted.[OrderQty]
            ,0
        FROM inserted;
    END TRY
    BEGIN CATCH
        EXECUTE [dbo].[uspPrintError];

        -- Rollback any active or uncommittable transactions before
        -- inserting information in the ErrorLog
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END

        EXECUTE [dbo].[uspLogError];
    END CATCH;
END;
GO
EXEC sp_addextendedproperty N'MS_Description', N'AFTER INSERT trigger that inserts a row in the TransactionHistory table.', 'SCHEMA', N'Production', 'TABLE', N'WorkOrder', 'TRIGGER', N'iWorkOrder'
GO
