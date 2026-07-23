-- Select database
USE marketing_attribution_roi;

-- Verify imported tables
SHOW TABLES;

-- Verify row counts
SELECT COUNT(*) AS attribution_rows
FROM attribution;

SELECT COUNT(*) AS performance_rows
FROM performance;