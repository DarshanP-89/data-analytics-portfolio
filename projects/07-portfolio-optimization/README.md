# Tech Stock Portfolio Optimization

## Overview
End-to-end investment analysis of 5 major tech stocks over 650 trading days. Pulled live data, calculated risk metrics, ran mathematical optimization, and built a Power BI dashboard.

## Tech Stack
Python (Pandas, NumPy, Matplotlib, Seaborn, SciPy), Power BI, yfinance API

## Key Results
| Metric | Equal-Weight | Sharpe-Optimized |
|--------|-------------|------------------|
| Annual Return | 50.27% | ~85% |
| Volatility | 25.60% | 39.26% |
| Sharpe Ratio | 1.96 | **2.18** |

## Optimal Allocation
- NVDA: 64.9%
- MSFT: 15.2%
- AAPL: 10.1%
- GOOGL: 6.8%
- AMZN: 2.6%

## Files
- `portfolio_analysis.ipynb` — Full Python notebook
- `cumulative_returns.csv` — Daily returns for Power BI
- `portfolio_summary.csv` — Summary metrics for Power BI
- `portfolio_dashboard.pbix` — Power BI dashboard

## Key Insight
Data-driven concentration (64.87% NVDA) beat naive diversification, improving risk-adjusted return by 11%.
