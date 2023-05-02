
USE [PMSNexus_Employees]
GO
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='EmployeeRequest' AND COLUMN_NAME='ApprovedOn')
BEGIN
		ALTER TABLE [dbo].[EmployeeRequest] ADD [ApprovedOn] datetime NULL
END
GO
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='EmployeeRequest' AND COLUMN_NAME='SourceId')
BEGIN
		ALTER TABLE [dbo].[EmployeeRequest] ADD [SourceId] int NULL
END
GO
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='EmployeeRequest' AND COLUMN_NAME='ChangeType')
BEGIN
		ALTER TABLE [dbo].[EmployeeRequest] ADD [ChangeType] varchar(20) NULL
END
GO