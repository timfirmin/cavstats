

CREATE VIEW [dbo].[rstBowlingDetails]
AS
SELECT HCCCResults.MatchDate, DETAILSbowlALL.*
FROM DETAILSbowlALL INNER JOIN HCCCResults ON (DETAILSbowlALL.Opponent = HCCCResults.Opponent) AND (DETAILSbowlALL.Year = HCCCResults.Year);




