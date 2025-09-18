CREATE OR REPLACE TABLE `projects-467303.cyclistic.agg_hour_profile` AS
SELECT
  member_casual,
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  COUNT(*) AS rides
FROM `projects-467303.cyclistic.trips_clean`
GROUP BY member_casual, hour_of_day
ORDER BY hour_of_day, member_casual;
