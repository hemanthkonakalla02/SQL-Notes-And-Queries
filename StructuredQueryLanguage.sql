-- DDL[Data Defination Language]

-- CREATE
create database if not exists sqlcomplete; 

use sqlcomplete;

show databases;

show tables;

-- DROP
drop database if exists sqlcomplete;

create table employ(eid int,ename varchar(45),salary int);

drop table employ;

select * from employ;

-- ALTER
alter table employ add dept varchar(45);

-- RENAME
rename table employ to emp;

select * from emp;

insert into emp values(2,'anandkumarkonakalla',105000,'Analyst');

-- TRUNCATE
truncate table emp;


-- DML[Data Manipulation Language]

-- INSERT

-- implicit inserting
	insert into emp values(1,'hemanthkumarkonakalla',95000,'SoftwareDevelopment');
    insert into emp values(3,'priyankakonakalla',45000,'testing'),(4,'prasad','35000','Autocad');
  
    
-- explicit inserting
	
    insert into emp(eid,ename,salary) values(5,'sekhar',60000);
    insert into emp(eid,ename,salary) values(6,'hanvika',25000),(7,'chinni',55000);
    
-- UPDATE

	select * from emp;
    
    -- update without where clause
    
    set sql_safe_updates=0;
    update emp set dept='software';
    
	-- update with where clause

	update emp set dept='Architect' where eid=5;
    
 -- DELETE

	-- delete without where clause
    delete from emp;
    
    -- delete with where clause
    delete from emp where eid=6;
    
    
-- DQL[Data Query language]
    
    -- select without where cluase
    select * from emp;
    
    -- select with where clause
    
    select * from emp where dept='softwaredevelopment';
    
    
-- TCL [Transaction control language]
    
    set autocommit=0;
    
    select * from emp;
    
    insert into emp values(2,'anand',95000,'Analyst');
    commit;
  
	set sql_safe_updates=0;
	delete from emp where eid=2;
	rollback;
    
	savepoint sp1;

	select * from emp;

	insert into emp values(6,'hanvika',25000,'software');

	rollback to savepoint sp1;
    
    
-- DCL [Data Control Language]
     
     create user 'hemanth' identified by 'test';
	 drop user 'hemanth';
     
        -- grant
        grant select,insert,update on sqlcomplete.emp to  'hemanth';
       
       -- revoke
        revoke update on sqlcomplete.emp from 'hemanth';
        
        revoke all on sqlcomplete.emp from 'hemanth';
        


-- SQL Constraints 

use sqlcomplete;
create table dept(dept_id int primary key,dept_name varchar(45) not null);


insert into dept values(101,'CloudEngineering');
insert into dept values(102,'Architecture');
insert into dept values(103,'CSE');
insert into dept values(104,'ECE');
insert into dept values(105,'EEE');
insert into dept values(106,'Mechanical');
insert into dept values(107,'MBA');

-- Defining SQL Constraints during table creation

create table employ(eid int primary key,ename varchar(45) not null,email varchar(45) unique,age tinyint check(age>=18),address varchar(45) default 'Kgm',dept_id int, foreign key( dept_id) references dept(dept_id));

select * from employ;

insert into employ(eid,ename,email,age,dept_id) values(7,'nani','nani@gmail.com',25,107);



-- Defining SQL Constraints after table creation

create table employ(eid int,ename varchar(45),email varchar(45),age tinyint,address varchar(45),dept_id int);

select * from employ;

-- adding primary key constraint to eid

alter table employ add constraint pk primary key(eid);

-- adding not null constraint to ename

alter table employ modify ename varchar(45) not null;

-- adding unique constraint to email

alter table employ add constraint uq unique(email);

-- adding check constraint for age

alter table employ add constraint chk check(age>=18);


-- adding the default constraint to address

alter table employ modify address varchar(45) default 'KGM';

-- adding foreign key constraint to employ table

alter table employ add constraint fk foreign key(dept_id) references dept(dept_id);


select * from employ;

insert into employ(eid,ename,email,age,dept_id) values(7,'nani','nani@gmail.com',29,107);


-- Removing SQL Constraints from table

-- Removing primary key for eid

alter table employ drop primary key;

-- Removing not null for ename

alter table employ modify ename varchar(55);


-- Removing unique constraint for email

alter table employ drop constraint uq;

-- Removing check constraint for age

alter table employ modify age tinyint;


-- Removing the default constraint for address

alter table employ modify address varchar(55);

-- Removing the foreign key for employ table

alter table employ drop constraint fk;



-- autoincrement

use sqlcomplete;
create table student(sid int primary key auto_increment,sname varchar(45),address varchar(45));

select * from student;

insert into student(sname,address) values('hemanthkumarkonakalla','koyyalagudem');
insert into student(sname,address) values('anandkumarkonakalla','hyderabad');
insert into student(sname,address) values('priyankakonakalla','hyderabad');


-- datatypes

create table studentdetails(sid int,age tinyint,fee decimal,marks float,name varchar(45),collegeName char(45),remarks text,doj datetime,AttendedExam boolean);

select * from studentdetails;

insert into studentdetails values(1,29,35000.78,78.5,'hemanthkumarkonakalla','Aditya University',"good at studies",'2018-06-17 09:34:54',true);

-- where 

select * from emp where ename='hemanthkumarkonakalla';


-- between and not between

select * from emp;

select * from emp where salary between 50000 and 100000;


select * from emp where salary not between 50000 and 100000;


-- IN and NOTIN

select * from emp where salary in(55000,95000,60000);

select * from emp where salary not in(55000,95000,60000);


-- LIKE And NOTLIKE

select * from emp;

select * from emp where ename like 'h%';
select * from emp where ename like '%d';

select * from emp where ename like 'a_a_d';

select * from emp where ename not like 'h%';


-- ORDER BY

select * from emp;

select * from emp order by salary;

select * from emp order by salary desc;



-- GROUP BY
select * from employ;

select dept_id,count(ename) from employ group by dept_id;


-- HAVING

select dept_id,count(ename) from employ group by dept_id having dept_id=101;


-- aggregate functions

select * from emp;

select sum(salary) from emp;

select max(salary) from emp;

select min(salary) from emp;

select avg(salary) from emp;

select count(*) from emp;

select count(dept) from emp;
