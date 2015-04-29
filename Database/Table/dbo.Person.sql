CREATE TABLE [dbo].[Person] (
    [pk_person_id]   INT           IDENTITY (1, 1) NOT NULL,
    [first_name]     VARCHAR (40) NOT NULL,
    [last_name]      VARCHAR (40) NOT NULL,
    [email]          VARCHAR (70) NOT NULL,
    [phone]          NCHAR(10)  NOT NULL,
    [role]           VARCHAR (10)  NOT NULL,
    [street_address] VARCHAR(50)          NOT NULL,
    [city]           VARCHAR (25)  NOT NULL,
    [zip_code]       INT           NOT NULL,
    [state]          VARCHAR (25)  NOT NULL,
    [country]        VARCHAR (25)  NOT NULL,
    PRIMARY KEY CLUSTERED ([pk_person_id] ASC)
);

