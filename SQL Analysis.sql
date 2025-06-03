-- TT assets 2008 financial crisis
-- Work done by Soubhi SAAD

SELECT 
    date, 
    total_assets, 
    (SELECT AVG(total_assets) FROM snb_data) AS avg_total_assets_all_time
FROM snb_data
WHERE date BETWEEN '2006-01-01' AND '2011-12-01'
ORDER BY date;


-- TT assets COVID-19

SELECT 
    date, 
    total_assets, 
    (SELECT AVG(total_assets) FROM snb_data) AS avg_total_assets_all_time
FROM snb_data
WHERE date BETWEEN '2019-01-01' AND '2021-12-01'
ORDER BY date;

-- By Soubhi SAAD
-- This chart shows the Swiss National Bank's total assets during the COVID-19 crisis (2019–2021).
-- A noticeable increase occurs in early 2020, reflecting the SNB’s response to pandemic-driven 
-- financial instability by expanding its balance sheet through foreign asset purchases and interventions.



SELECT 
    date,
    total_assets / 1000.0 AS total_assets_billion,
    ((SELECT total_assets FROM snb_data WHERE date = '2020-03-01') - 
     (SELECT total_assets FROM snb_data WHERE date = '2021-12-01')) / 1000.0 -- Converts asset values from millions to billions
     AS asset_change_during_covid_billion
FROM snb_data
WHERE date IN ('2020-03-01', '2021-12-01')
ORDER BY date;

-- *By Soubhi SAAD*
-- This query compares the SNB’s total assets before and after the main COVID-19 shock period.
-- Results are shown in CHF billions. Despite expectations, assets increased by over 204 billion 
-- between March 2020 and December 2021, reflecting the SNB’s financial market interventions.



-- *****************************************************************************************


-- Highest Asset Levels Ever Recorded
-- Highlights the top 5 dates where SNB’s total assets peaked
-- Often linked to large-scale asset purchases or monetary interventions.

SELECT date, total_assets / 1000.0 as total_assets
FROM snb_data
ORDER BY total_assets DESC
LIMIT 5;

-- ***************************************************************************

-- *************************************************************************************

SELECT DATE_PART('year', date) AS year, AVG(banknotes_in_circulation) / 1000.0  AS avg_notes
FROM snb_data
GROUP BY year
ORDER BY year;

/*
Banknotes in circulation peaked in 2021 as households held more cash during the height of the COVID-19 crisis, 
then declined as confidence returned and cash was redeposited into the banking system.
*/


SELECT date, AVG(banknotes_in_circulation) / 1000.0  AS avg_notes
FROM snb_data
Group by date
ORDER BY date;

/*
The recurring monthly peaks in banknote circulation reflect seasonal cash demand 
especially around holidays and year-end — when households and businesses hold more physical money for spending and liquidity.
*/







SELECT date AS year, banknotes_in_circulation
FROM snb_data
ORDER BY year;


-- ************************************************************************
--% OF GOLD IN THE TOTAL ASSET
SELECT 
    date,
    ROUND(((gold_holdings_and_claims_from_gold_transactions / total_assets) * 100)::NUMERIC, 2) AS gold_ratio_percent,
    ROUND(AVG(((gold_holdings_and_claims_from_gold_transactions / total_assets) * 100)::NUMERIC) OVER (), 2) AS avg_gold_ratio
FROM snb_data
ORDER BY date;

-- AVG_Gold_Ratio = 14.67%


-- ***************************************************************
--  Foreign Currency Liabilities vs Investments
SELECT date,
       foreign_currency_investments / 1000.0 AS foreign_currency_investments,
       foreign_currency_liabilities / 1000.0 AS foreign_currency_liabilities
FROM snb_data
ORDER BY date;
-- By Soubhi SAAD
/* 
The SNB has a lot of foreign currency investments but very few liabilities, which means:
- It prints CHF to buy foreign assets.
- It does not borrow foreign money.
- This strategy gives the SNB control and keeps its balance sheet clean.
*/


-- ***************************************************************
--  Sight Deposits Share of Total Liabilities

SELECT 
    DATE_PART('year', date) AS year,
    ROUND((100 * (sight_deposits_of_domestic_banks + sight_deposits_of_foreign_banks_and_institutions) / total_liabilities)::NUMERIC, 2) AS deposit_share,
	ROUND(AVG((100 * (sight_deposits_of_domestic_banks + sight_deposits_of_foreign_banks_and_institutions) / total_liabilities)::NUMERIC) OVER (), 2) AS AVG_deposit_share
FROM snb_data
ORDER BY date;

-- By Soubhi SAAD
/*
Since 2011, the SNB's deposit share surged from ~10% to over 50% following its EUR/CHF cap, 
marking a lasting shift toward liquidity-heavy policy, with post-crisis levels staying far above the long-term average.
*/




