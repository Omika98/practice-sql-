alter table sales1 
add column order_date_new  date after order_date;

update sales1
set order_date_new = str_to_date(order_date,'%m/%d/%Y');
select monthname(order_date_new) from sales1;

alter table sales1
add column ship_date1 date after ship_date;
update sales1
set ship_date1 = str_to_date(ship_date,'%m/%d/%Y');

alter table sales1
add column ship_yr date after ship_date1;
update sales1
set ship_yr = date(ship_date1);


alter table sales1
modify column ship_date1 int;
update sales1 
set ship_date1 = month(ship_date1);
select ship_date1, avg(sales) from sales1 group by ship_date1;

alter table sales1
add column year_new date after ship_date1;
alter table sales1
modify column Year_New int;
update sales1 set year_new= year(ship_date1)







