# NorthStar Capital EDA (Python)

## Overview
Exploratory data analysis of 120 investment clients. Cleaned data, analyzed distributions, detected outliers, and identified portfolio growth patterns by risk profile.

## Tech Stack
Python (Pandas, NumPy, Matplotlib, Seaborn), Google Colab

## Key Steps
- Data cleaning: nulls, duplicates, type conversions
- Distribution analysis: histograms, box plots
- Outlier detection: IQR method
- Correlation analysis: heatmap, scatter plots with trend lines
- Group comparisons by RiskProfile and Region

## Key Results
| Risk Profile | Avg Order Value | Trend |
|--------------|-----------------|-------|
| Aggressive | Highest | Upward over time |
| Balanced | High | Upward over time |
| Conservative | Lowest | Plateaus early |

## Files
- `northstar_eda.ipynb` — Full Python notebook
- `northstar_clients.csv` — Source data

## Key Insight
Aggressive and Balanced clients build larger portfolios over time, while Conservative clients plateau early — suggesting different engagement strategies are needed.
