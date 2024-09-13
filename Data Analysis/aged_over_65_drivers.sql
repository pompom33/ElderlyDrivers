WITH year_19 AS (
  SELECT 
    SUM(CASE WHEN age_group = 65 THEN total END) AS over65_19,
    SUM(total) AS total
  FROM `elder-drivers.traffic_accident.total_driver_license_19`
),
year_20 AS (
  SELECT
    SUM(CASE WHEN age_group = 65 THEN total END) AS over65_20,
    SUM(total) AS total
  FROM `elder-drivers.traffic_accident.total_driver_license_20`
),
year_21 AS (
  SELECT 
    SUM(CASE WHEN age_group = 65 THEN total END) AS over65_21,
    SUM(total) AS total
  FROM `elder-drivers.traffic_accident.total_driver_license_21`
)
SELECT 
  (SELECT (over65_19/total  FROM year_19) AS driver_19,
  (SELECT driver_20 FROM year_20) AS driver_20,
  (SELECT driver_21 FROM year_21) AS driver_21;
