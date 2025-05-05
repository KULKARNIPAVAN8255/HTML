use lab2;

create TABLE Employee4(EMPNO int primary key,ENAME varchar(255),JOB varchar(255), MGR int,SAL decimal(10,2));
desc Employee4;

alter table Employee4 add(commission decimal(10,2));

insert into Employee4(EMPNO, ENAME, JOB, MGR, SAL, commission)values
	(101, 'John Smith', 'Manager', NULL, 6000.00, 1000.00),
	(102, 'Jane Doe', 'Assistant', 1, 4000.00, 500.00),
	(103, 'Michael Johnson', 'Clerk', 2, 3000.00, 500.00),
	(104, 'Mike', 'Clerk', 2, 3000.00, 500.00),
	(105, 'Tim', 'Clerk', 2, 3000.00, 500.00);
 select *from Employee4;
 
 update Employee4 set job="traainee" where EMPNO=105;
 
 alter table Employee4 rename column SAL to salary;
 
 delete from Employee4 where EMPNO =104;