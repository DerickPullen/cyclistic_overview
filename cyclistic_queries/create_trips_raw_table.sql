CREATE OR REPLACE TABLE `projects-467303.cyclistic.trips_raw`
PARTITION BY DATE(started_at)
CLUSTER BY member_casual, rideable_type AS
SELECT *
FROM `projects-467303.cyclistic.trips_ext`
WHERE started_at IS NOT NULL
  AND ended_at IS NOT NULL
  AND ended_at > started_at;