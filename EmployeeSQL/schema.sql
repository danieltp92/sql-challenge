
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	CONSTRAINT pk_title_id PRIMARY KEY (title_id)
)
;

CREATE INDEX ON titles(title);

CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE,
	first_name VARCHAR(32),
	last_name VARCHAR(32),
	sex VARCHAR(1),
	hire_date DATE,
	CONSTRAINT pk_emp_no PRIMARY KEY (emp_no),
	CONSTRAINT fk_title_id
		FOREIGN KEY (emp_title)
			REFERENCES titles(title_id)
)
;

CREATE INDEX ON employees(emp_title);

CREATE TABLE departments (
	depto_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	CONSTRAINT pk_depto_no PRIMARY KEY (depto_no)
)
;

CREATE INDEX ON departments(dept_name);



CREATE TABLE salaries (
	salary INT NOT NULL,
	emp_no INT,
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no)
			REFERENCES employees(emp_no)
)
;

CREATE TABLE dept_manager (
	emp_no INT,
	depto_no VARCHAR,
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no)
			REFERENCES employees(emp_no),
	CONSTRAINT fk_depto_no
		FOREIGN KEY (depto_no)
			REFERENCES departments(depto_no)
)
;

CREATE TABLE dept_emp (
	emp_no INT,
	depto_no VARCHAR,
	CONSTRAINT fk_emp_no
		FOREIGN KEY (emp_no)
			REFERENCES employees(emp_no),
	CONSTRAINT fk_depto_no
		FOREIGN KEY (depto_no)
			REFERENCES departments(depto_no)
)
;
