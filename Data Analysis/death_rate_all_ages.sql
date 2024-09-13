WITH total_death AS (
  SELECT age_group, year, SUM(total) AS total_death
  FROM `elder-drivers.yuna.accident_by_age_group`
  WHERE year IN (2019, 2020, 2021)
    AND status = 'death'
  GROUP BY age_group, year
),

total_accident AS (
  SELECT age_group, year, SUM(total) AS total_accident
  FROM `elder-drivers.yuna.accident_by_age_group`
  WHERE year IN (2019, 2020, 2021)
    AND status = 'accident'
  GROUP BY age_group, year
)

SELECT 
  total_death.age_group, 
  total_death.year,
  (total_death.total_death / total_accident.total_accident) AS death_rate
FROM 
  total_death
JOIN 
  total_accident 
ON 
  total_death.age_group = total_accident.age_group
  AND total_death.year = total_accident.year
ORDER BY 
  total_death.age_group, 
  total_death.year;
