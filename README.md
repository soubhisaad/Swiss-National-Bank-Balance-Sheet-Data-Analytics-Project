# Swiss-National-Bank-Data-Analysis-and-Forecasting-SQL-Machine-Learning-Approach

> **By Soubhi SAAD**

This project analyzes the Swiss National Bank’s (SNB) balance sheet using Python (for machine learning and API data collection), SQL, pgAdmin, and Microsoft Power BI. It explores the impact of major crises like the 2008 financial crisis and COVID-19, as well as foreign exchange interventions and shifts in liquidity, reserves, and public cash demand over time.

🔗 **Data Source**  
Link to the Swiss National Bank data portal used in this project:  
[https://data.snb.ch/en/topics/snb/cube/snbbipo](https://data.snb.ch/en/topics/snb/cube/snbbipo)

---

## 📂 Files

- `API.ipynb`: Jupyter notebook for retrieving SNB data via API and performing initial data cleaning.
- `SNB_DATA.csv`: Final cleaned and pivoted dataset used for analysis and modeling.
- `SQL_Analysis.sql`: Complete SQL script with well-commented queries.
- `/SQL_and_pgAdmin_Visuals/`: Screenshots of visualizations created in pgAdmin.
- `PowerBI_SNB.pbix`: Power BI report file with dashboard visualizations and explanation.
- `Machine_Learning.ipynb`: Notebook for building and evaluating machine learning models on SNB data.

---

## 📌 Key Insights


### Liquidity Surge Post-2011
Sight deposits jumped from ~10% to over **50% of total liabilities** after the SNB introduced the EUR/CHF exchange rate floor in 2011, revealing a long-lasting shift to a liquidity-heavy policy stance.

### Crisis-Driven Balance Sheet Growth
The SNB’s **total assets soared** during both the 2008 financial crisis and the COVID-19 pandemic. Between March 2020 and December 2021, assets rose by CHF **204 billion** due to aggressive foreign asset purchases.

### Cash Demand Peaked in 2021
**Banknotes in circulation** reached an all-time high of **CHF 88.5B**, showing how households shifted to physical cash during the COVID crisis. Seasonal spikes also reveal holiday- and confidence-driven behavior.

### Foreign Currency Investments as a Monetary Tool
SNB **foreign currency investments** peaked at **CHF 1,015B**, while liabilities remained low — proving that the bank printed CHF to buy foreign assets. After 2022, investments declined as the SNB shifted to fighting inflation.

### Gold’s Role Continues to Shrink
Gold dropped from **~30% to under 15%** of total assets over time, showing a strategic move away from traditional reserves toward more liquid, policy-driven instruments.

### Record Balance Sheet Peaks (2021–2022)
The five highest asset levels in SNB history were recorded between **Dec 2021 and May 2022**, marking the peak of its post-crisis monetary expansion.

### Balance Sheet Composition Transformation
Over the past 25+ years, the SNB’s balance sheet evolved from being **gold- and cash-heavy** to being dominated by **foreign currency investments and sight deposits**, showing a move from traditional reserve banking to modern interventionism.

---

## 📷 Sample Charts

| Metric                          | Screenshot                                  |
|----------------------------------|---------------------------------------------|
| Sight Deposits % of Liabilities | ![](images/deposit_share_chart.png)         |
| Foreign Assets vs Liabilities   | ![](images/foreign_assets_vs_liabilities.png)|
| Banknotes in Circulation        | ![](images/banknotes_covid_peak.png)        |
| Gold as % of Total Assets       | ![](images/gold_ratio.png)                  |
| Total Assets During COVID-19    | ![](images/total_assets_covid.png)          |

---

## 🔧 Tools Used

- PostgreSQL + pgAdmin 4  
- SQL (window functions, aggregation, subqueries)  
- Visualizations with pgAdmin’s Graph Visualiser  
- Screenshots saved to `/images` for GitHub presentation

---

## 🧠 What This Project Shows

This project bridges **SQL skills** and **macroeconomic reasoning** by showing how central bank data reflects real-world crises and policy responses. It demonstrates how financial data can be queried, visualized, and turned into insight.

