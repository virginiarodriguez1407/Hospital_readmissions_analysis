/* 
Step 7: Respiratory Satisfaction Baseline
Analysis of readmission ratios vs satisfaction scores specifically for respiratory diseases.
*/

SELECT
  Ownership_Group,
  Condition,
  `HCAHPS Question`,
  Avg_Readmission_Ratio,
  Avg_Satisfaction_Score,
  Hospital_Count
FROM 
  `hopital-readmissions.HCAHPS.respiratory_readmission_satisfaction_analysis`
ORDER BY Avg_Readmission_Ratio ASC;
