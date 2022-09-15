use sales;
select * from sales1;

delimiter $$
create function my_profit(profit int, discount int)
returns int
deterministic
begin
declare t_profit int;
set t_profit = (profit- discount);
return t_profit;
end$$

select profit, discount ,my_profit(profit, discount) from sales1

delimiter $$
create function Tot_profit(profit decimal(20,6), sales decimal(20,6) , discount decimal(20,6))
returns int
deterministic
begin
declare total_pro int;
set total_pro = profit- sales * discount;
return total_pro;
end$$

select profit, sales, discount, tot_profit(profit, sales, discount) from sales1;

delimiter $$
create function res_string (a int)
returns varchar(30)
deterministic
begin
declare b varchar(30);
set b = a +10 ;
return b;
end$$

select res_string(30)









