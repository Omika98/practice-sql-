create database ineuron;
use ineuron;
create table course
(
course_id int , 
course_desc varchar(50),
course_mentor varchar(60),
course_price int ,
course_discount int );

create table course_update(
course_metor_update varchar(50),
course_price_update int ,
course_discount_update int );

select * from bank_details where balance in (select min(balance) from bank_details);
Delimiter &&
Create procedure min_bal()
Begin 
select * from bank_details where balance in (select min(balance) from bank_details);
End &&
call min_bal



Delimiter &&
Create procedure Bal_emp( IN management Varchar (30))
Begin 
select  avg(balance) from bank_details where job = 'management';
End &&
call Bal_emp('admin')

Delimiter &&
Create procedure ed_job( IN x1 Varchar (30),IN x2 Varchar(30) )
Begin 
select * 
from bank_details  where education = x1 AND job= x2;
End &&
call ed_job('tertiary', 'retired')


