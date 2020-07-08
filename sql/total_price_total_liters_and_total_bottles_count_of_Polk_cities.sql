--total price,total liters and total bottles count of Polk's cities (POLK has top sold counts)

select county, city, zip_code, sum(bottles_sold) as count_bottle, Round(sum(sale_dollars)) as total_amount, round(sum(volume_sold_liters)) as total_liter
from sales_main_data.year_2019 
group by 1,2,3
having county='POLK'
order by 4 desc;

