create database lab3;
use lab3;
create table employee7(E_id int primary key, E_name varchar(255), Age int, Salary decimal(10,2));
desc employee7;
insert into employee7(E_id, E_name, Age, salary)values
	(1,'Akash',20,2000.00),
    (2,'Arjun',18,5000.00),
    (3,'Sneha',21,7000.00),
	(4,'Sachin',23,12000.00),
    (5,'Rahul',20,2000.00),
    (6,'Pooja',24,20000.00);
select*from employee7;

select count(E_name) as total_employees from employee7;

select max(Age)as Max_Age from employee7;

select min(Age)asMin_age from employee7;

select E_name,Salary from employee7 order by salary ASC;

select salary,count(*)as Employee_count from employee7 group by Salary;