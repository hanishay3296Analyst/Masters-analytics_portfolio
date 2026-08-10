# Vista Bank — Customer Value & Campaign Response Analysis
**Course:** BUSINFO 700 | **Period:** Sep 2025 – Nov 2025  
**Tools:** SPSS, Linear Regression, Logistic Regression

## Business Problem
Vista Bank, a national retail bank offering savings, credit, and investment products,
needed to understand what drives customer value and which customers are most likely
to respond to a marketing campaign — enabling smarter segmentation and more
targeted outreach.

## Dataset
Bank customer dataset containing demographic, financial, and behavioural variables
including age, education, marital status, occupation, credit history, contact channel,
and prior campaign outcomes.

## Analysis 1 — Customer Account Balance (Linear Regression)
**Goal:** Identify which customer characteristics drive account balance (customer value)

**Method:** Linear regression in SPSS across demographic and financial predictors

**Key findings:**
| Driver | Direction |
|---|---|
| Credit default history | Strongest negative driver |
| Age | Positive effect |
| Education level | Positive effect |
| Marital status | Positive effect |
| Active credit products | Negative effect |

- Older, well-educated, and married customers consistently maintain higher balances
- Results statistically significant across thousands of customers

## Analysis 2 — Campaign Response Prediction (Logistic Regression)
**Goal:** Predict which customers will respond "Yes" to a marketing campaign

**Method:** Stepwise logistic regression (7 steps) in SPSS; classification accuracy
evaluated at cut value 0.120; all steps significant at p < .001

**Key findings:**
| Driver | Direction |
|---|---|
| Previous campaign success | Strongest positive predictor |
| Cellphone contact | Most effective channel |
| Active credit products | Reduces likelihood of acceptance |
| Over-contacting | Reduces responsiveness |

## Recommendations
- Focus retention efforts on older, educated, creditworthy customers
- Prioritise cellphone outreach for campaign targeting
- Avoid promoting additional credit products to high-risk segments
- Use predictive scoring to identify high-potential customers before campaign launch

## Note
Analysis conducted in SPSS — output available as presentation slides.
Code-based reproduction available in Python/R on request.
