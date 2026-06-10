-- Average financial and ESG metrics by industry
SELECT
    industry,
    ROUND(AVG(revenue), 2) AS avg_revenue_million_usd,
    ROUND(AVG(market_cap), 2) AS avg_market_cap_million_usd,
    ROUND(AVG(esg_overall), 2) AS avg_esg_score
FROM company_esg
GROUP BY industry
ORDER BY avg_revenue_million_usd DESC;

-- Revenue and ESG by company average
SELECT
    company_id,
    company_name,
    industry,
    region,
    ROUND(AVG(revenue), 2) AS avg_revenue_million_usd,
    ROUND(AVG(esg_overall), 2) AS avg_esg_score
FROM company_esg
GROUP BY company_id, company_name, industry, region
ORDER BY avg_revenue_million_usd DESC;