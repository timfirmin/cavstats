CREATE TABLE [dbo].[DETAILSbat2011] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [Year]      FLOAT (53)     DEFAULT ((2011)) NULL,
    [Opponent]  NVARCHAR (255) NULL,
    [Name]      NVARCHAR (255) NULL,
    [Score]     INT            DEFAULT ((0)) NULL,
    [HowOut]    NVARCHAR (255) NULL,
    [upsize_ts] ROWVERSION     NULL,
    CONSTRAINT [aaaaaDETAILSbat2011_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

