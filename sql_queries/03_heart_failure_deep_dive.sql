/*
Step 3: Heart Failure Deep Dive
Isolating Heart Failure (HF) outcomes to compare against respiratory findings.
*/

SELECT
  CASE
    WHEN hgi.`Hospital Ownership` = 'Government - State' THEN 'Government State Owned'
    WHEN hgi.`Hospital Ownership` = 'Physician' THEN 'Physician'
    WHEN hgi.`Hospital Ownership` = 'Tribal' THEN 'Tribal'
    ELSE 'Other'
  END AS hospital_category,
  'Heart Failure' AS condition,
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
  (hrrp.`Measure Name` LIKE '%HF%' OR hrrp.`Measure Name` LIKE '%Heart Failure%')
  AND hrrp.`Excess Readmission Ratio` NOT IN ('Not Available', 'Too Few Cases')
GROUP BY 1, 2, 3
ORDER BY 1, 3;
