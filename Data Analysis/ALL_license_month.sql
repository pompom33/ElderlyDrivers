SELECT
  `elder-drivers.yuna.monthly_accidents`.month,
  SUM(`elder-drivers.yuna.monthly_accidents`.under65_total)/SUM(`elder-drivers.yuna.license_return`.license_under65) AS under65,
  SUM(`elder-drivers.yuna.monthly_accidents`.above_65)/SUM(`elder-drivers.yuna.license_return`.license_above65) AS above65

FROM 
  `elder-drivers.yuna.monthly_accidents`

JOIN 
  `elder-drivers.yuna.license_return`

ON 
  `elder-drivers.yuna.monthly_accidents`.year = `elder-drivers.yuna.license_return`.year

GROUP BY
  `elder-drivers.yuna.monthly_accidents`.month;
