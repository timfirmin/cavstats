

CREATE VIEW [dbo].[rstWinLosePlayer] AS

SELECT TOP 100 PERCENT
DETAILSbatALL.Name, 
Count(DETAILSbatALL.ID) AS Matches, 
Sum(case when [MatchResult]='Won' then 1 else 0 end) AS WinCnt, 
cast(cast(Sum(case when [MatchResult]='Won' then 1 else 0 end) as decimal(10,2)) * 100 /Count([id]) as decimal(10,2)) AS WinPer, 
Sum(case when [MatchResult]='Lost' then 1 else 0 end) AS LossCnt, 
cast(cast(Sum(case when [MatchResult]='Lost' then 1 else 0 end) as decimal(10,2)) * 100 /Count([id]) as decimal(10,2)) AS LosePer
FROM DETAILSbatALL INNER JOIN HCCCResults ON (DETAILSbatALL.Opponent = HCCCResults.Opponent) AND (DETAILSbatALL.Year = HCCCResults.Year)
GROUP BY DETAILSbatALL.Name
HAVING (((Count(DETAILSbatALL.ID))>1))
ORDER BY cast(Sum(case when [MatchResult]='Won' then 1 else 0 end)/Count([id]) as decimal(10,2)) desc




