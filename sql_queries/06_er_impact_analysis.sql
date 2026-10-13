/* 
Step 6: ER Impact Analysis
Comparing readmission ratios for HF, Pneumonia, and COPD based on 
the presence of Emergency Services and Hospital Ownership.
*/

SELECT
  CASE
    WHEN `Hospital Ownership` = 'Government - State' THEN 'Government State Owned'
    WHEN `Hospital Ownership` = 'Physician' THEN 'Physician'
    WHEN `Hospital Ownership` = 'Tribal' THEN 'Tribal'
    ELSE 'Other'
  END AS hospital_category,
  `Emergency Services`,
  AVG(Avg_Heart_Failure_Ratio) AS avg_hf_ratio,
  AVG(Avg_Pneumonia_Ratio) AS avg_pn_ratio,
  AVG(Avg_COPD_Ratio) AS avg_copd_ratio,
  AVG(Avg_Survey_Star_Rating) AS avg_star_rating
FROM 
  `hopital-readmissions.HCAHPS.comprehensive_readmission_outcomes_with_er`
GROUP BY 1, 2
ORDER BY 1, 2;
