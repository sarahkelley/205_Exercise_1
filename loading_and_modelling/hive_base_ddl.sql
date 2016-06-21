DROP TABLE measures_hive;
CREATE EXTERNAL TABLE measures_hive (`Name` string, `ID` string, `StartQ` string, `StartD` string, `EndQ` string, `EndD` string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/Exercise_1/hospitals_compare/measures';

DROP TABLE hospitals_hive;
CREATE EXTERNAL TABLE hospitals_hive (ID string, Name string, Address string, City string, State string, ZIP string, County string, Phone string, Type string, Ownership string, EmergencyServices string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/Exercise_1/hospitals_compare/hospitals';

DROP TABLE effective_care_hive;
CREATE EXTERNAL TABLE effective_care_hive (HospitalID string, HospitalName string, Address string, City string, State string, ZIP string, County string, Phone string, Condition string, MeasureID string, MeasureName string, Score string, Sample string, Footnote string, StartD string, EndD string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/Exercise_1/hospitals_compare/effective_care';

DROP TABLE readmissions_hive;
CREATE EXTERNAL TABLE readmissions_hive (HospitalID string, HospitalName string, Address string, City string, State string, ZIP string, County string, Phone string, MeasureID string, MeasureName string, NationalComp string, Denominator string, Score string, LowEstimate string, HighEstimate string, Footnote string, StartD string, EndD string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/Exercise_1/hospitals_compare/readmissions';

DROP TABLE survey_responses_hive;
CREATE EXTERNAL TABLE survey_responses_hive (HospitalID string,
HospitalName string,
Address string,
 City string, 
 State string, 
ZIP string, 
County string, 
 NurseCommAch string, 
NurseCommImp string, 
NurseCommDim string, 
DocCommAch string, 
DocCommImp string, 
DocCommDim string,
ResponseAch string, 
ResponseImp string,
ResponseDim string, 
PainAch string, 
PainImp string,
PainDim string, 
MedCommAch string,
MedCommImp string, 
MedCommDim string,
EnvAch string,
EnvImp string,
EnvDim string,
DischargeAch string,
DischargeImp string, 
DischargeDim string,
OverallAch string,
OverallImp string,
OverallDim string,
BaseScore string,
ConsistencyScore string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/Exercise_1/hospitals_compare/survey_responses';


