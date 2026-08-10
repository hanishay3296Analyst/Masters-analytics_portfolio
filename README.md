# MBAn Analytics Portfolio
**Hanisha Yanamadala**  
Master of Business Analytics (FinTech) — University of Auckland (Expected Dec 2026)  
📧 hanishay3296@gmail.com | 📍 Auckland, New Zealand

---

## About This Portfolio

This repository contains six data analytics projects completed as part of the Master of Business Analytics (FinTech) programme at the University of Auckland. Projects span the full analytics stack — from data engineering and statistical modelling to machine learning and business intelligence — using Python, R, SQL, Power BI, Azure, and Excel.

All projects were completed in a group setting. Where noted, individual contributions are identified.

---

## Projects

### 1. 🏦 Vista Bank — Customer Value & Campaign Response Analysis
**Period:** Sep 2025 – Nov 2025 | **Course:** BUSINFO 700  
**Tools:** SPSS, Linear Regression, Logistic Regression

Analysed customer data for a national retail bank to identify drivers of account balance and predict marketing campaign response.

- **Linear regression** identified age, education, and marital status as the strongest positive drivers of account balance; credit default history was the strongest negative driver
- **Logistic regression** (7-step stepwise model) predicted campaign response — prior campaign success and cellphone contact were the top predictors; all steps significant at p < .001
- Delivered targeted recommendations for customer segmentation and campaign channel strategy

📁 [`/01-vistabank-regression`](./01-vistabank-regression)

---

### 2. 📊 Retirement Adequacy — Monte Carlo Simulation & Scenario Planning
**Period:** Sep 2025 – Nov 2025 | **Course:** BUSINFO 705  
**Tools:** Microsoft Excel, Monte Carlo Simulation

Evaluated whether a 40-year-old investor (NZD 95k salary, 7.5% KiwiSaver contributions) could fund a NZD 205k annual retirement income at age 65.

- Required capital calculated at **NZD 5,126,900** using the 4% safe withdrawal rule
- **5,000-trial Monte Carlo simulation**: mean real terminal value NZD 371,751 — just 7.3% of target; zero trials achieved the required capital
- Four scenario analysis (Base Case / Growth Tilt / Higher Contributions / Downside): best outcome (Higher Contributions) produced NZD 1,102,516 — still only 21.5% of target
- Recommended increasing contributions to 12–15%, growth-tilted asset allocation, and extended working horizon

📁 [`/02-retirement-monte-carlo`](./02-retirement-monte-carlo)

---

### 3. 🚲 AdventureWorks — Cloud Data Warehouse & Sales Analytics
**Period:** Jan 2026 – Mar 2026 | **Course:** BUSINFO 702  
**Tools:** Azure SQL Database, Azure Data Factory, T-SQL, CTEs, Star Schema

Designed and built a cloud data warehouse for AdventureWorks Cycles, a multinational bicycle manufacturer, analysing 121,317 sales transactions (May 2011 – Jun 2014) across 7 global regions.

- Designed a **star schema** (FactSales + 4 dimension tables) from 10 source tables across Sales, Production, and Person schemas
- Built **5 Azure Data Factory dataflows** with full ETL pipeline; pipeline execution ordered to respect foreign key constraints
- Wrote **4 analytical SQL queries** using CTEs addressing: YoY category revenue, regional purchasing patterns, discount efficiency, and repeat purchase behaviour
- **My contribution (Q4 — Loyalty Tier Analysis):** Designed the loyalty segmentation query classifying customers into Occasional / Regular / Loyalist tiers. Key finding: 930 Bike Loyalists generated **$64.58M** — average spend of **$69,446/customer**, ~20x higher than occasional buyers

📁 [`/03-adventureworks-datawarehouse`](./03-adventureworks-datawarehouse)

---

### 4. ⚡ KoruChargeNZ — Customer Churn Prediction
**Period:** Jan 2026 – Mar 2026 | **Course:** BUSINFO 704  
**Tools:** R, tidymodels, LightGBM, XGBoost, Random Forest, Logistic Regression, Quarto

Built a machine learning churn prediction system for KoruCharge, a fictitious nationwide EV charging network in Aotearoa New Zealand, using a dataset of **200,000 customers** and 25 behavioural and operational variables.

