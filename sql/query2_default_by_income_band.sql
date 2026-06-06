SELECT 
    INCOME_BAND,
    COUNT(*) AS total_applicants,
    SUM(TARGET) AS defaults,
    ROUND(AVG(TARGET) * 100, 2) AS default_rate_pct,
    ROUND(AVG(CREDIT_INCOME_RATIO), 2) AS avg_credit_income_ratio
FROM mortgage_clean
GROUP BY INCOME_BAND
ORDER BY default_rate_pct DESC;