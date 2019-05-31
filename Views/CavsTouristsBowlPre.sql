


CREATE VIEW [dbo].[CavsTouristsBowlPre]
AS
SELECT Count(HCCCResults.MatchID) AS [TourMatch#], DETAILSbowlALL.Name, HCCCResults.Year, Sum(DETAILSbowlALL.Overs) AS SumOfOvers, Sum(DETAILSbowlALL.Wickets) AS SumOfWickets, Sum(DETAILSbowlALL.Runs) AS BowlRuns
FROM HCCCResults INNER JOIN DETAILSbowlALL ON (HCCCResults.Opponent = DETAILSbowlALL.Opponent) AND (HCCCResults.Year = DETAILSbowlALL.Year)
GROUP BY DETAILSbowlALL.Name, HCCCResults.Year, Left([MatchComment],4)
HAVING (((Left([MatchComment],4))='Tour'));




