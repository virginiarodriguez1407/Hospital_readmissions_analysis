/* 
Step 5: Clinical Performance Ranking
Aggregating overall clinical performance scores by Hospital Ownership.
*/

SELECT 
  `Hospital Ownership` AS Hospital_Ownership,
  COUNT(Overall_Clinical_Performance) AS hospital_count,
  AVG(Overall_Clinical_Performance) AS avg_clinical_performance
FROM 
  `hopital-readmissions.HCAHPS.ownership_clinical_ranking_final`
GROUP BY 1
ORDER BY avg_clinical_performance DESC;