- **Model tournament:** 5 algorithms × 3 feature engineering strategies = 15 configurations evaluated via 5-fold stratified cross-validation
- **All 15 configurations achieved ROC AUC > 0.94**
- **Final model (Logistic Regression):** ROC AUC **0.954**, Sensitivity **0.893**, Accuracy **0.877**, Specificity **0.870** on 25% holdout test set
- **Top churn drivers (odds ratios):** Weeks since last charge (OR = 21.81), payment failure (OR = 2.84), average charging wait time (OR = 2.57)
- Class imbalance addressed via upsampling; interaction terms tested between plan tier × wait time and price change × payment failure

📁 [`/04-korucharge-churn-prediction`](./04-korucharge-churn-prediction)

---

### 5. 🏠 Global Housing Affordability — Power BI Dashboard
**Period:** Apr 2026 – Jun 2026 | **Course:** BUSINFO 703  
**Tools:** Power BI, Power Query, DAX, OECD Data Explorer

Designed and built a 4-page interactive Power BI report analysing housing affordability trends across multiple countries from 2005 to 2023, using OECD data sourced independently.

- **Data model:** Star schema built entirely in Power BI — 3 fact tables (HousePrices, MortgageDebt, HousingExpenditure) + Dim_Country + Dim_Year + Measures Table
- All data cleaning and transformation performed in **Power Query** (no preprocessing outside Power BI)
- Created named **DAX measures** including Price_Income_Change_Since_2005, Mortgage_Debt_Growth_Pct, Housing_Expenditure_Growth_Pct
- **4 report pages:** Summary & Sources → Price–Income Gap (includes slope chart custom visual) → Debt Exposure → Housing Burden (scatter: price pressure vs spending burden)
- Published to Power BI Service with interactive dashboard

📁 [`/05-housing-affordability-powerbi`](./05-housing-affordability-powerbi)

---

### 6. 🚬 Tobacco Policy & Lung Cancer Mortality — U.S. Panel Data Analysis
**Period:** Apr 2026 – Jun 2026 | **Course:** BUSINFO 701  
**Tools:** Python, Pandas, NumPy, Matplotlib, BeautifulSoup, Requests, Jupyter Notebook

Built a reproducible state-year panel dataset from four CDC public datasets to investigate how cigarette excise tax policy relates to smoking behaviour and downstream lung cancer mortality across all 50 U.S. states.

- **ETL pipeline:** Merged 4 CDC datasets (211,659 + 15,300 + 875 + 1,218 raw rows) into a clean 2,805-row × 13-column panel; zero duplicate state-year keys
- **Feature engineering:** Year-on-year change variables; 10-, 15-, and 20-year lagged smoking prevalence variables
- **Q1 — Tax vs Consumption:** Same-year correlation r = **−0.658**; estimated −22.04 packs per $1 higher tax; a $1 increase → ~15M fewer packs for a median-sized state
- **Q2 — Lagged Smoking vs Mortality:** 10-year lag r = **0.836** (strongest); tax environment did not moderate the relationship (difference of only 0.017 between low- and high-tax states)
- **Q3 — Policy Efficiency:** Tax increase vs smoking decline r = 0.268; top efficiency states: Texas, Delaware, Maryland, Florida, New Hampshire
- **Web scraping:** Collected CDC STATE System legislation data (smokefree laws, minimum legal sales age) using BeautifulSoup as a proof-of-concept policy extension

📁 [`/06-tobacco-policy-panel-data`](./06-tobacco-policy-panel-data)

---

## Skills Demonstrated

| Skill Area | Tools |
|---|---|
| Programming | Python (Pandas, NumPy, Matplotlib, BeautifulSoup), R (tidymodels, tidyverse) |
| Machine Learning | Logistic Regression, Random Forest, XGBoost, LightGBM, Naïve Bayes |
| Data Engineering | Azure SQL Database, Azure Data Factory, T-SQL, ETL, Star Schema Design |
| Business Intelligence | Power BI, Power Query, DAX, Dashboard Design |
| Statistical Analysis | Linear Regression, Logistic Regression, Monte Carlo Simulation, Panel Data |
| Tools & Platforms | Jupyter Notebook, Quarto, SPSS, Microsoft Excel, GitHub |

---

## Contact

💼 [LinkedIn](https://www.linkedin.com/in/hanishay3296)  
📧 hanishay3296@gmail.com  
📍 Auckland, New Zealand — Full working rights
