--total price,total liters and total bottles count by days

Select
case 
	when date_part('dow', "date")= 1 then 'monday' 
	when date_part('dow', "date")= 2 then 'tuesday'
	when date_part('dow', "date")= 3 then 'wednesday'
	when date_part('dow', "date")= 4 then 'thursday'
	when date_part('dow', "date")= 5 then 'friday'
	when date_part('dow', "date")= 6 then 'saturday'
	when date_part('dow', "date")= 0 then 'sunday'
end as weekdays, count(bottles_sold) as count_bottle, Round(sum(sale_dollars)) as total_amount, round(sum(volume_sold_liters)) as total_liter
from sales_main_data.year_2019 
group by 1
order by 2 desc;