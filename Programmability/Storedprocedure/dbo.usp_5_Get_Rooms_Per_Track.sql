SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_5_Get_Rooms_Per_Track]

AS
BEGIN TRY
BEGIN TRAN

	SET NOCOUNT ON;

SELECT track.name, course.title, room.name

FROM dbo.Course course
INNER JOIN dbo.Schedule schedule

ON schedule.fk_course_id = course.pk_course_id
INNER JOIN dbo.Room room

ON room.pk_room_id = schedule.fk_room_id
INNER JOIN dbo.Track track

ON track.pk_track_id = course.fk_track_id

ORDER BY track.name

COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
PRINT 'Custom Procedure5  failed'
PRINT ERROR_MESSAGE()
END CATCH
GO
