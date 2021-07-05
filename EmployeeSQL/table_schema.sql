drop table if exists departments;
drop table if exists dep_emp;
drop table if exists dep_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

CREATE TABLE departments (
PRIMARY KEY(dept_no),
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL
);

CREATE TABLE title (
PRIMARY KEY (title_id),
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL
);
	
CREATE TABLE employees (
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_title_id) REFERENCES title(title_id),
emp_no INT NOT NULL,	
emp_title_id VARCHAR NOT NULL,
birth_date	VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,	
last_name VARCHAR NOT NULL,	
sex VARCHAR NOT NULL,	
hire_date VARCHAR NOT NULL
);

CREATE TABLE dep_emp (
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no	INT NOT NULL,
dept_no VARCHAR NOT NULL
);

CREATE TABLE dep_manager (
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no	VARCHAR NOT NULL,
emp_no INT NOT NULL
);


CREATE TABLE salaries (
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
emp_no INT NOT NULL,
salary INT NOT NULL
);

