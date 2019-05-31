
CREATE VIEW [dbo].[rstSquadNoDetails]
AS

SELECT rstSquadNumbers.NoSquad, rstSquadNumbers.CavName, DETAILSbatALL.Year, DETAILSbatALL.Opponent, DETAILSbatALL.Score
FROM rstSquadNumbers INNER JOIN DETAILSbatALL ON (rstSquadNumbers.CavDebutGameID = DETAILSbatALL.ID) AND (rstSquadNumbers.CavDebutYear = DETAILSbatALL.Year) AND (rstSquadNumbers.CavName = DETAILSbatALL.Name);




