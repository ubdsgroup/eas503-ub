.header on
.separator '\t'
.mode column
PRAGMA foreign_keys = ON;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE employees (
    emp_no      INTEGER         NOT NULL,
    birth_date  TEXT            NOT NULL,
    first_name  TEXT     NOT NULL,
    last_name   TEXT     NOT NULL,
    gender      TEXT  NOT NULL,    
    hire_date   TEXT            NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
    dept_no     TEXT         NOT NULL,
    dept_name   TEXT     NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_manager (
   emp_no       INTEGER             NOT NULL,
   dept_no      TEXT         NOT NULL,
   from_date    TEXT            NOT NULL,
   to_date      TEXT            NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   PRIMARY KEY (emp_no,dept_no)
); 

CREATE TABLE dept_emp (
    emp_no      INTEGE          NOT NULL,
    dept_no     TEXT            NOT NULL,
    from_date   TEXT            NOT NULL,
    to_date     TEXT            NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no)  ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE titles (
    emp_no      INTEGER   NOT NULL,
    title       TEXT      NOT NULL,
    from_date   TEXT      NOT NULL,
    to_date     TEXT      NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,title, from_date)
) 
; 

CREATE TABLE salaries (
    emp_no      INTEGER         NOT NULL,
    salary      INTEGER         NOT NULL,
    from_date   TEXT            NOT NULL,
    to_date     TEXT            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
) 
; 
