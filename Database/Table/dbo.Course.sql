CREATE TABLE [dbo].[Course] (
    [pk_course_id] INT           IDENTITY (1, 1) NOT NULL,
    [title]        VARCHAR (100) NOT NULL,
    [description]  TEXT          NOT NULL,
    [duration]     INT      NOT NULL,
    [difficulty]   VARCHAR (20)  NOT NULL,
    [fk_track_id]  INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([pk_course_id] ASC),
    FOREIGN KEY ([fk_track_id]) REFERENCES [dbo].[Track] ([pk_track_id])
);

