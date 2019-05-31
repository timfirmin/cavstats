

CREATE VIEW [dbo].[rstHCCCsummary]
AS
SELECT     SUM(CASE WHEN [MatchResult] = 'Won' THEN 1 ELSE 0 END) AS Wins, SUM(CASE WHEN [MatchResult] = 'Lost' THEN 1 ELSE 0 END) AS Lost, 
                      SUM(CASE WHEN [MatchResult] = 'Draw' THEN 1 ELSE 0 END) AS Draw
FROM         dbo.HCCCResults


