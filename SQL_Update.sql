# TCLs COMMIT and ROLLBACK

# UPDATE Statement

use employees;

UPDATE employees
SET 
	first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE 
	emp_no = 999901;
    
select * from employees
where emp_no = 999901;

select * from departments_dup;

UPDATE departments_dup
SET
	dept_no = 'd011',
    dept_name = 'Quality Control';
    
rollback;

insert into departments_dup
select * from departments;


drop table departments_dup;

create table departments_dup
(	dept_no char(4) not null,
	dept_name varchar(40) not null
);

select * from departments_dup
order by dept_no desc;

COMMIT;

rollback;




