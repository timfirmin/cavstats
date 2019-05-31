
CREATE VIEW [dbo].[rstRollofHonour]
AS


SELECT top 100 percent 
rTrim(substring([CavsBatALLSums].[name],3,20)) + Left([CavsBatALLSums].[name],1) AS UserName, 
CavsBatALLSums.Name AS CavsName, 
[CavsBatALLSums].[Matches] AS matches, 
CavsBatALLSums.Runs, 
left(case when [Innings]-[NotOuts]=0 then 0 else (case when [Innings]>1 then cast([CavsBatALLSums].[Runs] AS decimal(10,2)) /([Innings]-[NotOuts])  else 0 end ) end,5) AS BatAvg, 
CavsBatALLSums.HighScore AS TopScore, 
isnull(CavsBowlALLSums.Wickets,0) as Wickets
,left(case when isnull([Wickets],0) <1 then 0 else [CavsBowlALLSums].[Runs]/isnull([Wickets],0) end, 5) AS Average
FROM CavsBatALLSums LEFT JOIN CavsBowlALLSums ON CavsBatALLSums.Name = CavsBowlALLSums.Name
WHERE rTrim(substring([CavsBatALLSums].[name],3,20)) + Left([CavsBatALLSums].[name],1) Is Not Null
ORDER BY [CavsBatALLSums].[Matches] DESC;




