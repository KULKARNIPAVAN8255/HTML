use lab1;
create table Employee1(Empno int,Ename varchar(255),Job varchar(255),Manger_no int,Sal decimal(10,2),Commission decimal(10,2));
desc Employee1;
insert into Employee1(Empno,Ename,Job,Manger_no,Sal,Commission)values
	(1, 'John Smith', 'Manager', NULL, 6000.00, 1000.00),
	(2, 'Jane Doe', 'Assistant', 1, 4000.00, NULL),
	(3, 'Michael Johnson', 'Clerk', 2, 3000.00, 500.00);
select*from Employee1;
start transaction;
set autocommit=o;
insert into Employee1(Empno,Ename,Job,Manger_no,Sal,Commission)values(4, 'Rajeev', 'Trainee', NULL, 2000.00, 1000.00);
rollback;
select*from Employee1;

alter table Employee1 add primary key(Empno);
desc Employee1;
alter table Employee1
	MODIFY ENAME VARCHAR(50) NOT NULL,
	MODIFY JOB VARCHAR(50) NOT NULL,
	MODIFY SAL DECIMAL(10,2) NOT NULL;
    
insert into Employee1(Empno,Ename,Job,Manger_no,Sal,Commission)values (5, 'Mary', NULL, 01, 2000.00, NULL);
select*from Employee;