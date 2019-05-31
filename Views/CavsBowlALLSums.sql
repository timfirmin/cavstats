

create view [dbo].[CavsBowlALLSums]
as
SELECT 
DETAILSbowlALL.Name, 
Count(DETAILSbowlALL.ID) AS Matches, 
Sum(isnull(DETAILSbowlALL.Overs,0)) AS Overs, 
Sum(isnull(DETAILSbowlALL.Overs,0)*6) AS Balls, 
Sum(isnull(DETAILSbowlALL.Wickets,0)) AS Wickets, 
Sum(isnull(DETAILSbowlALL.Runs,0)) AS Runs

FROM DETAILSbowlALL
GROUP BY DETAILSbowlALL.Name
HAVING (((DETAILSbowlALL.Name) Is Not Null));


