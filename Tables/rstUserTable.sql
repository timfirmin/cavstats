CREATE TABLE [dbo].[rstUserTable] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [usrName]   NVARCHAR (50) NULL,
    [usrPlayer] NVARCHAR (50) NULL,
    [usrAdded]  DATETIME      DEFAULT (getdate()) NULL,
    [upsize_ts] ROWVERSION    NULL,
    CONSTRAINT [aaaaarstUserTable_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

