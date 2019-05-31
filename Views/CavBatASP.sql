
CREATE VIEW [dbo].[CavBatASP]
AS
SELECT     Name, Matches, Innings, NotOuts, Runs, HighScore, Fifties, CAST(Average AS decimal(10, 2)) * 1 AS Avg
FROM         dbo.CavsBatALLTotals


