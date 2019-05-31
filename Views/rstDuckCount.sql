

CREATE VIEW [dbo].[rstDuckCount]
AS
SELECT     TOP (100) PERCENT dbo.rstDuckDiaryUnion.Name, COUNT(dbo.rstDuckDiaryUnion.ID) AS Ducks, dbo.CavsBatALLTotals.Innings, 
                      LEFT(COUNT(CAST(dbo.rstDuckDiaryUnion.ID AS decimal(10, 2))) / CAST(dbo.CavsBatALLTotals.Innings AS decimal(10, 2)) * 100, 6) AS PerDucks, 
                      COUNT(CAST(dbo.rstDuckDiaryUnion.ID AS decimal(10, 2))) / CAST(dbo.CavsBatALLTotals.Innings AS decimal(10, 2)) * 100 AS SortDucks
FROM         dbo.rstDuckDiaryUnion LEFT OUTER JOIN
                      dbo.CavsBatALLTotals ON dbo.rstDuckDiaryUnion.Name = dbo.CavsBatALLTotals.Name
WHERE     (dbo.CavsBatALLTotals.Innings > 1)
GROUP BY dbo.rstDuckDiaryUnion.Name, dbo.CavsBatALLTotals.Innings
ORDER BY COUNT(CAST(dbo.rstDuckDiaryUnion.ID AS decimal(10, 2))) / CAST(dbo.CavsBatALLTotals.Innings AS decimal(10, 2)) * 100 DESC


