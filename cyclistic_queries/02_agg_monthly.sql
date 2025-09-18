EXPORT DATA OPTIONS (
  uri='gs://cyclistic-portfolio-dp/exports/agg_monthly_*.csv',
  format='CSV',
  overwrite=true,
  header=true
) AS
SELECT * FROM `projects-467303.cyclistic.agg_monthly`;