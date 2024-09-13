SELECT 
  year,
  (under_1yr + under_2yr + under_3yr + under_4yr + under_5yr + under_10yr + under_15yr) AS under_15yrs,
  more_than_15yrs
FROM `elder-drivers.yuna.yrs_of_license_acquisition_and_accident`
