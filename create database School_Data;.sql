-- Consider the relational schema given below.

-- Teacher (EmpID, Name, Phone, Address )
-- Module (ModuleNo, ModuleName, Hours )
-- Teaching (EmpID, ModuleNo, StDate, EndDate )



-- create database
create database School_Data;

-- use database
used school_data;

-- (i)	Create 2 tables of Teacher and Module gives above (Choose suitable data types for each field. )
-- create table Teacher
create table Teacher (
	EmpID varchar (25) primary key,
	Name varchar (255) not null,
	Phone int (50),
	Address varchar (255) not null
);

--teacher table description
desc teacher;

-- create table Module
create table Module (
	ModuleNo varchar (25) primary key,
	ModuleName varchar (255) not null,
	Hours int (50)
);

--Module table description
desc Module;


-- (ii)	Create the Teaching table and be sure to indicate all the keys properly.
-- create table Teaching
create table Teaching (
	EmpID varchar (25),
	ModuleNo varchar (25),
	StDate date,
	EndDate date
	
);

-- delete teaching table
drop table teaching;

-- create table Teaching
create table Teaching (
	EmpID varchar (25),
	ModuleNo varchar (25),
	StDate date,
	EndDate date
	
);


-- add a foreign key to the teacher table
ALTER TABLE teaching
ADD FOREIGN KEY (EmpID) REFERENCES teacher(EmpID);

-- add another foreign key to the teacher table
alter table teaching
add foreign key (ModuleNo) references module(ModuleNo);

--teaching table description
desc Teaching; 


-- (iii)	Modify the Teaching table by adding a new column name called "Hours per week".
-- add a new column
alter table teaching 
add column Hours_per_week int(10);

--teaching table description
desc Teaching;


-- (iv)	Add a record to the Module table as given below.
-- ModuleNo = M01
-- ModuleName = Database Systems-1

-- add a data to the module table
insert into module 
values ('M01', 'Database System-1', 500);

-- select all from module table
select * from module;

-- add a data to the teacher table
insert into teacher 
values ('E01', 'Susanthe', 0753002782, 'Kandy');

-- select all from teacher table
select * from teacher;

-- add a data to the teaching table
insert into teaching 
values ('E01', 'M01', '0000000' , '0000000', 60);

-- select all from teaching table
select * from teaching;



Select * from module 
where ModuleName = "Database System-1";


-- (v)	Display all the names. Telephone Numbers and the module name of Teachers who are teaching the module "Database Systems-1”.
-- (Assume that many records are available in all tables for (v) part of the question )


select Name, Phone, ModuleName from 
teacher t inner join teaching g on
t.EmpID = g.EmpID 
inner join module m on 
m.ModuleNo = g.ModuleNo 
where ModuleName = "Database System-1";




show tables;
