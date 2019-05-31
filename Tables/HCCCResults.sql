CREATE TABLE [dbo].[HCCCResults] (
    [MatchID]      INT            IDENTITY (1, 1) NOT NULL,
    [Year]         FLOAT (53)     NOT NULL,
    [Opponent]     NVARCHAR (255) NOT NULL,
    [MatchVenue]   NVARCHAR (50)  NULL,
    [MatchWeather] NVARCHAR (50)  NULL,
    [MatchToss]    NVARCHAR (50)  NULL,
    [MatchComment] NVARCHAR (50)  NULL,
    [MatchResult]  NVARCHAR (255) NULL,
    [MatchDate]    DATETIME       NULL,
    [CavsRuns]     INT            NULL,
    [CavsWkts]     INT            NULL,
    [CavsOvers]    INT            DEFAULT ((0)) NULL,
    [OppoRuns]     INT            NULL,
    [OppoWkts]     INT            NULL,
    [OppoOvers]    INT            DEFAULT ((0)) NULL,
    [upsize_ts]    ROWVERSION     NULL,
    [MatchReport]  NVARCHAR (MAX) NULL,
    CONSTRAINT [aaaaaHCCCResults_PK] PRIMARY KEY NONCLUSTERED ([Year] ASC, [Opponent] ASC)
);

