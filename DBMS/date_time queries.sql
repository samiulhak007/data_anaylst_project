create database timedb;
use timedb;

create table emp(
	empid int primary key,
    empname varchar(50),
    joindate date,
    logintime time,
    lastupdate timestamp default current_timestamp,
    joindatetime datetime
);
insert into emp(empid,empname,joindate,logintime,joindatetime) 
values
(1,'arjun','2024-01-10','09:15:00','2024-01-10 09:15:00'),
(2,'priya','2024-05-10','10:00:00','2024-02-05 10:00:00'),
(3,'kiran','2024-02-22','08:45:00','2024-02-22 08:45:00'),
(4,'kalim','2024-03-15','09:00:00','2024-08-10 09:00:00'),
(5,'aabid','2024-05-20','05:15:00','2024-06-08 05:15:00');
select * from emp;
-- current date & time
select now();
-- today's date
select current_date();
select current_time();
-- year
select year(joindate) from emp;
-- month
select month(joindate) from emp;
-- day  
select day(joindate) from emp;  
-- hour
select hour(logintime) from emp;
-- minute
select minute(logintime) from emp;
-- second
select second(logintime) from emp;
-- add days
select date_add(joindate,interval 10 day) from emp;

-- months
select date_add(joindate,interval 2 month) from emp;
-- subract days
select date_sub(joindate,interval 5 day) from emp;
-- years
select date_add(joindate,interval 1 year) from emp;
-- date diffrence
select datediff('2024-12-31',joindate) from emp;
-- formate date
select date_format(joindate,'%d-%m-%y') from emp;
-- format as month name
select date_format(joindate,'%m') from emp;
select date_format(joindate,'%M') from emp;
-- employees joined after feb 1
select * from emp where joindate > '2024-02-01';

-- employee joined between two dates
select * from emp 
where joindate between '2024-02-01' and '2024-03-15';

-- working with time
-- employee logged in before 9 AM
select * from emp
where logintime < '09:00:00';

-- add time 30 minutes
select addtime(logintime,'00:30:00') from emp;

-- add 1 hour
select addtime(logintime,'01:00:00') from emp; 