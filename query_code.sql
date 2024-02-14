-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employee_number, last_name, first_name, gender, salary
FROM employees
JOIN salaries ON employees.employee_number = salaries.employee_number;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;