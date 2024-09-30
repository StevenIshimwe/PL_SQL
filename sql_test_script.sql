Create table Department(
    Dname varchar(50),
    Dnumber int Primary key);
    
Create table Employee(
    Fname varchar(50) not null,
    Lname varchar(50) not null,
    Ssn number primary key,
    Salary number,
    Dno number,
    FOREIGN key (Dno) references Department(Dnumber));
    
create table Project(
    Pname varchar(50) not null,
    Pnumber number primary key,
    Plocation varchar(50),
    Dnum int,
    FOREIGN key (Dnum) references Department(Dnumber));
    
create table Dept_Locations(
    Dnumber number,
    Dlocation varchar(50),
    FOREIGN key (Dnumber) references Department(Dnumber));

desc DEPARTMENT;

insert into DEPARTMENT values('Research',5);
insert into DEPARTMENT values('Administration',4);
insert into DEPARTMENT values('Headquaters',1);

desc Employee;
Insert into EMPLOYEE values('John','Smith',12345,50000,5);
Insert into EMPLOYEE values('Steven','ISHIMWE',12785,60000,4);
Insert into EMPLOYEE values('Alicia','Zelaya',55555,80000,4);

desc Project;
insert into Project Values('ProductX',10,'Houston',4);
insert into Project Values('ProductY',20,'Kigali',4);
insert into Project Values('ProductX',40,'Bellaire',5);

desc DEPT_LOCATIONS;
insert into DEPT_LOCATIONS values(5,'Sugarland');
insert into DEPT_LOCATIONS values(1,'Gisenyi');
insert into DEPT_LOCATIONS values(4,'Stafford');

UPDATE Department SET Dname = 'IT Support' WHERE Dnumber = 4;
 
 DELETE FROM Employee WHERE Ssn = 12345;
 
SELECT Fname, Lname
FROM Employee
WHERE Ssn = (SELECT Dnumber FROM Department WHERE Dname = 'Research');


SELECT 
    e.Fname, 
    e.Lname, 
    d.Dname 
FROM 
    Employee e
INNER JOIN 
    Department d ON e.Dno = d.Dnumber;
   
   
    
SELECT e.Fname, e.Lname, d.Dname
FROM Employee e
INNER JOIN Department d ON e.Dno = d.Dnumber;
