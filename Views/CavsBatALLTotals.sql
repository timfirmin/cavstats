

create view [dbo].[CavsBatALLTotals]
as



SELECT TOP 100 PERCENT 
CavsBatALLSums.Name, 
CavsBatALLSums.Matches, 
CavsBatALLSums.Innings, 
CavsBatALLSums.NotOuts, 
CavsBatALLSums.Runs, 
CavsBatALLSums.HighScore, 
CavsBatALLSums.Fifties, 
left(case when [Innings]>1 then cast([Runs] as decimal(10,2)) /([Innings]-[NotOuts]) else 0 end ,5) AS Average, 
case when [Innings]>1 then Left([Runs]/([Innings]-[NotOuts]),4) else 0 end AS AvgInt

FROM CavsBatALLSums

WHERE [Innings]-[NotOuts]>0

ORDER BY case when [Innings]>1 then Left([Runs]/([Innings]-[NotOuts]),4) else 0 end  DESC;


