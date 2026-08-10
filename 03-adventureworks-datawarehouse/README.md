# AdventureWorks — Cloud Data Warehouse & Sales Analytics
**Course:** BUSINFO 702 | **Period:** Jan 2026 – Mar 2026  
**Tools:** Azure SQL Database, Azure Data Factory, T-SQL, CTEs, Star Schema

## Business Problem
Adventure Works Cycles, a multinational bicycle manufacturer operating across North
American, European, and Asian markets, needed a cloud-based analytical foundation
to support strategic expansion decisions across product mix, regional demand,
pricing strategy, and customer loyalty.

## Dataset
- 121,317 sales transactions — May 2011 to June 2014
- 7 global regions: Southwest, Northwest, Canada, Australia, France, UK, Germany
- 10 source tables extracted from Adventure Works OLTP database

## Data Warehouse Design
- **Star schema:** FactSales + DimDate + DimProduct + DimCustomer + DimTerritory
- **ETL pipeline:** 5 Azure Data Factory dataflows extracting from 10 source tables
- Pipeline execution ordered to respect foreign key constraints
- DimProduct built via LEFT OUTER JOINs across Product, ProductSubcategory, ProductCategory
- DiscountAmount calculated as a derived field: UnitPrice × OrderQty − LineTotal

## SQL Analyses (4 Queries)

### Q1 — Category Revenue & Year-over-Year Change
- Bikes dominated at ~86% of total revenue
- Bikes peak revenue in 2013: $36.3M; strongest YoY growth in 2012 (+$17.0M)
- All non-Bike categories peaked in 2013

### Q2 — Regional Customer Purchasing Patterns
- Germany fastest-growing: revenue up ~4.6× ($550K → $2.57M) from 2012 to 2013
- France grew 140%+ with nearly 4× customer increase
- Average order value dilution across all regions driven by rapid customer base expansion

### Q3 — Discount Levels vs Sales Volume
- 0% discount tier drove highest baseline volume (82,742 Bike units)
- Deep discounting (>10%) most effective for Clothing (avg items/order: 3 → 37 units)
- Moderate discounting (5–10%) ~16× more margin-efficient than deep discounts for Bikes
- >10% Bike discount band: $397K in discounts for $1.35M revenue vs 5–10% band: $409K revenue with only $25.6K in discounts

### Q4 — Repeat Purchase & Loyalty Tiers ⭐ My Contribution
Designed and built the loyalty segmentation query using two CTEs:
- `CustomerActivity` — filters to
