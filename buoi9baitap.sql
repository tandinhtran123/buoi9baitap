--bai 1
SELECT 
  sum(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END AS laptop_views )
  sum(CASE WHEN device_type IN ('phone','tablet') THEN 1 ELSE 0 END AS mobile_views )
FROM viewership;
--bai 2
select x, y, z
CASE 
  when x + y > z and x + z > y and y + z > x then 'yes' else 'no'
  end as triangle
from Triangle
--bai 3
SELECT
Round(100*((Count(case_id) where call_category is NULL or call_category = 'n/a'))/count (case_id)),1)
FROM callers;
--bai 4
SELECT name FROM Customer
Where referee_id <>2 OR referee_id is NULL
--bai 5
SELECT survived,
sum(CASE WHEN pclass = 1 THEN 1 ELSE 0  END) AS first_class,
sum(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
sum(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived
