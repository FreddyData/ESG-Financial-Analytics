-- Average ESG score by industry
SELECT
    industry,
    ROUND(AVG(esg_overall), 2) AS avg_esg_score
FROM company_esg
GROUP BY industry
ORDER BY avg_esg_score DESC;

-- Average carbon emissions by industry
SELECT
    industry,
    ROUND(AVG(carbon_emissions), 2) AS avg_carbon_emissions
FROM company_esg
GROUP BY industry
ORDER BY avg_carbon_emissions DESC;

-- ESG trend by year
SELECT
    year,
    ROUND(AVG(esg_overall), 2) AS avg_esg_score
FROM company_esg
GROUP BY year
ORDER BY year;