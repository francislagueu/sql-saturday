CREATE TABLE [dbo].[Room] (
    [pk_room_id] INT IDENTITY (1, 1) NOT NULL,
    [name]         VARCHAR(50) NOT NULL,
    [capacity]            INT NOT NULL,
    [fk_venue_id] INT NOT NULL FOREIGN KEY REFERENCES Venue(pk_venue_id),
    PRIMARY KEY CLUSTERED ([pk_room_id] ASC)
);

