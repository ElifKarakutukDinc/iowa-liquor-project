--total price,total liters and total bottles count of counties by months and item types (above 100 bottles) 

select  EXTRACT(MONTH FROM "date") as months, county, city, zip_code, item_description, sum(bottles_sold) as count_bottle, Round(sum(sale_dollars)) as total_amount, round(sum(volume_sold_liters)) as total_liter
from sales_main_data.year_2019 
group by 1,2,3,4,5
having  sum(bottles_sold)>100
order by 1;

