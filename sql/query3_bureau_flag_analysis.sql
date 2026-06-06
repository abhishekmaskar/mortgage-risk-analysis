SELECT 
    EXT_SOURCE_3_MISSING AS bureau_score_missing,
    COUNT(*) AS applicants,
    ROUND(AVG(TARGET) * 100, 2) AS default_rate_pct,
    ROUND(AVG(EXT_SOURCE_3), 3) AS avg_bureau_score
FROM mortgage_clean
GROUP BY EXT_SOURCE_3_MISSING
ORDER BY bureau_score_missing;