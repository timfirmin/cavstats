



CREATE VIEW [dbo].[rstCavsBatAvgSeasonal]
AS


SELECT top 100 percent
CavsBatALLSumsSeasonal.Year,
 CavsBatALLSumsSeasonal.Name, 
 CavsBatALLSumsSeasonal.Matches, 
 CavsBatALLSumsSeasonal.Innings, 
 CavsBatALLSumsSeasonal.NotOuts, 
 CavsBatALLSumsSeasonal.Runs, 
 CavsBatALLSumsSeasonal.HighScore, 
 CavsBatALLSumsSeasonal.Fifties, 
LEFT( case when [Innings]>0 then (cast([Runs] as decimal(10,2))/([Innings]-[NotOuts])) else 0 end , 5) AS Average, 

 
 case when [Innings]>0 then ([Runs]/([Innings]-[NotOuts])) else 0 end AS AvgInt
 
FROM CavsBatALLSumsSeasonal
WHERE (((([Innings]-[NotOuts]))>0))
ORDER BY  case when [Innings]>0 then ([Runs]/([Innings]-[NotOuts])) else 0 end DESC;







