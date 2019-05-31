CREATE TABLE [dbo].[DETAILSbowl2010] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [Year]      FLOAT (53)     CONSTRAINT [DF__DETAILSbow__Year__59063A47] DEFAULT ((2010)) NULL,
    [Opponent]  NVARCHAR (255) NULL,
    [Name]      NVARCHAR (255) NULL,
    [Overs]     FLOAT (53)     NULL,
    [Maidens]   FLOAT (53)     NULL,
    [Runs]      FLOAT (53)     NULL,
    [Wickets]   FLOAT (53)     NULL,
    [upsize_ts] ROWVERSION     NULL,
    CONSTRAINT [aaaaaDETAILSbowl2010_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

