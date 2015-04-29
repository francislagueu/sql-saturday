-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================

CREATE PROCEDURE [dbo].[Add_Schedule_Procedure] 
	@course_title VARCHAR(100),
	@room_name VARCHAR(50),
	@start_time DATETIME2(0),
	@presenter_id INT,
	@end_time DATETIME2(0)
AS
BEGIN TRY
BEGIN TRAN
	SET NOCOUNT ON;


DECLARE @room_variable INT, @course_variable INT

SET @room_variable = (

SELECT pk_room_id
FROM dbo.Room
WHERE name = @room_Name

)

SET @course_variable = (

SELECT pk_course_id
FROM dbo.Course
WHERE title = @course_title

)

--Create a blank student link associated with the classroom

--DECLARE @OutputTable TABLE (ID INT)
--INSERT dbo.Student_List ( Person_ID )
--OUTPUT INSERTED.Student_List_ID INTO @OutputTable(ID)
--VALUES  (NULL)

--DECLARE @sVariable INT
--SET @sVariable = (SELECT ID FROM @OutputTable)

INSERT dbo.Schedule
        ( fk_course_id ,
          fk_room_id ,
          fk_presenter_id ,
		  start_time ,
          end_time)

OUTPUT Inserted.fk_course_id, Inserted.fk_room_id, Inserted.fk_presenter_id,
	   Inserted.start_time, Inserted.end_time

VALUES  ( @course_variable,
	@room_variable,
	@presenter_id,
	@start_time,
	@end_time)
	
COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
PRINT 'Custom Procedure4  failed'
PRINT ERROR_MESSAGE()
END CATCH


GO