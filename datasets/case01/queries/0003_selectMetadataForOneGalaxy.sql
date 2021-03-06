-- select the full color image of a single given galaxy
-- http://dev.lsstcorp.org/trac/wiki/dbQuery006

SELECT s.ra, s.decl, o.raRange, o.declRange
FROM   Object o
JOIN   Source s USING (objectId)
WHERE  o.objectId = 390034570102582
AND    o.latestObsTime = s.taiMidPoint
