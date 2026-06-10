-- Top 10 companies by average ESG score
SELECT
    company_id,
    company_name,
    industry,
    region,
    ROUND(AVG(esg_overall), 2) AS avg_esg_score
FROM company_esg
GROUP BY company_id, company_name, industry, region
ORDER BY avg_esg_score DESC
LIMIT 10;

-- Top 10 companies by average revenue
SELECT
    company_id,
    company_name,
    industry,
    region,
    ROUND(AVG(revenue), 2) AS avg_revenue_million_usd
FROM company_esg
GROUP BY company_id, company_name, industry, region
ORDER BY avg_revenue_million_usd DESC
LIMIT 10;

-- Top 10 companies by average market capitalization
SELECT
    company_id,
    company_name,
    industry,
    region,
    ROUND(AVG(market_cap), 2) AS avg_market_cap_million_usd
FROM company_esg
GROUP BY company_id, company_name, industry, region
ORDER BY avg_market_cap_million_usd DESC
LIMIT 10;