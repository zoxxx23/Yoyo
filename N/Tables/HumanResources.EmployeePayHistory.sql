SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [HumanResources].[EmployeePayHistory] (
		[BusinessEntityID]     [int] NOT NULL,
		[RateChangeDate]       [datetime] NOT NULL,
		[Rate]                 [money] NOT NULL,
		[PayFrequency]         [tinyint] NOT NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		[ne]                   [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[HEHE]                 [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[y]                    [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		CONSTRAINT [PK_EmployeePayHistory_BusinessEntityID_RateChangeDate]
		PRIMARY KEY
		CLUSTERED
		([BusinessEntityID], [RateChangeDate])
	ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'INDEX', N'PK_EmployeePayHistory_BusinessEntityID_RateChangeDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'CONSTRAINT', N'PK_EmployeePayHistory_BusinessEntityID_RateChangeDate'
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	ADD
	CONSTRAINT [CK_EmployeePayHistory_PayFrequency]
	CHECK
	([PayFrequency]=(2) OR [PayFrequency]=(1))
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [PayFrequency]=(3) OR [PayFrequency]=(2) OR [PayFrequency]=(1)', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'CONSTRAINT', N'CK_EmployeePayHistory_PayFrequency'
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
CHECK CONSTRAINT [CK_EmployeePayHistory_PayFrequency]
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	ADD
	CONSTRAINT [CK_EmployeePayHistory_Rate]
	CHECK
	([Rate]>=(6.50) AND [Rate]<=(200.00))
GO
EXEC sp_addextendedproperty N'MS_Description', N'Check constraint [Rate] >= (6.50) AND [Rate] <= (200.00)', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'CONSTRAINT', N'CK_EmployeePayHistory_Rate'
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
CHECK CONSTRAINT [CK_EmployeePayHistory_Rate]
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	ADD
	CONSTRAINT [DF_EmployeePayHistory_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'CONSTRAINT', N'DF_EmployeePayHistory_ModifiedDate'
GO
ALTER TABLE [HumanResources].[EmployeePayHistory]
	WITH CHECK
	ADD CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [HumanResources].[EmployeePayHistory]
	CHECK CONSTRAINT [FK_EmployeePayHistory_Employee_BusinessEntityID]

GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Employee.EmployeeID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'CONSTRAINT', N'FK_EmployeePayHistory_Employee_BusinessEntityID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee pay history.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee identification number. Foreign key to Employee.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'COLUMN', N'BusinessEntityID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the change in pay is effective', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'COLUMN', N'RateChangeDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Salary hourly rate.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'COLUMN', N'Rate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'1 = Salary received monthly, 2 = Salary received biweekly', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'COLUMN', N'PayFrequency'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'EmployeePayHistory', 'COLUMN', N'ModifiedDate'
GO
ALTER TABLE [HumanResources].[EmployeePayHistory] SET (LOCK_ESCALATION = TABLE)
GO
