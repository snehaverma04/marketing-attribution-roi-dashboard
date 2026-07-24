USE marketing_attribution_roi;
SELECT
    `User ID`,
    Timestamp,
    Channel,
    Campaign,
    Conversion
FROM attribution
LIMIT 20;
SELECT
    Channel,
    COUNT(*) AS total_conversions
FROM attribution
WHERE Conversion = 'Yes'
GROUP BY Channel
ORDER BY total_conversions DESC;
SELECT
    Campaign,
    COUNT(*) AS total_conversions
FROM attribution
WHERE Conversion = 'Yes'
GROUP BY Campaign
ORDER BY total_conversions DESC;
SELECT
    `User ID`,
    Timestamp,
    Channel,
    Campaign,
    Conversion,
    ROW_NUMBER() OVER(
        PARTITION BY `User ID`
        ORDER BY Timestamp
    ) AS touchpoint_order
FROM attribution;