CREATE TABLE [dbo].[Event] (
    [pk_event_id]  INT          IDENTITY (1, 1) NOT NULL,
    [event_name]   VARCHAR (255) NOT NULL,
    [date]         DATE         NOT NULL,
    [fk_venue_id]  INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([pk_event_id] ASC),
    FOREIGN KEY ([fk_venue_id]) REFERENCES [dbo].[Venue] ([pk_venue_id])
);

