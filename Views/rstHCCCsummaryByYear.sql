


CREATE VIEW [dbo].[rstHCCCsummaryByYear]
AS

SELECT HCCCResults.Year, 
Sum(case when [MatchResult]= 'Won' then 1 else 0 end) AS Wins, 
Sum(case when [MatchResult]= 'Lost' then 1 else 0 end) AS Lost, 
Sum(case when [MatchResult]= 'Draw' then 1 else 0 end) AS Draw
FROM HCCCResults
GROUP BY HCCCResults.Year;


