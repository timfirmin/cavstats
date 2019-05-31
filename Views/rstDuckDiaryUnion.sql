

CREATE VIEW [dbo].[rstDuckDiaryUnion]
AS

SELECT * from DuckDiary1999
UNION SELECT DuckDiary2000.* from DuckDiary2000
UNION SELECT DuckDiary2001.* from DuckDiary2001
UNION SELECT DuckDiary2002.* from DuckDiary2002
UNION SELECT DuckDiary2003.* from DuckDiary2003
UNION SELECT DuckDiary2004.* from DuckDiary2004
UNION SELECT DuckDiary2005.* from DuckDiary2005
UNION SELECT DuckDiary2006.* from DuckDiary2006
UNION SELECT DuckDiary2007.* from DuckDiary2007
UNION SELECT DuckDiary2008.* from DuckDiary2008
UNION SELECT DuckDiary2009.* from DuckDiary2009
UNION SELECT DuckDiary2010.* from DuckDiary2010
UNION SELECT DuckDiary2011.* from DuckDiary2011
UNION SELECT DuckDiary2012.* from DuckDiary2012
UNION SELECT DuckDiary2013.* from DuckDiary2013
UNION SELECT DuckDiary2014.* from DuckDiary2014
UNION SELECT DuckDiary2015.* from DuckDiary2015
UNION SELECT DuckDiary2016.* from DuckDiary2016
UNION SELECT DuckDiary2017.* from DuckDiary2017
UNION SELECT DuckDiary2018.* from DuckDiary2018


