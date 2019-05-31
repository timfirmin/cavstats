


CREATE VIEW [dbo].[CavsTouristBowlSummary]
AS
SELECT TOP 100 percent CavsTouristsBowlPre.Name, Sum(CavsTouristsBowlPre.SumOfOvers) AS TourOvers, Sum(CavsTouristsBowlPre.SumOfWickets) AS TourWickets, Sum(CavsTouristsBowlPre.BowlRuns) AS TourBowlRuns
FROM CavsTouristsBowlPre
GROUP BY CavsTouristsBowlPre.Name;


