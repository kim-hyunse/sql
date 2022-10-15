show databases;
/*create database cas;*/
use cas;


create table dept_inform2 (
dept_code int primary key, 
dept_name varchar(10)
 );
 
 create table student1 (
stud_id int primary key, 
dept_code int, foreign key (dept_code) references dept_inform2(dept_code)
on delete set null on update cascade,
name varchar(10)

 );

insert into dept_inform2 values('101','소프트웨어학과'),
('102','전자과'),('201','화학과'),('202','경영학과');

select * from dept_inform2;

insert into student1 values(20201234,101,'홍길동'),(20191211,201,'김가천'),
(20184213,102,'최지우'),(20171235,101,'배용준'),(20209822,202,'최민수'),
(20192385,102,'이민호'),(20195431,101,'송민국');

select * from student1;

update dept_inform2 set dept_code=501
where dept_name='소프트웨어학과;';

select * from dept_inform2;
select * from student1;
