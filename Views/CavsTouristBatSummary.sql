





CREATE VIEW [dbo].[CavsTouristBatSummary]
AS
SELECT TOP 100 percent CavsTouristsBatPre.Name, Count(CavsTouristsBatPre.Year) AS ToursAttended, Sum(CavsTouristsBatPre.SumOfScore) AS TourRuns, Sum(CavsTouristsBatPre.[TourMatch#]) AS TourMatches
FROM CavsTouristsBatPre
GROUP BY CavsTouristsBatPre.Name
ORDER BY Count(CavsTouristsBatPre.Year) DESC , Sum(CavsTouristsBatPre.[TourMatch#]) DESC;



