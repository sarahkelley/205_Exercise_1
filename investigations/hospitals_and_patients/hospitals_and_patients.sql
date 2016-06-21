SELECT Name, ((100 - avg(readmissions_ER.Score)) + avg(effective_care_ER.Score))/2 AS total, (total - 100
FROM hospital_with_rating_ER, readmissions_ER, effective_care_ER
GROUP BY Name
LIMIT 10; 