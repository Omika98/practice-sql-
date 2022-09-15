use sales;
select * from sales1;

Delimiter $$
create function add_col (a int)
returns int
deterministic 
begin
Declare b  int;
set b = a + 10;
return b;
end $$
select  add_col(sales) from sales1;

delimiter $$
create function Total_Profit(sales int, quantity int,discount int, shipping_cost decimal)
returns decimal
deterministic 
begin
declare Total_profit decimal;
Set Total_profit = sales* quantity- discount- shipping_cost;
return Total_profit;
end$$
select profit, Total_profit(sales, quantity,discount,shipping_cost) from sales1;

delimiter $$
create function prod_type ( sales int)
returns varchar(30)
deterministic 
begin
declare sum_sales varchar(30);
if sales >= 100 then
set sum_sales = 'Super_affordable';
elseif sales >100 and sales>=300 then
set sum_sales = 'Affordable';
elseif sales >300 and sales <= 600 then
set sum_sales = 'Moderately_affordable';
else 
set sum_sales ='Expensive';
end if;
return sum_sales;
end$$

select product_name, Market, prod_type(sales) from sales1;
select prod_type(205)






