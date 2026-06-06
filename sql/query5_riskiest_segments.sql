-- Who are the riskiest borrowers? (for your recommendation slide)
SELECT 
    NAME_INCOME_TYPE,
    INCOME_BAND,
    COUNT(*) AS applicants,
    ROUND(AVG(TARGET) * 100, 2) AS default_rate_pct,
    ROUND(AVG(CREDIT_INCOME_RATIO), 2) AS avg_credit_ratio
FROM mortgage_clean
WHERE EXT_SOURCE_3_MISSING = 1  -- unverified borrowers
GROUP BY NAME_INCOME_TYPE, INCOME_BAND
HAVING COUNT(*) > 100
ORDER BY default_rate_pct DESC
LIMIT 10;