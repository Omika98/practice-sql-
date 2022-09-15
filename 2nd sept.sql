create database dress_data;
use dress_data;

create table if not exists dress(
`Dress_ID` varchar(30),	
`Style`	varchar(30),	
`Price`	varchar(30),	
`Rating`	varchar(30),	
`Size`	varchar(30),	
`Season`	varchar(30),	
`NeckLine`	varchar(30),	
`SleeveLength` varchar(30),		
`waiseline`	varchar(30),	
`Material`	varchar(30),	
`FabricType`	varchar(30),	
`Decoration`	varchar(30),	
`Pattern Type` varchar(30),		
`Recommendation` varchar(30))	;

LOAD DATA INFILE  
'D:/AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
lines terminated by '\n'
IGNORE 1 ROWS;

select * from dress;
create table if not exists test( 
test_id int  auto_increment, 
test_name varchar(30),
 test_maild_id varchar(30),
 test_address varchar(30), salary int (30),
 primary key (test_id));
select * from test ;

insert into test (test_name,test_maild_id,test_address,salary) values
( 'omika', 'upadhyayomika@gmail.com', 'dehradun', 50000),
('sujoy', 'sujoybose94@gmail.com', 'dehradun', 500000);

select * from test ;

create table if not exists test1(
stu_id int auto_increment, stu_name varchar(30), stu_section varchar(30), stu_course varchar(30),stu_marks int check(stu_marks > 30), primary key(stu_id));
insert into test1 (stu_name,stu_section, stu_course,stu_marks) values('jaideep', 'A','Btech', 50),
('poonam','H', 'MCA', 40);



