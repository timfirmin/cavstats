CREATE TABLE [dbo].[rstSortOption] (
    [sortID]     INT           IDENTITY (1, 1) NOT NULL,
    [sortOPTION] NVARCHAR (50) NULL,
    [upsize_ts]  ROWVERSION    NULL,
    CONSTRAINT [aaaaarstSortOption_PK] PRIMARY KEY NONCLUSTERED ([sortID] ASC)
);

