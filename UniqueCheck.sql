CREATE TABLE [dbo].[UniqueCheck] (
    [uniquefield1] NVARCHAR (50) NOT NULL,
    [field2]       NVARCHAR (50) NULL,
    [field3]       NVARCHAR (50) NULL,
    [field4]       NVARCHAR (50) NULL,
    [field5]       NVARCHAR (50) NULL,
    [field6]       NVARCHAR (50) NULL,
    [field7]       NVARCHAR (50) NULL,
    [field8]       NVARCHAR (50) NULL,
    [field9]       NVARCHAR (50) NULL,
    [field10]      NVARCHAR (50) NULL,
    [upsize_ts]    ROWVERSION    NULL,
    CONSTRAINT [aaaaaUniqueCheck_PK] PRIMARY KEY NONCLUSTERED ([uniquefield1] ASC)
);

