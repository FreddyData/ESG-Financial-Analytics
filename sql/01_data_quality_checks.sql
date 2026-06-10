-- Total number of records
SELECT COUNT(*) AS total_rows
FROM company_esg;

-- Number of distinct companies
SELECT COUNT(DISTINCT company_id) AS total_companies
FROM company_esg;

-- Year range
SELECT 
    MIN(year) AS first_year,
    MAX(year) AS last_year
FROM company_esg;

-- Missing values by column
SELECT
    SUM(CASE WHEN revenue IS NULL THEN 1 ELSE 0 END) AS missing_revenue,
    SUM(CASE WHEN market_cap IS NULL THEN 1 ELSE 0 END) AS missing_market_cap,
    SUM(CASE WHEN profit_margin IS NULL THEN 1 ELSE 0 END) AS missing_profit_margin,
    SUM(CASE WHEN growth_rate IS NULL THEN 1 ELSE 0 END) AS missing_growth_rate,
    SUM(CASE WHEN esg_overall IS NULL THEN 1 ELSE 0 END) AS missing_esg_overall,
    SUM(CASE WHEN carbon_emissions IS NULL THEN 1 ELSE 0 END) AS missing_carbon_emissions
FROM company_esg;
