CREATE TABLE survey_to_join AS
SELECT HospitalID, NurseCommAch, NurseCommImp, NurseCommDim, DocCommAch, DocCommImp, DocCommDim, ResponseAch, ResponseImp,
 ResponseDim , PainAch, PainImp, PainDim, MedCommAch, MedCommImp, MedCommDim, EnvAch, EnvImp, EnvDim, DischargeAch, DischargeImp, 
DischargeDim, OverallAch, OverallImp, OverallDim, BaseScore, ConsistencyScore
FROM survey_responses_hive;

CREATE TABLE hospital_to_join AS
SELECT *
FROM hospitals_hive;

CREATE TABLE hospital_with_rating_ER AS
SELECT * 
FROM hospital_to_join 
LEFT JOIN survey_to_join
ON hospital_to_join.ID = survey_to_join.HospitalID;

DROP TABLE hospital_to_join;
DROP TABLE survey_to_join;

CREATE TABLE measures_ER AS
SELECT * 
FROM measures_hive;

CREATE TABLE effective_care_ER AS 
SELECT HospitalID, Condition, MeasureID, MeasureName, Score, Sample, Footnote
FROM effective_care_hive;

CREATE TABLE readmissions_ER AS
SELECT HospitalID, MeasureID, MeasureName, NationalComp, Denominator, Score, LowEstimate, HighEstimate, Footnote
FROM readmissions_hive;

