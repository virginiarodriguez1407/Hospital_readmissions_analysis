/*
Step 1: Exploration
Checking for the presence of Government-owned hospitals in the aggregated analysis table.
Result: Discovered that 'Government - State' was missing and likely grouped into 'Other'.
*/

SELECT DISTINCT 
  Ownership_Group 
FROM 
  `hopital-readmissions.HCAHPS.respiratory_readmission_satisfaction_analysis`;
