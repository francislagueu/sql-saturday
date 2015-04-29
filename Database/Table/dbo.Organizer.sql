CREATE TABLE [dbo].[Organizer] (
    [pk_organizer_id] INT IDENTITY(1,1) NOT NULL,
    [fk_person_id]    INT NULL,
    PRIMARY KEY CLUSTERED ([pk_organizer_id] ASC),
    FOREIGN KEY ([fk_person_id]) REFERENCES [dbo].[Person] ([pk_person_id])
);

