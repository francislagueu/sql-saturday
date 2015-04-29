CREATE TABLE [dbo].[Vendor] (
    [pk_vendor_id] INT       IDENTITY(1,1)    NOT NULL,
    [company]      VARCHAR (MAX) NULL,
    [fk_person_id] INT           NULL,
    PRIMARY KEY CLUSTERED ([pk_vendor_id] ASC),
    FOREIGN KEY ([fk_person_id]) REFERENCES [dbo].[Person] ([pk_person_id])
);

