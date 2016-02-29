
select p.pid, pname, avg(pm.measureScore) as pmAvg from providers p, procedureMeasures pm where p.pid = pm.pid and pm.measureScore is not NULL group by p.pid, pname order by pmAvg DESC LIMIT 10;
