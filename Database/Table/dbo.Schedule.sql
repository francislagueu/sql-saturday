CREATE TABLE [dbo].[Schedule] (
    [pk_schedule_id]  INT      IDENTITY (1, 1) NOT NULL,
    [start_time]      DATETIME2 NOT NULL,
    [end_time]        DATETIME2 NOT NULL,
    [fk_course_id]    INT      NOT NULL,
    [fk_room_id]      INT      NOT NULL,
    [fk_presenter_id] INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([pk_schedule_id] ASC),
    FOREIGN KEY ([fk_presenter_id]) REFERENCES [dbo].[Presenter] ([pk_presenter_id]),
    FOREIGN KEY ([fk_room_id]) REFERENCES [dbo].[Room] ([pk_room_id]),
    FOREIGN KEY ([fk_course_id]) REFERENCES [dbo].[Course] ([pk_course_id])
);

