

CREATE VIEW [dbo].[rstCavsBatAvgAll]
AS
SELECT     TOP (100) PERCENT Name, Matches, Innings, NotOuts, Runs, HighScore, Fifties, LEFT(CASE WHEN [Innings] > 0 THEN (CAST([Runs] AS decimal(10, 2)) 
                      / ([Innings] - [NotOuts])) ELSE 0 END, 5) AS Average, CASE WHEN [Innings] > 0 THEN ([Runs] / ([Innings] - [NotOuts])) ELSE 0 END AS AvgInt
FROM         dbo.CavsBatALLSums
WHERE     (Innings - NotOuts > 0)
ORDER BY AvgInt DESC




