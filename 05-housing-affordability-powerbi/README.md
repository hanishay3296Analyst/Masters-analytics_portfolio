# Global Housing Affordability — Power BI Dashboard
**Course:** BUSINFO 703 | **Period:** Apr 2026 – Jun 2026  
**Tools:** Power BI Desktop, Power Query, DAX, OECD Data Explorer

## Business Problem
Housing affordability has become a critical policy issue across OECD nations. This
project analyses 18 years of cross-country data to answer: how has housing
affordability changed since 2005, which countries face the greatest pressure, and
what is the relationship between price growth, mortgage debt, and household
spending burden?

## Data Sources (OECD Data Explorer)
| Dataset | Table |
|---|---|
| House prices / price-to-income index | HousePrices |
| Household mortgage loans | MortgageDebt |
| Housing expenditure | HousingExpenditure |

- Coverage: **≥5 countries, 2005–2023 (18 years)**
- All data sourced directly from OECD Data Explorer
- All cleaning and transformation performed entirely within **Power Query**
  (no preprocessing outside Power BI)

## Data Model
Star schema built entirely in Power BI:
- 3 fact tables: HousePrices, MortgageDebt, HousingExpenditure
- 2 dimension tables: Dim_Country, Dim_Year
- 1 Measures Table with named DAX measures
- One-to-many relationships between dimension and fact tables

## DAX Measures Created
- `Price_Income_Change_Since_2005`
- `Mortgage_Debt_Growth_Pct`
- `Housing_Expenditure_Growth_Pct`
- `Country_Affordability_Rank`

## Report Structure (4 pages + Dashboard)

### Page 1 — Summary & Sources
Key insight narrative and OECD dataset links

### Page 2 — Price–Income Gap
- Line chart: Price-to-Income Index by Country (2005–2023)
- **Slope chart** *(custom visual)*: Price-to-Income Index 2005 vs 2023
- Pivot table: Country Affordability Rankings Over Time
- KPI card: Price-Income Change Since 2005
- Dynamic Country and Year slicers

### Page 3 — Debt Exposure
- Clustered bar chart: Mortgage Debt Growth Since 2005 (%)
- Line chart: Household Mortgage Loans Over Time
- KPI card: Debt Growth % vs 2005

### Page 4 — Housing Burden
- Bar chart: Housing Expenditure Growth Since 2005 (%)
- **Scatter chart:** Price Pressure vs Housing Burden
  (price-income change vs expenditure growth by country)
- Line chart: Housing Expenditure Over Time
- KPI card: Housing Expenditure Growth % vs 2005

### Dashboard
Published to Power BI Service with Viewer permissions — coherent narrative
guiding audience from affordability gap → debt exposure → spending burden

## Note
The interactive `.pbix` file and published dashboard are available on request.
Screenshots of key visuals available in the `/screenshots` subfolder.
