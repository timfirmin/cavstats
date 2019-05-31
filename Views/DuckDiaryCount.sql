



CREATE VIEW [dbo].[DuckDiaryCount]
AS

SELECT Name AS Expr1, Count(Name) AS [Duck Count]
FROM rstDuckDiaryUnion
GROUP BY Name;


