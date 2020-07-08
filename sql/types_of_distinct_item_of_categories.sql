--types of distinct item of categories

select category_name, count(distinct item_description)
from sales_main_data.year_2019 
group by 1
order by 2 desc;