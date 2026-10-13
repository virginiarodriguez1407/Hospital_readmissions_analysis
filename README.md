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

## 🚀 Analytical Workflow

This project followed a multi-stage clinical investigation, moving from initial data observation to a deep-dive infrastructure analysis.

### **Phase 1: Discovery & Problem Definition**
*   **Objective:** Initial audit of the aggregated respiratory analysis table.
*   **The Problem:** Observed that the summary data was too narrow, and high-performing `Government State Owned` hospitals were hidden within a generic "Other" category.
*   **Technical Steps:** [View Exploration Script](./sql_queries/01_exploration.sql) | [View Satisfaction Baseline](./sql_queries/07_respiratory_satisfaction_summary.sql)

### **Phase 2: Data Engineering & Multi-Condition Integration**
*   **Objective:** Reconstruct the dataset from raw HCAHPS and HRRP sources to ensure data integrity and pathology breadth.
*   **Clinical Focus:** Expanded the scope to include **Pneumonia (PN)**, **COPD**, and **Heart Failure (HF)** to see if ownership success was consistent across different organ systems (Respiratory vs. Cardiac).
*   **Technical Steps:** [View Normalization & Joins](./sql_queries/02_normalization_and_joins.sql) | [View Heart Failure Deep Dive](./sql_queries/03_heart_failure_deep_dive.sql) | [View Clinical Rankings](./sql_queries/05_clinical_rankings.sql)

### **Phase 3: Hypothesis Testing (The "ER Myth")**
*   **Objective:** Test if the presence of Emergency Services (ER) was the primary driver of lower readmission rates.
*   **The Discovery:** Data indicated that ER availability did not correlate strongly with lower readmissions. This shifted the focus toward organizational models and discharge protocols as the true drivers of quality.
*   **Technical Steps:** [View ER Impact Analysis](./sql_queries/06_er_impact_analysis.sql)

### **Phase 4: Clinical Infrastructure Analysis**
*   **Objective:** Identify common traits among top-performing ownership models (State, Tribal, and Physician-owned).
*   **Clinician Insight:** Identified that a high percentage of these top-performing facilities are **Critical Access Hospitals**. These smaller, specialized facilities often allow for the high-quality **Discharge Information** protocols that my analysis identified as a key success factor.
*   **Technical Steps:** [View Infrastructure Analysis](./sql_queries/04_infrastructure_analysis.sql)


## 👤 Author
**Dr. Virginia Rodriguez Henriquez, MD**
*Clinician & Healthcare Data Analyst*
*Specializing in Clinical Quality Metrics & SQL-Driven Insights*

[(https://www.linkedin.com/in/virginia-rodriguez-henriquez-9228a0270/)]

