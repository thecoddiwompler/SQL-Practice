--Test Case 1

TRUNCATE TABLE employees.candidates;
insert into employees.candidates values(1,'junior',5000);
insert into employees.candidates values(2,'junior',7000);
insert into employees.candidates values(3,'junior',7000);
insert into employees.candidates values(4,'senior',10000);
insert into employees.candidates values(5,'senior',30000);
insert into employees.candidates values(6,'senior',20000);

--Test Case 2

TRUNCATE TABLE employees.candidates;
insert into employees.candidates values(20,'junior',10000);
insert into employees.candidates values(30,'senior',15000);
insert into employees.candidates values(40,'senior',30000);

--Test Case 3

TRUNCATE TABLE employees.candidates;
insert into employees.employees.candidates values(1,'junior',15000);
insert into employees.employees.candidates values(2,'junior',15000);
insert into employees.employees.candidates values(3,'junior',20000);
insert into employees.employees.candidates values(4,'senior',60000);

--Test Case 4

TRUNCATE TABLE employees.candidates;
insert into employees.candidates values(10,'junior',10000);
insert into employees.candidates values(40,'junior',10000);
insert into employees.candidates values(20,'senior',15000);
insert into employees.candidates values(30,'senior',30000);
insert into employees.candidates values(50,'senior',15000);

