Create PROCEDURE [dbo].[InsertSqlExceptionLog]

AS
BEGIN
	BEGIN TRY

	INSERT INTO sqlexceptionlog (ErrorNumber,ErrorLevel,State,Line,StoreProcedureName,Message,CreatedDate)
    VALUES(ERROR_NUMBER(),ERROR_SEVERITY(),ERROR_STATE(),ERROR_LINE(),ERROR_PROCEDURE(),ERROR_MESSAGE(),GETDATE())


END TRY
BEGIN CATCH
   
	INSERT INTO sqlexceptionlog (ErrorNumber,ErrorLevel,State,Line,StoreProcedureName,Message,CreatedDate)
    VALUES(ERROR_NUMBER(),ERROR_SEVERITY(),ERROR_STATE(),ERROR_LINE(),ERROR_PROCEDURE(),ERROR_MESSAGE(),GETDATE())

END CATCH
END




























