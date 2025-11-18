create database simpledb;
use simpledb;
show databases;
create table student(student_id int primary key,   -- primary key
student_name varchar(50) not null,                 -- not null
mark int check(mark between 0 and 100),            -- check
city varchar(30) default 'coimbatore');            -- default
select * from student;
insert into student values(1,'arun',80,'chennai'),
(2,'priya',90,'madhurai'),
(3,'kumar',70,'coimbatore'),
(4,'meena',85,default),
(5,'sara',95,'chennai');
select * from student;
-- aggrecate function--
select count(*) from student;
select max(mark) from student;
select min(mark) from student;
select avg(mark) from student;
select sum(mark) from student;
select count(*) from student where city = 'chennai';
select count(*) from student where mark>80;
select count(*) from student where mark<60;
select sum(mark) from student where city = 'chennai';
select avg(mark) from student where city = 'madhurai';
select count(*) from student where mark=90;
select count(*) from student where mark between 70 and 90;
select sum(mark) from student
where student_name like 'a%';
select student_name from student where student_name like 'a%';
select student_name from student where student_name like '%r';
