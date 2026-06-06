SELECT 
    NAME_EDUCATION_TYPE AS education,
    COUNT(*) AS applicants,
    ROUND(AVG(TARGET) * 100, 2) AS default_rate_pct,
    ROUND(AVG(AMT_INCOME_TOTAL), 0) AS avg_income
FROM mortgage_clean
GROUP BY NAME_EDUCATION_TYPE
ORDER BY default_rate_pct DESC;