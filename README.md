# Hospital_readmissions_analysis
A BigQuery &amp; Tableau healthcare analytics project investigating the correlation between hospital ownership models, patient satisfaction (HCAHPS), and readmission ratios. Identified key clinical drivers in state-owned, physician-led, and tribal hospital systems.
# Specialized Ownership & The Discharge Factor: Healthcare Readmission Analysis

## 📊 Project Overview
This project analyzes the **HCAHPS (Hospital Consumer Assessment of Healthcare Providers and Systems)** dataset to identify the root causes of hospital readmissions. By processing over 300,000 records using **Google BigQuery**, I investigated how different hospital ownership models—specifically **Government State-Owned, Physician-Owned, and Tribal**—impact clinical outcomes compared to general private sector hospitals.

## 🔍 Key Findings
*   **Ownership Matters:** Government State-Owned hospitals consistently show lower readmission ratios across critical conditions (PN, COPD, HF).
*   **The Discharge Factor:** Providing high-quality **Discharge Information** was identified as a statistically significant driver in reducing readmissions, outperforming the presence of Emergency Services (ER) in predictive relevance.
*   **Quality vs. Perception:** Clinical quality metrics (Readmission Ratios) do not always correlate with subjective Patient Satisfaction scores, highlighting a gap between clinical excellence and patient perception.

## 🛠️ Tools & Technologies
*   **SQL (Google BigQuery):** Used for large-scale data joining, cleaning, and multi-pathology aggregation (Pneumonia, COPD, Heart Failure).
*   **Tableau:** Developed dual-axis visualizations to correlate clinical outcomes with patient satisfaction.
*   **GCP (Google Cloud Platform):** Data hosted and processed in a cloud environment.

## 📁 Repository Structure
*   `/queries`: Contains SQL scripts for data normalization and ownership categorization.
*   `/visualizations`: Links to the interactive Tableau Public dashboard.
*   `/data_dictionary`: Brief explanation of the HCAHPS and HRRP metrics used.

## 📈 Methodology
1.  **Data Integration:** Joined `HRRP` (Readmission data) with `Hospital General Information` and `Hospital Readmissions` (HCAHPS) using `Facility ID`.
2.  **Normalization:** Converted non-numeric strings to numeric floats and filtered for statistically significant cases.
3.  **Categorization:** Isolated State-Owned, Physician-Owned, and Tribal hospitals from the general "Other" category to identify high-performance outliers.


## 👤 Author
**Dr. Virginia Rodriguez Henriquez, MD**
*Clinician & Healthcare Data Analyst*
*Specializing in Clinical Quality Metrics & SQL-Driven Insights*

[(https://www.linkedin.com/in/virginia-rodriguez-henriquez-9228a0270/)]

