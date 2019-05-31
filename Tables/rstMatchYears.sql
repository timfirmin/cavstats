CREATE TABLE [dbo].[rstMatchYears] (
    [MatchYears] INT        DEFAULT ((0)) NOT NULL,
    [upsize_ts]  ROWVERSION NULL,
    CONSTRAINT [aaaaarstMatchYears_PK] PRIMARY KEY NONCLUSTERED ([MatchYears] ASC)
);

