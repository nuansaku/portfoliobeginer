use latihan1;

/* Create Table */

create table EmployeeDemographics(
EmployeeID int,
FirstName varchar (50),
LastName varchar (50),
Age int,
Gender varchar (50)
);
create table EmployeeSalary
(EmplyeeID int,
JobTitle varchar (50),
Salary int);

/* Insert Data to Table */

insert into EmployeeDemographics values 
(1001, 'Jim','Halper', 30, 'Male'),
(1002, 'Pam', 'Beasley',30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male');

/*Delete Table */

drop table employeedemography;
drop table tabel_latihan2;
drop table employeedemographics;

create table EmployeeDemographics(
EmployeeID int,
FirstName varchar (50),
LastName varchar (50),
Age int,
Gender varchar (50)
);
insert into EmployeeDemographics values 
(1002, 'Pam', 'Beasley',30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male');

insert into EmployeeSalary values
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000);


/* Select Function*/

select FirstName
from EmployeeDemographics;

/*Distinct, Count, Min, Max, Avg */


select distinct(Gender)
from EmployeeDemographics;

select * from EmployeeDemographics;

select count(LastName) as LastNamecount
from EmployeeDemographics;

select * from EmployeeSalary;

select min(Salary) from EmployeeSalary;
select max(Salary) from EmployeeSalary;
select avg(Salary) from EmployeeSalary;

/*Where Function */

select * from EmployeeDemographics;
select* from EmployeeDemographics
where FirstName <>'Jim';

select*from EmployeeDemographics
where Age >30;

select*from EmployeeDemographics
where LastName like 's%';

select*from EmployeeDemographics
where LastName like '%s%';

select*from EmployeeDemographics
where LastName like 's%o%tt%';

select* from EmployeeDemographics
where FirstName is Not Null;

select* from EmployeeDemographics
where FirstName in ('Pam', 'Michael');

/*Group by Function */

select* from EmployeeDemographics;
select Gender
from EmployeeDemographics
group by Gender;

use latihan1;

select Gender,count(Gender)
from EmployeeDemographics
group by Gender;
select Gender, Age, count(Gender) as Total
from EmployeeDemographics
group by Gender, Age;
select Gender, count(Gender) as CountGender
from EmployeeDemographics
where age >31
Group by Gender
Order by Gender;

/* Order by Function */

select * FROM EmployeeDemographics
order by Age desc, Gender desc;

select Gender, count(Gender)
from employeedemographics
group by Gender;

/* JOIN */

