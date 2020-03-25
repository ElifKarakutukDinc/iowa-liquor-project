--total price,total liters and total bottles count by months

select EXTRACT(MONTH FROM date), sum(bottles_sold) as count_bottle ,round(sum(sale_dollars)) as total_price, round(sum(volume_sold_liters)) as total_liters 
from sales_main_data.year_2019 
group by 1

