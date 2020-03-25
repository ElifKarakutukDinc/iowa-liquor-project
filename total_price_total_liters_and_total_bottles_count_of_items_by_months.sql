--total price,total liters and total bottles count of items by months (above 100 bottles) 

select EXTRACT(MONTH FROM "date") as months, item_description , sum(bottles_sold) as count_bottle, Round(sum(sale_dollars)) as total_amount, round(sum(volume_sold_liters)) as total_liter
from sales_main_data.year_2019 
group by 1,2
having  sum(bottles_sold)>100
order by 3 desc;