CREATE TABLE [dbo].[DETAILSbat2001] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [year]      FLOAT (53)     NULL,
    [Opponent]  NVARCHAR (255) NULL,
    [Name]      NVARCHAR (255) NULL,
    [Score]     INT            DEFAULT ((0)) NULL,
    [HowOut]    NVARCHAR (255) NULL,
    [upsize_ts] ROWVERSION     NULL,
    CONSTRAINT [aaaaaDETAILSbat2001_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

