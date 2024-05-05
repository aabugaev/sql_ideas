 -- Run a query where you will get most recent date

Select city, platform, DATE(modelling_date) AS from_date,
DATE(LEAD(modelling_date, 1, date('9999-12-31')) OVER (PARTITION BY city, platform ORDER BY DATE(modelling_date))) AS end_date,
from tab1

--- then join the query with the original one by the conditon like `where date > from_date and date<end_date`
