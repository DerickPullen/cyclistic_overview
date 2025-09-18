CREATE OR REPLACE TABLE `projects-467303.cyclistic.trips_clean`
PARTITION BY DATE(started_at)
CLUSTER BY member_casual, rideable_type AS
SELECT
  ride_id, member_casual, rideable_type, started_at, ended_at,
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length_min,
  EXTRACT(DAYOFWEEK FROM started_at) AS day_of_week,
  EXTRACT(HOUR FROM started_at) AS hour_of_day,
  IF(EXTRACT(DAYOFWEEK FROM started_at) IN (1,7), TRUE, FALSE) AS is_weekend,
  FORMAT_DATE('%Y-%m', DATE(started_at)) AS yyyymm,
  start_station_name, start_station_id, end_station_name, end_station_id,
  start_lat, start_lng, end_lat, end_lng
FROM `projects-467303.cyclistic.trips_raw`
WHERE started_at IS NOT NULL
  AND ended_at   IS NOT NULL
  AND ended_at > started_at
  AND TIMESTAMP_DIFF(ended_at, started_at, MINUTE) BETWEEN 1 AND 24*60;