--statistics of beverages by categories

select category_name, max(state_bottle_cost) max_price ,max(state_bottle_retail) max_price_retail,
sum(bottles_sold) bottle_count, round(sum(sale_dollars)) total_sale_cost, round(sum(volume_sold_liters)) total_liter 
from sales_main_data.year_2019 
group by 1
order by 3 desc;