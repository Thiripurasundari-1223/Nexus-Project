USE [PMSNexus_Appraisal]
GO
ALTER TABLE [dbo].[ObjectiveMaster] ALTER COLUMN [OBJECTIVE_SHORT_NAME] NVARCHAR(100) NULL
ALTER TABLE [dbo].[EntityMaster] ALTER COLUMN [ENTITY_SHORT_NAME] NVARCHAR(100) NULL
ALTER TABLE [dbo].[KeyResultMaster] ALTER COLUMN [KEY_RESULT_SHORT_NAME] NVARCHAR(100) NULL
GO