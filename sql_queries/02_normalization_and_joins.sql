/*
Step 2: Data Reconstruction
Joining HRRP (Readmissions), General Info (Ownership), and HCAHPS (Surveys) to 
recapture the 'Government State Owned' category and normalize Respiratory conditions.
*/

SELECT
  CASE
    WHEN hgi.`Hospital Ownership` = 'Government - State' THEN 'Government State Owned'
    WHEN hgi.`Hospital Ownership` = 'Physician' THEN 'Physician'
    WHEN hgi.`Hospital Ownership` = 'Tribal' THEN 'Tribal'
    ELSE 'Other'
  END AS hospital_category,
  CASE
    WHEN hrrp.`Measure Name` LIKE '%Pneumonia%' OR hrrp.`Measure Name` LIKE '%PN%' THEN 'Pneumonia (PN)'
    WHEN hrrp.`Measure Name` LIKE '%COPD%' THEN 'COPD'
  END AS condition,
  hr.`HCAHPS Question`,
  AVG(SAFE_CAST(hrrp.`Excess Readmission Ratio` AS FLOAT64)) AS avg_readmission_ratio,
  AVG(SAFE_CAST(hr.`HCAHPS Linear Mean Value` AS FLOAT64)) AS avg_satisfaction_score
FROM
  `hopital-readmissions.HCAHPS.HRRP` AS hrrp
INNER JOIN
  `hopital-readmissions.HCAHPS.hospital general information` AS hgi
  ON CAST(hrrp.`Facility ID` AS STRING) = CAST(hgi.`Facility ID` AS STRING)
INNER JOIN
  `hopital-readmissions.HCAHPS.hospital readmissions` AS hr
  ON CAST(hrrp.`Facility ID` AS STRING) = CAST(hr.`Facility ID` AS STRING)
WHERE
  (hrrp.`Measure Name` LIKE '%Pneumonia%' OR hrrp.`Measure Name` LIKE '%PN%' OR hrrp.`Measure Name` LIKE '%COPD%')
  AND hrrp.`Excess Readmission Ratio` NOT IN ('Not Available', 'Too Few Cases')
  AND hr.`HCAHPS Linear Mean Value` NOT IN ('Not Available', 'Not Applicable')
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3;
