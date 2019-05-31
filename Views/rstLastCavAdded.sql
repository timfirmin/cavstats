

CREATE VIEW [dbo].[rstLastCavAdded]
AS

SELECT rstSquadNumbers.CavName
FROM rstSquadNumbers
WHERE rstSquadNumbers.NoSquad=

(SELECT Max(rstSquadNumbers.NoSquad) AS MaxOfNoSquad FROM rstSquadNumbers);




