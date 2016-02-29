
select (avg(X*Y) - avg(X) * avg(Y)) /(avg(stdX) * avg(stdY)) as procedurescorrelation from (select pid, measureScore as Y, avgY, stdY from procedureMeasures, (select avg(y.mS) as avgY, stddev_pop(mS) as stdY from (select pid, pm.measureScore as mS from procedureMeasures pm where pm.measureScore is not NULL) y) yA where measureScore is not NULL) mY, (select pid, hbScore as X, avgX, stdX from survey, (select  avg (x.hbScore) as avgX, stddev_pop(x.hbScore) as stdX from (select pid, hbScore from survey where hbScore is not NULL) x) xA where hbScore is not NULL) sX where sX.pid = mY.pid;


select (avg(X*Y) - avg(X) * avg(Y)) /(avg(stdX) * avg(stdY)) as variabilitycorrelation from (select pid, (max(measureScore) - min(measureScore)) as Y, avgY, stdY from procedureMeasures, (select avg(pmDiff) as avgY, stddev_pop(pmDiff) as stdY from (select pid, (max(measureScore) - min(measureScore)) as pmDiff from procedureMeasures where measureScore is not NULL group by pid) y) yA where measureScore is not NULL group by pid, stdY, avgY) mY, (select pid, hbScore as X, avgX, stdX from survey, (select  avg (x.hbScore) as avgX, stddev_pop(x.hbScore) as stdX from (select pid, hbScore from survey where hbScore is not NULL) x) xA where hbScore is not NULL) sX where sX.pid = mY.pid;



