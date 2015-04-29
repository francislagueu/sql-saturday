CREATE TABLE [dbo].[Track] (
    [pk_track_id] INT           IDENTITY (1, 1) NOT NULL,
    [name]        VARCHAR (50) NOT NULL,
    [topic]       VARCHAR (25)  NOT NULL,
    PRIMARY KEY CLUSTERED ([pk_track_id] ASC)
);

