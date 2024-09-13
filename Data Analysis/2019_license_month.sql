SELECT
  `elder-drivers.yuna.monthly_accidents`.month,
  `elder-drivers.yuna.monthly_accidents`.under65_total/`elder-drivers.yuna.license_return`.license_under65 AS under65,
  `elder-drivers.yuna.monthly_accidents`.above_65/`elder-drivers.yuna.license_return`.license_above65 AS above65

FROM 
  `elder-drivers.yuna.monthly_accidents`

JOIN 
  `elder-drivers.yuna.license_return`

ON 
  `elder-drivers.yuna.monthly_accidents`.year = `elder-drivers.yuna.license_return`.year

WHERE 
  `elder-drivers.yuna.monthly_accidents`.year = 2019;
