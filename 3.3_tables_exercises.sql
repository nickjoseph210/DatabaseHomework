#3
USE employees;

#4
SHOW TABLES;

#5
-- integers(pk), date, varchars, and enum are all data types present on this table

#6
-- dept_emp, dept_manager, employees, employees_with_departments, salaries, and titles all contain numeric-type columns

#7
-- departments, dept_emp, dept_manager, employees, employees_with_departments, and titles all contain string-type columns

#8
-- dept_emp, dept_manager, employees, salaries, and titles all contain date-type columns

#9
-- the relationship between employees and departments is one to many, as one employee can be part of many departments throughout their career, but one department can have many employees.

#10
/* -- CREATE TABLE `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1; */