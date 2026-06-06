SELECT 
    NAME_INCOME_TYPE AS employment_type,
    COUNT(*) AS total_applicants,
    SUM(TARGET) AS total_defaults,
    ROUND(AVG(TARGET) * 100, 2) AS default_rate_pct
FROM mortgage_clean
GROUP BY NAME_INCOME_TYPE
ORDER BY default_rate_pct DESC;