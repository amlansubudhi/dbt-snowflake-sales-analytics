# Sales Analytics — dbt + Snowflake + Power BI

# End-to-End Data Analytics Project  
A complete analytics pipeline built using **dbt Core**, **Snowflake**, and **Power BI**, based on the Kaggle *Online Retail* dataset.  
This project demonstrates my hands-on skills in transforming raw data into business insights using modern data stack tools.

---

# Project Overview
This project follows the **Analytics Engineering** workflow:
1. **Extract & Load:** Data sourced from Kaggle's *Online Retail* dataset.
2. **Transform (dbt):**  
   - Created **staging** and **marts** models using SQL in dbt.  
   - Implemented **data quality tests** (unique, not null, relationships).  
   - Generated **auto documentation** using `dbt docs`.
3. **Visualize (Power BI):**  
   - Designed an interactive dashboard to analyze revenue trends, customer segmentation, and product performance.  

---

# Tech Stack
| Tool | Purpose |
|------|----------|
| **dbt Core** | Data modeling, testing, and documentation |
| **Snowflake** | Cloud data warehouse |
| **Power BI** | Data visualization and reporting |
| **SQL** | Transformation logic |

---

# Project Structure
dbt-snowflake-sales-analytics/
├── models/
│ ├── staging/
│ ├── marts/
│ └── schema.yml
├── seeds/
│ └── sample_data.csv
├── dbt_project.yml
├── dashboard_preview.png
└── README.md


# Key Learnings

Building modular SQL transformations using dbt.
Implementing automated data quality tests and documentation.
Connecting Snowflake with Power BI for near real-time reporting.
Designing clean and insightful dashboards for business KPIs.

# Dataset

Source: Kaggle — Online Retail Dataset
Size: ~ 0.5 million rows, 8 columns (Transactions from UK-based retailer)

# Author

👤 Amlan Subudhi
🔗 LinkedIn - https://www.linkedin.com/in/amlan-subudhi/
