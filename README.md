# Swiss National Bank Balance Sheet Data Analytics

> **By Soubhi SAAD**

This project analyzes the Swiss National Bank’s (SNB) balance sheet using Python (for machine learning and API data collection), SQL, pgAdmin, and Microsoft Power BI. It explores the impact of major crises like the 2008 financial crisis and COVID-19, as well as foreign exchange interventions and shifts in liquidity, reserves, and public cash demand over time.

🔗 **Data Source**  
Link to the Swiss National Bank data portal used in this project:  
[https://data.snb.ch/en/topics/snb/cube/snbbipo](https://data.snb.ch/en/topics/snb/cube/snbbipo)

---

## 📂 Files

- `API.ipynb`: Jupyter notebook for retrieving SNB data via API and performing initial data cleaning.
- `SNB_DATA_1.csv`: Final cleaned and pivoted dataset used for analysis and modeling.
- `SQL_Analysis.sql`: Complete SQL script with well-commented queries.
- `/SQL_and_pgAdmin_Visuals/`: Screenshots of visualizations created in pgAdmin.
- `PowerBI_SNB.pbix`: Power BI report file with dashboard visualizations and explanation.
- `/PowerBI_Visuals/`: Screenshots of dynamic dashboard views created in Power BI.
- `Machine_Learning.ipynb`: Notebook for building and evaluating machine learning models on SNB data.

---

## 📌 Key Insights

**🔹 Liquidity Surge Post-2011**  
Sight deposits jumped from ~10% to over 50% of total liabilities after the SNB introduced the EUR/CHF exchange rate floor in 2011, revealing a long-lasting shift to a liquidity-heavy policy stance.

**🔹 Crisis-Driven Balance Sheet Growth**  
The SNB’s total assets soared during both the 2008 financial crisis and the COVID-19 pandemic. Between March 2020 and December 2021, assets rose by CHF 204 billion due to aggressive foreign asset purchases.

**🔹 Cash Demand Peaked in 2021**  
Banknotes in circulation reached an all-time high of CHF 88.5B, showing how households shifted to physical cash during the COVID crisis. Seasonal spikes also reveal holiday- and confidence-driven behavior.

**🔹 Foreign Currency Investments as a Monetary Tool**  
SNB foreign currency investments peaked at CHF 1,015B, while liabilities remained low — proving that the bank printed CHF to buy foreign assets. After 2022, investments declined as the SNB shifted to fighting inflation.

**🔹 Gold’s Role Continues to Shrink**  
Gold dropped from ~30% to under 15% of total assets over time, showing a strategic move away from traditional reserves toward more liquid, policy-driven instruments.

**🔹 Record Balance Sheet Peaks (2021–2022)**  
The five highest asset levels in SNB history were recorded between Dec 2021 and May 2022, marking the peak of its post-crisis monetary expansion.

**🔹 Balance Sheet Composition Transformation**  
Over the past 25+ years, the SNB’s balance sheet evolved from being gold- and cash-heavy to being dominated by foreign currency investments and sight deposits — a shift from traditional reserve banking to modern interventionism.

---

## Machine Learning & Forecasting
**The full code and visual outputs can be found in `Machine_Learning.ipynb`**

*This notebook contains all forecasting, anomaly detection, model evaluations, and plots.*

Machine learning is here used to understand and forecast the financial behavior of the **Swiss National Bank (SNB)** using over 25 years of monthly balance sheet data.

### Time Series Forecasting

The main goal was to predict **Total Assets** of the SNB using time series models. I implemented and compared:

#### 1. SARIMA (Seasonal ARIMA)
- A classic statistical forecasting model
- Captured overall trend but struggled with sudden economic shifts
- **Mean Absolute Error (MAE)**: ~134,000 million CHF (~16% error)

#### 2. Prophet
- Developed by Meta (Facebook), this model handles seasonality and trend shifts
- Achieved a much lower MAE of ~31,000 million CHF (~3.7%)
- Automatically decomposes data into trend + seasonal components

#### 3. Prophet + External Regressor
- I added `Foreign currency investments` as a regressor, which had a **correlation of r = 0.9964** with Total Assets
- This significantly improved performance:
  - **MAE** dropped to ~10,000 million CHF
  - **Relative error** dropped to **~1.2%**
- Final model captured trend shifts, volatility, and economic changes with high accuracy

### ⚠️ Anomaly Detection

To complement forecasting, I used **Isolation Forest** to detect anomalies in asset levels:

- Flagged months during the **2008 global financial crisis**
- Identified volatility in **2022–2023** following post-COVID monetary changes
- Enabled a **risk-monitoring view** of the dataset

---

### ✅ Achievements
- Achieved a **92% reduction in forecast error** from SARIMA to final Prophet model
- Used real-world financial signals to **enhance model intelligence**
- Built a fully explainable pipeline: from data cleaning to anomaly detection
- Delivered a portfolio-quality time series solution using **real central bank data**

---

> 📊 Tools used: `Prophet`, `statsmodels`, `scikit-learn`, `pandas`, `matplotlib`

---

## 📷 Some SQL Queries & Chart Visuals (pgAdmin Insight)
**More SQL queries can be found in the folder `/SQL_and_pgAdmin_Visuals/`**

| Metric                          | Screenshot                                  |
|----------------------------------|---------------------------------------------|
| Sight Deposits | ![image alt](https://github.com/soubhisaad/Swiss-National-Bank-Balance-Sheet-Data-Analytics-Project/blob/73b975ba4c53b6afa5a3b1ae374525578ef3a8be/SQL_and_pgAdmin_Visuals/sight_deposits.png)
| Foreign Assets vs Liabilities   | ![image alt](https://github.com/soubhisaad/Swiss-National-Bank-Balance-Sheet-Data-Analytics-Project/blob/73b975ba4c53b6afa5a3b1ae374525578ef3a8be/SQL_and_pgAdmin_Visuals/Foreign%20Currency%20Liabilities%20vs%20Investments.png)|
| Banknotes in Circulation        | ![image alt](https://github.com/soubhisaad/Swiss-National-Bank-Balance-Sheet-Data-Analytics-Project/blob/73b975ba4c53b6afa5a3b1ae374525578ef3a8be/SQL_and_pgAdmin_Visuals/Banknotes%20in%20circulation.png)        |
| Gold as % of Total Assets       | ![image alt](https://github.com/soubhisaad/Swiss-National-Bank-Balance-Sheet-Data-Analytics-Project/blob/73b975ba4c53b6afa5a3b1ae374525578ef3a8be/SQL_and_pgAdmin_Visuals/Gold_Ratio%20in%20total%20assets.png)                  |
| Total Assets During COVID-19    | ![image alt](https://github.com/soubhisaad/Swiss-National-Bank-Balance-Sheet-Data-Analytics-Project/blob/73b975ba4c53b6afa5a3b1ae374525578ef3a8be/SQL_and_pgAdmin_Visuals/Total_assets%20COVID-19.png)          |

---

## 🔧 Tools Used

- PostgreSQL + pgAdmin 4 – Data storage, querying, and initial visual exploration
- pgAdmin Graph Visualizer – For line, bar, and area chart visualizations of SNB financial data
- SQL - Analytical queries using aggregation, subqueries, and window functions
- Python – Used in Jupyter Notebook for API requests, data cleaning, and time-series forecasting (SARIMA, Prophet by Meta)
- VS Code – Main development environment for Python scripting and project structure
- Microsoft Power BI – Advanced data storytelling, dashboards, and financial visualization

---

## 🧠 What This Project Shows

This project bridges **SQL skills** and **macroeconomic reasoning** by showing how central bank data reflects real-world crises and policy responses. It demonstrates how financial data can be queried, visualized, and turned into insight.

