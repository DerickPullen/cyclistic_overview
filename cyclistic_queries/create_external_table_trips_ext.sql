CREATE OR REPLACE EXTERNAL TABLE `projects-467303.cyclistic.trips_ext` (
  ride_id STRING,
  rideable_type STRING,
  started_at TIMESTAMP,
  ended_at TIMESTAMP,
  start_station_name STRING,
  start_station_id STRING,
  end_station_name STRING,
  end_station_id STRING,
  start_lat FLOAT64,
  start_lng FLOAT64,
  end_lat FLOAT64,
  end_lng FLOAT64,
  member_casual STRING
)
OPTIONS (
  format = 'CSV',
  uris = ['gs://cyclistic-portfolio-dp/cyclistic/*.csv'],
  skip_leading_rows = 1,
  field_delimiter = ',',
  allow_quoted_newlines = TRUE
);