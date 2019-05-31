
create view [dbo].[CavsSquadNumbers]
AS

SELECT TOP 100 percent CavsSquadNumbersPre.Name, min(CavsSquadNumbersPre.Year) AS FirstOfYear, min(CavsSquadNumbersPre.ID) AS FirstOfID
FROM CavsSquadNumbersPre
GROUP BY CavsSquadNumbersPre.Name
ORDER BY min(CavsSquadNumbersPre.Year), min(CavsSquadNumbersPre.ID);




