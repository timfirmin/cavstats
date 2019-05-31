

CREATE VIEW [dbo].[CavsTouristsBatPre]
AS

SELECT Count(HCCCResults.MatchID) AS [TourMatch#], DETAILSbatALL.Name, DETAILSbatALL.Year, Sum(DETAILSbatALL.Score) AS SumOfScore
FROM HCCCResults INNER JOIN DETAILSbatALL ON (HCCCResults.Opponent = DETAILSbatALL.Opponent) AND (HCCCResults.Year = DETAILSbatALL.Year)
GROUP BY DETAILSbatALL.Name, DETAILSbatALL.Year, Left([MatchComment],4)
HAVING (((Left([MatchComment],4))='Tour'));



