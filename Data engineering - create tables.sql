

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(7)   NOT NULL,
    birth_date VARCHAR(12),
    first_name VARCHAR(30),
    last_name VARCHAR(30) ,
    sex VARCHAR(1),
    hire_date VARCHAR(12),
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE departments (
    dept_no VARCHAR(5)   NOT NULL,
    dept_name VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE titles (
    title_id VARCHAR(7)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT  NOT NULL,
    PRIMARY KEY (emp_no)
);


CREATE TABLE dept_manager (
    dept_no VARCHAR(5)   NOT NULL,
    emp_no INT   NOT NULL,
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(5)   NOT NULL
);
