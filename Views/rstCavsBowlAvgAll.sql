CREATE VIEW [dbo].[rstCavsBowlAvgAll]
AS

SELECT     TOP (100) PERCENT  Name, Matches, Overs, Wickets, LEFT(CASE WHEN [wickets] > 0 THEN [Runs] / [Wickets] ELSE 0 END, 5) AS Average, 
                      CAST(Runs / Overs AS decimal(10, 2)) AS Economy, Runs, CASE WHEN [wickets] > 0 THEN CAST([Runs] / [Wickets]AS decimal(10, 2)) ELSE 0 END AS AvgNo
FROM         dbo.CavsBowlALLSums
WHERE     (Wickets > 0) AND (Runs > 0)
ORDER BY AvgNo

