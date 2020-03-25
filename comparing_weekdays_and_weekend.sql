-- comparing weekdays and weekend  (above 100 bottles) 

Select
case 
	when date_part('dow', "date") between 1 and 5 then 'weekday' 
	when date_part('dow', "date") in (6,0) then 'weekend'
end as weekdays, sum(bottles_sold) as count_bottle, Round(sum(sale_dollars)) as total_amount, round(sum(volume_sold_liters)) as total_liter
from sales_main_data.year_2019 
group by 1
having  sum(bottles_sold)>100
order by 1 desc;
