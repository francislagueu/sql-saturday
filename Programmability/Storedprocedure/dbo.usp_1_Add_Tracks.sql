SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[usp_1_Add_Track]
	@name nvarchar(50), --Track_Name
	@topic nvarchar(25) --Topic
AS
BEGIN TRY
BEGIN TRAN
	INSERT INTO Track(name, topic)
		OUTPUT Inserted.name, Inserted.topic
	VALUES (@name, @topic)
COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
PRINT 'Custom Procedure to add tracks failed'
PRINT ERROR_MESSAGE()
END CATCH
RETURN 0
GO
