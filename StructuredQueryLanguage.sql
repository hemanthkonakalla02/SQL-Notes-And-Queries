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
       
        revoke update on sqlcomplete.emp from 'hemanth';
        
        revoke all on sqlcomplete.emp from 'hemanth';
        
