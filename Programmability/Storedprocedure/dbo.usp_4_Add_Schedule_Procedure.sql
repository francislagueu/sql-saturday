CREATE PROCEDURE [dbo].[usp_4_Add_Schedule_Procedure] 
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

SET @room_variable =
(
	SELECT room.pk_room_id
	FROM dbo.Room room
	WHERE room.name = @room_Name
)


SET @course_variable =
(

	SELECT course.pk_course_id
	FROM dbo.Course course
	WHERE course.title = @course_title

)


INSERT INTO dbo.Schedule ( fk_course_id , fk_room_id , fk_presenter_id, start_time , end_time)

OUTPUT Inserted.fk_course_id, Inserted.fk_room_id, Inserted.fk_presenter_id,Inserted.start_time, Inserted.end_time

VALUES  (@course_variable, @room_variable, @presenter_id, @start_time, @end_time);

COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
PRINT 'Custom Procedure4  failed'
PRINT ERROR_MESSAGE()
END CATCH
