

create view [dbo].[CavsBowlALLTotals]
as


SELECT top 100 percent CavsBowlALLSums.Name, 
CavsBowlALLSums.Matches, 
CavsBowlALLSums.Overs, 
CavsBowlALLSums.Wickets, 
left(case when [wickets]>0 then [Runs]/[Wickets] else 0 end, 5) AS Average, 
cast([runs]/[Overs] as decimal(10,2)) AS Economy, 
CavsBowlALLSums.Runs, 
case when [wickets]>0 then [Runs]/[Wickets] else 0 end AS AvgNo


FROM CavsBowlALLSums
where [Wickets] > 0 and Runs > 0
ORDER BY case when [wickets]>0 then [Runs]/[Wickets] else 0 end




