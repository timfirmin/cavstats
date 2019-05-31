
create view [dbo].[CavsBatALLSumsSeasonal]
as

SELECT     Year, Name, COUNT(ID) AS Matches, SUM(CASE WHEN [Score] IS NOT NULL THEN 1 ELSE 0 END) AS Innings, SUM(CASE WHEN LEFT([HowOut], 3) 
                      = 'Not' THEN 1 ELSE (CASE WHEN LEFT([HowOut], 3) = 'Ret' THEN 1 ELSE 0 END) END) AS NotOuts, SUM(ISNULL(Score, 0)) AS Runs, MAX(ISNULL(Score, 0)) 
                      AS HighScore, SUM(CASE WHEN [score] > 49 THEN 1 ELSE 0 END) AS Fifties
FROM         dbo.DETAILSbatALL
WHERE     (Name IS NOT NULL)
GROUP BY Name, Year


