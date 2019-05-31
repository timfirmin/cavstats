CREATE VIEW [dbo].[rstBestBatting]
AS
SELECT     TOP (100) PERCENT
Name,
cast(MatchDate as DATE) as MatchDate,
Opponent,
Score,
HowOut
FROM         dbo.rstBattingDetails
WHERE     (Score > 49)
ORDER BY Score DESC
