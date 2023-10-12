--1. List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, last_name, first_name, sex, salary
from employees as e
join salaries as s
on (e.emp_no = s.emp_no);


--2. List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';
;