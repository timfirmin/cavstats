


CREATE view [dbo].[CavsBatALLSums]

 as

SELECT DETAILSbatALL.Name, 
Count(DETAILSbatALL.ID) AS Matches, 
Sum(case when [Score] IS not Null then 1 else 0 end) AS Innings, 
Sum(case when Left([HowOut],3)='Not' then 1 else (case when Left([HowOut],3)='Ret' then 1 else 0 end) end) AS NotOuts, 
Sum(isnull(DETAILSbatALL.Score,0)) AS Runs, 
Max(isnull(DETAILSbatALL.Score,0)) AS HighScore, 
Sum(case when [score]>49 then 1 else 0 end) AS Fifties

FROM DETAILSbatALL
WHERE Name is not null
GROUP BY DETAILSbatALL.Name;



