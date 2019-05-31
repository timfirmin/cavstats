


CREATE VIEW [dbo].[CavsTouristHistory]
AS

SELECT TOP 100 PERCENT 
CavsTouristBatSummary.Name, 
CavsTouristBatSummary.ToursAttended, 
CavsTouristBatSummary.TourMatches, 
isnull(CavsTouristBatSummary.TourRuns,0) as TourRuns,
isnull(CavsTouristBowlSummary.TourOvers,0) as TourOvers,
isnull(CavsTouristBowlSummary.TourWickets,0) as  TourWickets,
left([TourBowlRuns]/([TourWickets] + 0.0001),5) AS TourBowlAvg, 
left([TourRuns]/([TourMatches] + 0.0001),5) AS TourBatAvg
FROM CavsTouristBatSummary LEFT JOIN CavsTouristBowlSummary ON CavsTouristBatSummary.Name = CavsTouristBowlSummary.Name

ORDER BY CavsTouristBatSummary.ToursAttended DESC , CavsTouristBatSummary.TourMatches DESC;



