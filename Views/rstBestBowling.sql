CREATE VIEW [dbo].[rstBestBowling]
AS
SELECT     TOP (100) PERCENT Name, CAST(MatchDate AS DATE) AS MatchDate, Opponent, CAST(Wickets AS varchar(3)) + ' for ' + CAST(Runs AS varchar(3)) 
                      + ' (' + CAST(Overs AS varchar(6)) + ' overs)' AS BowlingReturn, Wickets, CASE WHEN [wickets] > 0 THEN [Runs] / [Wickets] ELSE 0 END AS AvgNo
FROM         dbo.rstBowlingDetails
WHERE     (Wickets > 2)
ORDER BY Wickets DESC, CASE WHEN [wickets] > 0 THEN [Runs] / [Wickets] ELSE 0 END

