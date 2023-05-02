USE [PMSNexus_Appraisal]
Go
IF NOT EXISTS(SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME='EmployeeKeyResultAttachments')

CREATE TABLE EmployeeKeyResultAttachments (
  DOC_ID int identity(1,1) NOT NULL,
  APP_CYCLE_ID int NOT NULL,
  EMPLOYEE_ID int NOT NULL,
  OBJECTIVE_ID int NOT NULL,
  KEY_RESULT_ID int NOT NULL,
  DOC_NAME nvarchar(1000) NOT NULL,
  DOC_DESCRIPTION nvarchar(2000)  NULL,
  DOC_URL nvarchar(2000) NOT NULL,
  DOC_UPLOADED_BY int NOT NULL,
  DOC_TYPE nvarchar(25) NULL,
  CREATED_BY int  NULL,
  CREATED_DATE datetime  NULL,
  UPDATED_BY int  NULL,
  UPDATED_DATE datetime  NULL,
  PRIMARY KEY (DOC_ID)
  )
GO
