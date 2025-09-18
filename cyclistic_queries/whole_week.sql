WITH s AS (
  SELECT member_casual, hour_of_day, SUM(rides) AS rides
  FROM `projects-467303.cyclistic.agg_hour_day`
  GROUP BY member_casual, hour_of_day
)
SELECT *
FROM (
  SELECT s.*, ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY rides DESC) rn
  FROM s
)
WHERE rn <= 3
ORDER BY member_casual, rides DESC;