

CREATE VIEW [dbo].[rstBattingDetails]
AS
SELECT top 100 percent HCCCResults.MatchDate, DETAILSbatALL.*
FROM DETAILSbatALL INNER JOIN HCCCResults ON (DETAILSbatALL.Opponent = HCCCResults.Opponent) AND (DETAILSbatALL.Year = HCCCResults.Year)
ORDER BY HCCCResults.MatchDate;





