SELECT
    ad_campaign,
    COUNT(*) AS impressions,
    SUM(revenue) AS total_revenue,
    ROUND(
        100.0 * COUNT(*) FILTER (WHERE clicked = TRUE) / COUNT(*),
        1
    ) AS ctr
FROM ad_impressions
GROUP BY ad_campaign
HAVING COUNT(*) > 15
ORDER BY ctr DESC, ad_campaign;
