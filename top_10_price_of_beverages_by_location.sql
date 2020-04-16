--top 10 price of beverages by location


with max_cost as (
select item_description, max(state_bottle_cost) as max_bottle_cost ,max(state_bottle_retail) as  max_bottle_cost_retail
from sales_main_data.year_2019 
group by 1
order by 2 desc
limit 10 )

select max_cost.item_description, latitude, longitude, max(state_bottle_cost) as max_bottle_cost ,max(state_bottle_retail) as  max_bottle_cost_retail
from max_cost 
left join sales_main_data.year_2019 as smd on (max_cost.item_description=smd.item_description)
group by 1,2,3;



