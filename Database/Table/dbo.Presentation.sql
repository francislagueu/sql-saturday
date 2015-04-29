CREATE TABLE [dbo].[Presentation] (
    [pk_presentation_id]          INT           IDENTITY (1, 1) NOT NULL,
    [topic]                       VARCHAR (50) NOT NULL,
    [duration]                    INT           NOT NULL,
    [difficulty_level] VARCHAR(50) NOT NULL, 
	[fk_course_id]                INT           NOT NULL,
    [fk_presenter_id] INT NOT NULL FOREIGN KEY REFERENCES Presenter(pk_presenter_id), 
    PRIMARY KEY CLUSTERED ([pk_presentation_id] ASC),
    FOREIGN KEY ([fk_course_id]) REFERENCES [dbo].[Course] ([pk_course_id]),
);

