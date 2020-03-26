--distinct vendor count of counties and cities

select county, city, zip_code, count(distinct vendor_number)
from sales_main_data.year_2019 
group by 1,2,3
order by 4 desc;

