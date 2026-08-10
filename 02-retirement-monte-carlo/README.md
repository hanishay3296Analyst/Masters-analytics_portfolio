# Retirement Adequacy — Monte Carlo Simulation & Scenario Planning
**Course:** BUSINFO 705 | **Period:** Sep 2025 – Nov 2025  
**Tools:** Microsoft Excel, Monte Carlo Simulation, Scenario Analysis

## Business Problem
Evaluated whether Daniel, a 40-year-old civil engineer (NZD 95k salary, 7.5% total
KiwiSaver contributions: 5% employee + 2.5% employer), is on track to fund his
desired retirement lifestyle at age 65 — including a coastal holiday home, overseas
travel, and NZD 205k annual income.

## Methodology

### Required Capital Calculation
- Current spending: NZD 125,000/year
- Inflation-adjusted target (2% × 25 years): **NZD 205,076/year**
- Required capital using 4% safe withdrawal rule: **NZD 5,126,900**

### Portfolio Assessment
| Fund | Allocation | Return | Volatility |
|---|---|---|---|
| KiwiBond Secure | 35% | Low | Low |
| Balanced Horizons | 35% | Medium | Medium |
| Global Growth Equity | 30% | 9.75% | 19% |

- Weighted average return: **6.12%** | Portfolio risk: **10–11%**

### Monte Carlo Simulation (5,000 trials)
- Salary growth: Normal distribution (mean 2.8%, SD 0.5%)
- Portfolio returns: Normal distribution (mean 6.12%, SD 10%)
- Horizon: 25 years | Inflation: 2%

## Results

### Simulation Outcomes
| Statistic | Nominal (NZD) | Real (NZD) |
|---|---|---|
| Mean | 552,812 | 371,751 |
| Maximum | 1,490,286 | 908,375 |
| Minimum | 197,434 | 120,342 |
| Std Deviation | 173,563 | 105,792 |

- Mean real balance supports only **NZD 14,870/year** — just **7.3% of target**
- **Zero trials** achieved the NZD 5.13M required capital
- Best case (maximum) covers only **17.7%** of the goal

### Four Scenario Comparisons
| Scenario | Final Balance | Safe Withdrawal | Gap to Target |
|---|---|---|---|
| Base Case | NZD 551,258 | NZD 22,050 | NZD 182,950 |
| Growth Tilt | NZD 650,085 | NZD 26,003 | NZD 178,997 |
| Higher Contributions (12–15%) | NZD 1,102,516 | NZD 44,101 | NZD 160,899 |
| Downside | NZD 435,346 | NZD 17,414 | NZD 187,586 |

## Recommendations
1. Increase contributions to **12–15%** of salary immediately
2. Shift to **growth-tilted portfolio** during accumulation phase
3. Extend working horizon by **2–3 years** or pursue part-time consulting post-65
4. Develop supplementary income streams (rental, dividends, NZ Super)
5. Review plan every **2–3 years**

## Note
Simulation built and run in Microsoft Excel.
