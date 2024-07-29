
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
)

	select * from employees


CREATE TABLE EmployeeDetails (
    ID INT,
    Gender varCHAR(10),
    Salary DECIMAL(10, 2),
    Age INT,
    FOREIGN KEY (ID) REFERENCES Employees(ID)
)

	select * from employeedetails



INSERT INTO Employees (ID, FirstName, LastName, Department)
VALUES 
(1, 'John', 'Doe', 'HR'),
(2, 'Jane', 'Smith', 'Finance'),
(3, 'Michael', 'Johnson', 'IT'),
(4, 'Emily', 'Davis', 'Marketing'),
(5, 'jhon', 'Doe', 'HR'),
(6, 'jim', 'Brown', 'sales'),
(7, 'jane', 'smith', 'Marketing'),
(8, 'lucy', 'matt', 'IT'),
(9, 'henry', 'cavil', 'Finance'),
(10, 'Ryan', 'Jackman', 'Marketing')


select *from employees


copy employees from 'D:\Data Analytics\SQL\Day-2\27_data-1722168513024.csv' DELIMITER ',' csv header

select * from employees

INSERT INTO EmployeeDetails (ID, Gender, Salary, Age)
VALUES 
(1, 'M', 60000, 35),
(2, 'F', 70000, 29),
(3, 'M', 80000, 42),
(4, 'F', 75000, 30),
(5,'F',50000,32),
(6,'M',75000,30),
(7,'F',65000,29),
(8,'F',70000,35),
(9,'M',65000,32),
(10,'M',72000,28)


select * from employeedetails


copy employeedetails from 'D:\Data Analytics\SQL\data-1722165475214.csv' DELIMITER ',' csv header

select * from employeedetails

select distinct gender from employeedetails


select * from employeedetails where gender='F'

select * from employeedetails where salary='70000.00' and gender='F'

select * from employeedetails where gender='M'or salary='75000.00';

select * from employeedetails where not salary='50000.00' and not age=40

select * from employeedetails


update employeedetails set gender='M',salary='90000.00',age=78 where id=999

select * from employeedetails

delete from employeedetails where salary=90000.00;

select * from employeedetails 

alter table employeedetails add country varchar(100);

select * from employeedetails

alter table employeedetails drop column country;

select * from employeedetails

alter table employeedetails rename column gender to Gendr;

select * from employeedetails

alter table employeedetails alter column gendr type varchar(100);

select * from employeedetails

alter table employeedetails alter column salary set not null

select * from employeedetails

select id,gendr from employeedetails where age in (35,50)

select * from employeedetails

select * from employeedetails where id between 1 and 10

select * from employeedetails

select * from employeedetails  order by age asc;

select* from employeedetails

select gendr,age,salary from employeedetails limit 10;

select * from employeedetails;

---constraint to check age should not be greater than 78
select * from employeedetails where age>78;

update employeedetails set age=78 where age>78;

select * from employeedetails

alter table employeedetails add constraint age check (age<=78

select * from employeedetails

--- custom constraint that particular column not contain 'a1','b1','check'
	update employeedetails set gendr='New gender' where gendr in('a1','b1','check');

select * from employeedetails

alter table employeedetails add constraint gendr check(gendr not in('a1','b1','check'));

select * from employeedetails

	