SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING OFF
GO
CREATE TABLE [HumanResources].[JobCandidate] (
		[JobCandidateID]       [int] IDENTITY(1, 1) NOT NULL,
		[BusinessEntityID]     [int] NULL,
		[Resume]               [xml](CONTENT [HumanResources].[HRResumeSchemaCollection]) NULL,
		[ModifiedDate]         [datetime] NOT NULL,
		CONSTRAINT [PK_JobCandidate_JobCandidateID]
		PRIMARY KEY
		CLUSTERED
		([JobCandidateID])
	ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'INDEX', N'PK_JobCandidate_JobCandidateID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'CONSTRAINT', N'PK_JobCandidate_JobCandidateID'
GO
ALTER TABLE [HumanResources].[JobCandidate]
	ADD
	CONSTRAINT [DF_JobCandidate_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of GETDATE()', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'CONSTRAINT', N'DF_JobCandidate_ModifiedDate'
GO
ALTER TABLE [HumanResources].[JobCandidate]
	WITH CHECK
	ADD CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID]
	FOREIGN KEY ([BusinessEntityID]) REFERENCES [HumanResources].[Employee] ([BusinessEntityID])
ALTER TABLE [HumanResources].[JobCandidate]
	CHECK CONSTRAINT [FK_JobCandidate_Employee_BusinessEntityID]

GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key constraint referencing Employee.EmployeeID.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'CONSTRAINT', N'FK_JobCandidate_Employee_BusinessEntityID'
GO
CREATE NONCLUSTERED INDEX [IX_JobCandidate_BusinessEntityID]
	ON [HumanResources].[JobCandidate] ([BusinessEntityID])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'INDEX', N'IX_JobCandidate_BusinessEntityID'
GO
CREATE FULLTEXT INDEX ON [HumanResources].[JobCandidate]
	([Resume] LANGUAGE 1033)
	KEY INDEX [PK_JobCandidate_JobCandidateID]
	ON (FILEGROUP [PRIMARY], [AW2016FullTextCatalog])
	WITH CHANGE_TRACKING AUTO, STOPLIST SYSTEM
GO
EXEC sp_addextendedproperty N'MS_Description', N'Résumés submitted to Human Resources by job applicants.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for JobCandidate records.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'COLUMN', N'JobCandidateID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Employee identification number if applicant was hired. Foreign key to Employee.BusinessEntityID.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'COLUMN', N'BusinessEntityID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Résumé in XML format.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'COLUMN', N'Resume'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'JobCandidate', 'COLUMN', N'ModifiedDate'
GO
ALTER TABLE [HumanResources].[JobCandidate] SET (LOCK_ESCALATION = TABLE)
GO
