use employees;

# DELETE Statement

COMMIT;

SELECT * FROM employees
where emp_no = 999903;

DELETE FROM employees
where emp_no = 999903;

ROLLBACK;

select * from departments_dup;

commit;

delete from departments_dup;

# DROP vs DELETE vs TRUNCATE

# After dropping an object you won't be able to rollback

# Truncate removes all records in the table 

# DELETE removes row by row depending on the conditions based on the where clause.alter

# TRUNCATE returns output quicker than DELETE

# Autoincrement values are not reset with delete




