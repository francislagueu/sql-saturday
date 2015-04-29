CREATE TABLE [dbo].[Student] (
    [pk_student_id] INT IDENTITY(1,1) NOT NULL,
    [fk_person_id]  INT NULL,
    [fk_course_id]  INT NULL,
    PRIMARY KEY CLUSTERED ([pk_student_id] ASC),
    FOREIGN KEY ([fk_person_id]) REFERENCES [dbo].[Person] ([pk_person_id]),
    FOREIGN KEY ([fk_course_id]) REFERENCES [dbo].[Course] ([pk_course_id])
);

