SELECT State, avg(hospital_with_rating_ER.BaseScore), avg(readmissions_ER.Score), std(readmissions_ER.Score), avg(effective_care_ER.Score), std(effective_care_ER.Score), ((100 - avg(readmissions_ER.Score)) + avg(effective_care_ER.Score))/2 AS total
FROM hospital_with_rating_ER, readmissions_ER, effective_care_ER
WHERE readmissions_ER.HospitalID = hospital_with_rating_ER.ID AND effective_care_ER.HospitalID = hospital_with_rating_ER.ID
GROUP BY hospital_with_rating_ER.State
ORDER BY total DESC
LIMIT 10;
