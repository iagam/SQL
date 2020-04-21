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

# Inserting data into a new table

CREATE TABLE department_dup
(	
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

INSERT INTO department_dup
select * from departments;

select * from department_dup;

insert into departments
values
('d010','Business Analysis');

