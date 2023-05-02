USE [PMSNexus_Leaves]
IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='LeaveRole')
	CREATE TABLE [dbo].[LeaveRole](
		[LeaveRoleId] [int] IDENTITY(1,1) NOT NULL,
		[LeaveTypeId] [int] NULL,
		[LeaveApplicableRoleId] [int] NULL,
		[LeaveExceptionRoleId] [int] NULL,
		[CreatedOn] [datetime] NULL,
		[ModifiedOn] [datetime] NULL,
		[CreatedBy] [int] NULL,
		[ModifiedBy] [int] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[LeaveRoleId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
GO