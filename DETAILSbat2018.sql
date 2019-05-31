CREATE TABLE [dbo].[DETAILSbat2018] (
    [ID]        INT            IDENTITY (1, 1) NOT NULL,
    [Year]      FLOAT (53)     DEFAULT ((2018)) NULL,
    [Opponent]  NVARCHAR (255) NULL,
    [Name]      NVARCHAR (255) NULL,
    [Score]     INT            NULL,
    [HowOut]    NVARCHAR (255) NULL,
    [upsize_ts] ROWVERSION     NULL,
    CONSTRAINT [aaaaaDETAILSbat2018_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
);

