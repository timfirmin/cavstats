﻿


CREATE VIEW [dbo].[DuckDiary2002]
AS
SELECT top 100 percent 2002 AS [Year], DETAILSbat2002.Opponent, DETAILSbat2002.Name, DETAILSbat2002.HowOut, DETAILSbat2002.ID
FROM DETAILSbat2002
WHERE (((DETAILSbat2002.HowOut)<>'not out') AND ((DETAILSbat2002.Score)=0))
ORDER BY DETAILSbat2002.ID;



