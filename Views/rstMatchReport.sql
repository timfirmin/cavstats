
CREATE VIEW [dbo].[rstMatchReport]
AS
SELECT     MatchID, CAST(Year AS varchar(4)) + ' ' + Opponent + ' [' + CAST(MatchDate AS varchar(11)) + ']' AS Banner, MatchReport
FROM         dbo.HCCCResults
WHERE     (CHARINDEX('Sorry No Match Report', MatchReport, 1) = 0)


