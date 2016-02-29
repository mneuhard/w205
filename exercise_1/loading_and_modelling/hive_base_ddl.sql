CREATE EXTERNAL TABLE IF NOT EXISTS providersRaw
(pid int, 
pName string, 
pAddress string, 
pCity string, 
pState string,
pZip string,
pCounty string,
pPhone string,
pType string,
pOwner string,
pEmergency string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/provider';

CREATE EXTERNAL TABLE IF NOT EXISTS procedureMeasuresRaw
(pid int, 
pName string, 
pAddress string, 
pCity string, 
pState string,
pZip string,
pCounty string,
pPhone string,
condition string,
measureId string,
measureName string,
measureScore int,
sample int,
footnote string,
measureStartDate date,
measureEndDate date
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/effective';

CREATE EXTERNAL TABLE IF NOT EXISTS surveyRaw
(pid int,pName string, 
pAddress string, 
pCity string, 
pState string,
pZip string,
pCounty string,
c1 string,
c2 string, 
c3 string, 
c4 string,
c5 string,
c6 string,
r1 string,
r2 string,
r3 string,
r4 string,
p1 string,
p2 string,
cm1 string,
cm2 string,
cm3 string,
cq1 string, 
cq2 string, 
cq3 string, 
d1 string, 
d2 string, 
d3 string, 
o1 string, 
o2 string,
o3 string,
hbScore int,	
hcScore int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1/survey';