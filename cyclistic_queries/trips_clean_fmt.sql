-- 06D_station_name_trim (optional view for cleaner labels)
CREATE OR REPLACE VIEW `projects-467303.cyclistic.trips_clean_fmt` AS
SELECT
  ride_id, member_casual, rideable_type, started_at, ended_at,
  ride_length_min, day_of_week, hour_of_day, is_weekend, yyyymm,
  TRIM(start_station_name) AS start_station_name,
  TRIM(end_station_name)   AS end_station_name,
  start_station_id, end_station_id, start_lat, start_lng, end_lat, end_lng
FROM `projects-467303.cyclistic.trips_clean`;