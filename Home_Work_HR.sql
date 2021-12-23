--Home Work site https://www.w3resource.com/sql-exercises/joins-hr/index.php
-- Question 1
Select E.first_name, E.last_name, E.department_id, D.department_name
From employees E
Join departments D On E.department_id = D.department_id;
go

-- Question 2
SELECT E.first_name,E.last_name, D.department_name, L.city, L.state_province
FROM employees E 
Join departments D ON E.department_id = D.department_id  
Join locations L ON D.location_id = L.location_id;
go

-- Question 3

--CREATE TABLE job_grades (
--	grade_level VARCHAR (50) NOT NULL PRIMARY KEY,
--	lowest_sal INT NOT NULL,
--	highest_sal INT NOT NULL
--);

--INSERT INTO job_grades(grade_level,lowest_sal,highest_sal) VALUES ('A',1000,2999);
--INSERT INTO job_grades(grade_level,lowest_sal,highest_sal) VALUES ('B',3000,5999);
--INSERT INTO job_grades(grade_level,lowest_sal,highest_sal) VALUES ('C',6000,9999);
--INSERT INTO job_grades(grade_level,lowest_sal,highest_sal) VALUES ('D',10000,14999);
--INSERT INTO job_grades(grade_level,lowest_sal,highest_sal) VALUES ('E',15000,24999);
--INSERT INTO job_grades(grade_level,lowest_sal,highest_sal) VALUES ('F',25000,40000);

SELECT E.first_name, E.last_name, E.salary, J.grade_level
FROM employees E 
Join job_grades J ON E.salary Between J.lowest_sal And J.highest_sal;
go

-- Question 4
SELECT E.first_name, E.last_name, E.department_id,  D.department_name 
FROM employees E 
Join departments D ON E.department_id = D.department_id And E.department_id In (80 , 40)
go

-- Question 5
SELECT E.first_name, E.last_name, D.department_name, L.city, L.state_province
FROM employees E 
Join departments D ON E.department_id = D.department_id 
Join locations L ON D.location_id = L.location_id 
WHERE E.first_name Like  '%z%';
go

-- Question 6


-- Home Work PDF
-- Question 1
select * from countries
select * from departments
select * from dependents
select * from employees
select * from jobs
select * from locations
select * from regions
go

-- Question 2
Select first_name + ' ' + last_name [employee name], salary
From employees
go

-- Question 3
Select last_name, salary
From employees
where salary > 12000
go

-- Question 4
Select last_name, department_id
From employees
where employee_id = 176
go

-- Question 5
Select last_name, salary
From employees
where salary Between 5000 And 12000
go

-- Question 6
Select last_name, job_id, hire_date
From employees
where last_name like 'Matos' or last_name like 'Taylor'
go

-- Question 7
Select last_name, department_id
From employees
where department_id = 20 Or department_id = 50
Order by last_name Asc
go

-- Question 8
select E.last_name, J.job_title
From employees E
Join jobs J On J.job_id = E.Job_id
Where manager_id Is Null
go

-- Question 9
Select E.last_name, E.salary, J.job_title
From employees E
Join jobs J On J.job_id = E.job_id
Order By E.salary, J.job_title Desc
go

-- Question 10
Select
Max(salary)[Maximum],
Min(salary)[Minimum],
Sum(salary)[Sum],
Avg(salary)[Average]
From employees
go

-- Question 11
Select
job_id,
Max(salary)[Maximum],
Min(salary)[Minimum],
Sum(salary)[Sum],
Avg(salary)[Average]
From employees
Group By job_id
go

-- Question 12
Select
job_id,
Count(job_id)[Count]
From employees
Group By job_id
go

-- Question 13
Select Count(1)[Number of managers]
From(
Select Count(manager_id)[Managers]
From employees
Group By manager_id
)[55]
go

-- Question 14
Select Max(salary) - Min(salary)[DIFFERENCE]
from employees
go

-- Question 15
Select
D.department_name,
L.street_address,
L.postal_code,
L.city,
L.state_province,
C.country_name
from departments D
Join locations L On D.location_id = L.location_id
Join countries C On L.country_id = C.country_id
go

-- Question 16
Select
L.location_id,
L.street_address,
L.city,
L.state_province,
C.country_name
from locations L
Join countries C On L.country_id = C.country_id
go

-- Question 17
select
E.last_name,
D.department_name
from employees E
join departments D on E.department_id = D.department_id
go

-- Question 18
select
E.last_name,
J.job_title,
E.department_id,
D.department_name
from employees E
join jobs J on E.job_id = J.job_id
join departments D on E.department_id = D.department_id
join locations L on D.location_id = L.location_id
where L.city like 'Toronto'
go