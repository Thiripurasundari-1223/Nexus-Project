USE [PMSNexus_Leaves]
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME='LeaveTypes' AND COLUMN_NAME = 'LeaveTypesId')
BEGIN
	ALTER TABLE [dbo].[LeaveTypes] ADD LeaveTypesId int NULL
END
GO