# KoruChargeNZ — Customer Churn Prediction
**Course:** BUSINFO 704 | **Period:** Jan 2026 – Mar 2026 | **Tools:** R, tidymodels, LightGBM, XGBoost, Quarto

## Business Problem
KoruCharge, a nationwide EV charging network in Aotearoa New Zealand, was experiencing
rising customer churn. As a data consultancy team, the goal was to predict which
customers were at risk of leaving and identify the key operational drivers of churn.

## Dataset
- 200,000 customers × 25 variables
- Features: charging behaviour, billing events, app reliability, plan tier, regional conditions
- Target: retained (Churned / Retained)

## Approach
- 5 algorithms × 3 feature engineering strategies = 15 model configurations
- 5-fold stratified cross-validation
- Class imbalance handled via upsampling

## Results
| Metric | Score |
|---|---|
| ROC AUC | 0.954 |
| Sensitivity | 0.893 |
| Accuracy | 0.877 |
| Specificity | 0.870 |

## Top Churn Drivers (Odds Ratios)
| Driver | Odds Ratio |
|---|---|
| Weeks since last charge | 21.81 |
| Recent payment failure | 2.84 |
| Average charging wait time | 2.57 |

## Files
- `KoruchargeAnalysis.qmd` — Full R Quarto analysis including data prep, model tournament, final model, and odds ratio visualisation
