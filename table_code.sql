DROP TABLE titles
DROP TABLE employees
DROP TABLE departments
DROP TABLE dept_emp
DROP TABLE dept_manager
DROP TABLE salaries

-- Create the employees table
CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(100),
    birth_date DATE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex CHAR(1),
    hire_date DATE
);

-- Create the titles table
CREATE TABLE titles (
    title_id VARCHAR(100),
    title VARCHAR(100),
    FOREIGN KEY (title_id) REFERENCES employees(emp_title_id)
);

-- Create the salaries table
CREATE TABLE salaries (
    emp_no INT,
    salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

-- Create the departments table
CREATE TABLE departments (
    dept_no VARCHAR(100) PRIMARY KEY,
    dept_name VARCHAR(255)
);

-- Create the dept_emp table
CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(100),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create the dept_manager table
CREATE TABLE dept_manager (
    emp_no INT,
    dept_no VARCHAR(100),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
