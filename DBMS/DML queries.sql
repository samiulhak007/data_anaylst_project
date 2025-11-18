create database SchoolDB;
use SchoolDB;
create table Student(Student_ID int,Student_Name varchar(50),Age int,Department varchar(100));
show tables;
insert into Student values(1,'sami',20,'INFORMATION TECHNOLOGY');
select * from Student;
insert into student values(2,'nazeer',15,'computer science');
select * from  student;
insert into student values(3,'yashir',20,'ECE'),(4,'shaid',21,'MECH');
select * from  student;
update student set department = 'data science' where Student_ID = 1;
set SQL_SAFE_UPDATES = 0;
select * from  student;
delete from student where student_id = 4;
select * from  student;

