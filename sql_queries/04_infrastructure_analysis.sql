/*
Step 4: Infrastructure Analysis
Calculating the count of Acute Care vs. Critical Access hospitals by Ownership Type.
*/

SELECT
  CASE
    WHEN `Hospital Ownership` = 'Government - State' THEN 'Government State Owned'
    WHEN `Hospital Ownership` = 'Physician' THEN 'Physician'
    WHEN `Hospital Ownership` = 'Tribal' THEN 'Tribal'
    ELSE 'Other'
  END AS hospital_category,
  COUNTIF(`Hospital Type` = 'Acute Care Hospitals') AS acute_care_hospitals,
  COUNTIF(`Hospital Type` = 'Critical Access Hospital') AS critical_access_hospitals,
  COUNT(*) AS total_hospitals
FROM
  `hopital-readmissions.HCAHPS.hospital general information`
GROUP BY 1
ORDER BY total_hospitals DESC;
