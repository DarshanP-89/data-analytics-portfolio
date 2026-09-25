# Darshan — Data Analytics Portfolio

&gt; End-to-end data analytics projects spanning Excel, SQL, Statistics, Python, and Power BI.
&gt; Built through a comprehensive hands-on course with real datasets and business scenarios.

---

## About Me

I am a data analyst with hands-on experience in the full analytics pipeline:
- **Data Collection & Cleaning:** SQL, Python (Pandas), Excel
- **Exploratory Analysis:** Statistical testing, correlation, outlier detection
- **Visualization:** Power BI dashboards, Python (Matplotlib, Seaborn)
- **Advanced Analytics:** Portfolio optimization, risk metrics, time-series analysis

I am particularly interested in **financial data analysis** and **business intelligence**.

---

## Tools & Technologies

| Category | Tools |
|----------|-------|
| Databases | MySQL, DB Fiddle |
| Programming | Python (Pandas, NumPy, Matplotlib, Seaborn) |
| Visualization | Power BI, Excel Pivot Tables |
| Statistics | Hypothesis testing, A/B testing, correlation, distributions |
| Data Sources | CSV, live APIs (yfinance), SQL databases |

---

## Featured Projects

### 1. Tech Stock Portfolio Optimization (Python + Power BI)
**Phase 7 Capstone | Score: 9.5/10**

An end-to-end investment analysis of 5 major tech stocks (AAPL, MSFT, GOOGL, AMZN, NVDA) over 650 trading days.

- Pulled live stock data via `yfinance` API
- Calculated daily returns, volatility, and Sharpe ratios
- Built a correlation matrix to measure diversification benefits
- Ran mathematical optimization (SciPy) to find the Sharpe-optimal portfolio
- Exported results to Power BI and built an interactive investor dashboard

**Key Insight:** The Sharpe-optimized portfolio (64.87% NVDA) achieved a 2.18 Sharpe ratio vs. 1.96 for equal-weight — proving that data-driven concentration beats naive diversification.

[View Project](./projects/07-portfolio-optimization/)

---

### 2. Executive Sales Dashboard (Power BI)
**Phase 6 Project | Score: 9.5/10**

A manager-ready interactive dashboard built from the NorthStar Capital dataset.

- 4 KPI cards (Total Revenue, Avg Order Value, Record Count, Total Discount)
- Interactive slicers for Region and Category
- Matrix visual with data bars showing revenue and percentage of total
- Drill-through page for client-level detail
- DAX measures including CALCULATE, ALL(), and percentage-of-total calculations

**Key Insight:** Technology accounts for 48.34% of total revenue, revealing heavy category concentration risk.

[View Project](./projects/06-powerbi-dashboard/)

---

### 3. NorthStar Capital EDA (Python)
**Phase 5 Project | Score: 9.28/10**

Exploratory data analysis of 120 investment clients across 9 variables.

- Data cleaning: handled nulls, duplicates, type conversions
- Distribution analysis with histograms and box plots
- Outlier detection using IQR method
- Correlation heatmap and scatter plots with trend lines
- Group comparisons by RiskProfile and Region

**Key Insight:** Aggressive and Balanced clients build larger portfolios over time, while Conservative clients plateau early.

[View Project](./projects/05-python-eda/)

---

### 4. NorthMart SQL Analytics
**Phase 3 Project | Score: 9.67/10**

Complex SQL analysis on a 3-table retail database (Customers, Orders, OrderLines).

- Multi-table JOINs and LEFT JOINs for unmatched records
- Subqueries and CTEs for intermediate calculations
- Window functions: RANK(), DENSE_RANK(), running totals
- Aggregate window functions: `AVG(SUM(Sales)) OVER (PARTITION BY Segment)`
- Anti-join patterns for finding customers with no orders

**Key Insight:** Identified high-value customers and regional sales patterns using advanced SQL techniques.

[View Project](./projects/03-sql-analytics/)

---

## Course Completion Summary

| Phase | Topic | Score |
|-------|-------|-------|
| 1 | Foundations | Completed |
| 2 | Excel / Google Sheets | Completed |
| 3 | SQL | 9.62/10 |
| 4 | Statistics | 7.96/10 |
| 5 | Python | 9.13/10 |
| 6 | Power BI | 9.5/10 |
| 7 | Advanced Analytics / Capstone | 9.5/10 |
| **Overall** | | **~9.1/10** |

---

## Contact

- LinkedIn: [YOUR LINKEDIN URL HERE]
- Email: [YOUR EMAIL HERE]
- Location: [YOUR CITY/REGION HERE]

---

*This portfolio was built as part of a comprehensive Data Analytics program covering the full analyst skill stack from data collection to executive dashboards.*
