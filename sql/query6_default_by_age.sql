SELECT 
    CASE 
        WHEN AGE_YEARS < 30 THEN 'Under 30'
        WHEN AGE_YEARS < 40 THEN '30–39'
        WHEN AGE_YEARS < 50 THEN '40–49'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS applicants,
    ROUND(AVG(TARGET) * 100, 2) AS default_rate_pct,
    ROUND(AVG(CREDIT_INCOME_RATIO), 2) AS avg_credit_ratio
FROM mortgage_clean
GROUP BY age_group
ORDER BY default_rate_pct DESC;