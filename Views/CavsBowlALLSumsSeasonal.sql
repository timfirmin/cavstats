


create view [dbo].[CavsBowlALLSumsSeasonal]
as

SELECT     Year, Name, COUNT(ID) AS Matches, SUM(ISNULL(Overs, 0)) AS Overs, SUM(ISNULL(Overs, 0) * 6) AS Balls, SUM(ISNULL(Wickets, 0)) AS Wickets, SUM(ISNULL(Runs,
                       0)) AS Runs
FROM         dbo.DETAILSbowlALL
GROUP BY Name, Year
HAVING      (Name IS NOT NULL)



