create database clausedb;
use clausedb;
create table students (
	student_id int primary key,
    name varchar(50) not null,
    city varchar(50) default'attur',
    mark int check (mark between 0 and 100),
    email varchar(50) unique);
insert into students values(1,'arun','chennai',85,'arun@gmail.com'),
(2,'priya','madhurai',92,'priya@gmail.com'),
(3,'kumar','chennai',76,'kumar@gmail.com'),
(4,'meena',default,64,'meena@gmail.com'),
(5,'sara','chennai',95,'sara@gmail.com');
select * from students;
select count(*) as chennaistudents
from students
where city = 'chennai';
select name,mark
from students
order by mark desc
limit 2; 
select city,count(*) as studentscount
from students
group by city;
select city,avg(mark) as averagemark
from students
group by city
having avg(mark) > 80;

select sum(mark) as chennaitotalmarks
from students
where city = 'chennai';

select name,mark
from students
order by mark desc
limit 3;

select city,avg(mark)
from students
where mark>60
group by city
having avg(mark) > 70
order by avg(mark) desc
limit 2;

