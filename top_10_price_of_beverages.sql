--top 10 price of beverages 

select item_description, max(state_bottle_cost),max(state_bottle_retail)
from sales_main_data.year_2019 
group by 1
order by 2 desc
limit 10;


