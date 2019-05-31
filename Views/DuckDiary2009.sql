﻿


CREATE VIEW [dbo].[DuckDiary2009]
AS
SELECT top 100 percent 2009 AS [Year], DETAILSbat2009.Opponent, DETAILSbat2009.Name, DETAILSbat2009.HowOut, DETAILSbat2009.ID
FROM DETAILSbat2009
WHERE (((DETAILSbat2009.HowOut)<>'not out') AND ((DETAILSbat2009.Score)=0))
ORDER BY DETAILSbat2009.ID;


