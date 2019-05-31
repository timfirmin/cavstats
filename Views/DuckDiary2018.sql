﻿
CREATE VIEW [dbo].[DuckDiary2018]
AS
SELECT top 100 percent 2018 AS [Year], DETAILSbat2018.Opponent, DETAILSbat2018.Name, DETAILSbat2018.HowOut, DETAILSbat2018.ID
FROM DETAILSbat2018
WHERE (((DETAILSbat2018.HowOut)<>'not out') AND ((DETAILSbat2018.Score)=0))
ORDER BY DETAILSbat2018.ID;
