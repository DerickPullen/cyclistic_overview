CREATE OR REPLACE TABLE `projects-467303.cyclistic.agg_kpis` AS
WITH base AS (
  SELECT
    member_casual,
    ride_length_min,
    EXTRACT(DAYOFWEEK FROM started_at) AS dow,
    EXTRACT(HOUR FROM started_at)      AS hr
  FROM `projects-467303.cyclistic.trips_clean`
)
SELECT
  member_casual,
  COUNT(*)                                           AS total_rides,
  ROUND(AVG(ride_length_min), 1)                     AS avg_minutes,
  ROUND(100 * COUNTIF(dow IN (1,7)) / COUNT(*), 2)   AS weekend_share_pct,
  ROUND(
    100 * COUNTIF(dow BETWEEN 2 AND 6 AND (hr BETWEEN 7 AND 10 OR hr BETWEEN 16 AND 19))
    / COUNT(*), 2
  ) AS commute_share_pct
FROM base
GROUP BY member_casual;