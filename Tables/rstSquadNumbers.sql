CREATE TABLE [dbo].[rstSquadNumbers] (
    [NoSquad]        INT           IDENTITY (1, 1) NOT NULL,
    [CavName]        NVARCHAR (50) NULL,
    [CavDebutYear]   INT           DEFAULT ((0)) NULL,
    [CavDebutGameID] INT           DEFAULT ((0)) NULL,
    [upsize_ts]      ROWVERSION    NULL,
    CONSTRAINT [SquadNumbers_PK] PRIMARY KEY NONCLUSTERED ([NoSquad] ASC)
);

