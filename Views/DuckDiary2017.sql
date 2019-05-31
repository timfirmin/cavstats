﻿CREATE VIEW [dbo].[DuckDiary2017]
AS
SELECT top 100 percent 2017 AS [Year], DETAILSbat2017.Opponent, DETAILSbat2017.Name, DETAILSbat2017.HowOut, DETAILSbat2017.ID
FROM DETAILSbat2017
WHERE (((DETAILSbat2017.HowOut)<>'not out') AND ((DETAILSbat2017.Score)=0))
ORDER BY DETAILSbat2017.ID;
