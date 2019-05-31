CREATE TABLE [dbo].[DETAILSbat2012] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [Year]      FLOAT (53)     DEFAULT ((2012)) NULL,
    [Opponent]  NVARCHAR (255) NULL,
    [Name]      NVARCHAR (255) NULL,
    [Score]     INT            DEFAULT ((0)) NULL,
    [HowOut]    NVARCHAR (255) NULL,
    [upsize_ts] ROWVERSION     NULL,
    CONSTRAINT [aaaaaDETAILSbat2012_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

