CREATE TABLE [dbo].[Venue] (
    [pk_venue_id] INT           IDENTITY (1, 1) NOT NULL,
    [venue_name]  VARCHAR (50)  NOT NULL,
    [address]     VARCHAR (MAX) NOT NULL,
    [zipcode]     INT           NOT NULL,
    [city]        VARCHAR (50)  NOT NULL,
    [state]       CHAR (2)      NOT NULL,
    [country]     VARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([pk_venue_id] ASC)
);

