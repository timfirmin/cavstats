CREATE TABLE [dbo].[DETAILSbowl2012] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [Year]      FLOAT (53)     CONSTRAINT [DF__DETAILSbow__Year__2739D489] DEFAULT ((2012)) NULL,
    [Opponent]  NVARCHAR (255) NULL,
    [Name]      NVARCHAR (255) NULL,
    [Overs]     FLOAT (53)     NULL,
    [Maidens]   FLOAT (53)     NULL,
    [Runs]      FLOAT (53)     NULL,
    [Wickets]   FLOAT (53)     NULL,
    [upsize_ts] ROWVERSION     NULL,
    CONSTRAINT [aaaaaDETAILSbowl2012_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

