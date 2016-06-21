SELECT MeasureName, avg(Score), std(Score) AS STDDEV
FROM effective_care_ER
GROUP BY effective_care_ER.MeasureName
ORDER BY STDDEV DESC
LIMIT 10;






