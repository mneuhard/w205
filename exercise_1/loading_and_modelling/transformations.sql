CREATE TABLE providers AS SELECT pid, pName, pState FROM providersRaw;
CREATE TABLE procedureMeasures AS SELECT pid, condition, measureId, measureName, measureScore FROM procedureMeasuresRaw;
CREATE TABLE survey AS SELECT pid, hbScore, hcScore FROM surveyRaw;
