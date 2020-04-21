USE employees;

# SQL SELECT Statement

SELECT first_name, last_name
FROM employees;

# Get the entire data

SELECT * FROM employees;

# Select the info from dept-no column of the departments table

SELECT dept_no
FROM departments;

# Select all data from departments table

SELECT * FROM departments;

# WHERE Clause

SELECT * 
FROM employees
WHERE first_name = "Denis";

# Select all peple from employees whose first name is 'Elvis"

SELECT * 
FROM employees
WHERE first_name = "Elvis";

# AND operator

SELECT * 
FROM employees
WHERE first_name = "Denis" AND gender = "M";

# Retrieve a list of all female employees whose first name is Kellie

SELECT * FROM employees
WHERE first_name = "Kellie" AND gender = "F";

# OR operator

SELECT * from employees
where first_name ="Kellie" or first_name = "Aruna";

# IN operator

SELECT * FROM employees
WHERE first_name IN ('Cathie','Mark','Nathan');

# Select all individual from employees table whose first name is "Denis" or "Elvis"

SELECT * FROM employees
WHERE first_name IN ("Denis","Elvis");

SELECT * FROM employees
WHERE first_name NOT IN ("John","Mark","Jacob");


# LIKE - NOT LIKE operator

# names starting with 'Mar'

SELECT * from employees
where first_name like ('Mar%');

# names ending with 'ar'

select * from employees
where first_name like ('%ar');

# names containing ar

select * from employees
where first_name like ('%ar%');

select * from employees
where first_name like ('Mark%');

select * from employees
where hire_date like('2000%');

select * from employees
where emp_no like ('1000_');

select * from employees
where first_name not like ('%jack%');

# BETWEEN operator

select * from employees
where hire_date between '1990-01-01' and '2000-01-01';

select * from salaries
where salary between 66000 and 70000;

select * from employees
where emp_no not between 10004 and 10012;

select * from departments
where dept_no is not null;

select * from employees
where gender = 'F' and hire_date >= '2000-01-01';

select * from salaries
where salary > 150000;

select distinct hire_date 
from employees;

# Aggregate Functions

# employees registered in our database

select count(*) from employees;

describe employees;

# how many distinct first names

select count(distinct first_name) from employees;

select count(salary) from salaries
where salary >= 100000;

select count(*) from dept_manager;

# Order By

select * from employees
order by first_name desc;

select * from employees
order by hire_date desc;

# Group By

select first_name
from employees
group by first_name;

select first_name, count(first_name)
from employees
group by first_name
order by 2 desc;

select salary, count(salary) as emps_with_same_salary
from salaries
where salary > 80000
group by salary
order by 1;

# HAVING

select first_name, count(first_name) as name_count
from employees
group by first_name
having name_count >250
order by 2 desc;

select *, avg(salary)
from salaries
group by emp_no
having avg(salary) > 120000;

select first_name, count(first_name), hire_date from employees
where hire_date > '1999-01-01'
group by first_name
having count(first_name) < 200;

select emp_no, count(from_date)
from dept_emp
where from_date > '2000-01-01'
group by emp_no
having count(from_date) > 1;

select * from salaries
limit 1000;

select emp_no, salary
from salaries 
order by salary desc
limit 10;

# Insert Statement

use employees;

select * from employees
order by emp_no desc
limit 10;

INSERT INTO employees
(emp_no,birth_date, first_name,last_name,gender,hire_date)
values
(999901,'1986-04-21','John','Smith','M','2011-01-01');

INSERT INTO employees
values
('999902','1973-3-26','Patricia','Lawrence','F','2005-01-01');

INSERT INTO employees
values
(999903,'1977-09-14','Jonathan','Creek','M','1999-01-01');

select * from titles
order by emp_no desc
limit 10;

INSERT INTO titles
(emp_no,title,from_date)
values
(999903,'Senior Engineer','1997-10-01');

select * from dept_emp
order by emp_no desc;

INSERT into dept_emp
(emp_no, dept_no, from_date, to_date)
values
(999903,'d005','1997-10-01','9999-01-01');


