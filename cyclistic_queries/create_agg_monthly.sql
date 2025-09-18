CREATE OR REPLACE TABLE `projects-467303.cyclistic.agg_monthly` AS
SELECT
  FORMAT_DATE('%Y-%m', DATE(started_at)) AS month,
  member_casual,
  COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY month, member_casual
ORDER BY month, member_casual;