-- 06G_weekend_share
SELECT member_casual, is_weekend, COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY member_casual, is_weekend
ORDER BY member_casual, is_weekend;