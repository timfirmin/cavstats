CREATE TABLE [dbo].[DETAILSbowl2018] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [Year]      FLOAT (53)     DEFAULT ((2018)) NULL,
    [Opponent]  NVARCHAR (255) NULL,
    [Name]      NVARCHAR (255) NULL,
    [Overs]     FLOAT (53)     NULL,
    [Maidens]   FLOAT (53)     NULL,
    [Runs]      FLOAT (53)     NULL,
    [Wickets]   FLOAT (53)     NULL,
    [upsize_ts] ROWVERSION     NULL,
    CONSTRAINT [aaaaaDETAILSbowl2018_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

