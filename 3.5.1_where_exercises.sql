SELECT first_name
FROM employees
WHERE first_name
	LIKE 'e%n'; # selects all the rows under the column 'first_name' form the table 'employees' and searches them for all names beginning with 'e' and ending with 'n.'
	
-- to find all employees from the employees table with the last names 'Herber,' 'Dredge,' 'Lipner,' and 'Baek:'
SELECT last_name
FROM employees
WHERE last_name IN 
	('Herber', 'Dredge', 'Lipner', 'Baek'
	);
-- Now to eliminate the repetitions in the results, adjust the SELECT statement:
SELECT DISTINCT last_name
FROM employees
WHERE last_name IN 
	('Herber', 'Dredge', 'Lipner', 'Baek'
	);
-- We can chain WHEREs together:
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
	AND last_name IN ('Herber', 'Baek')
		OR first_name = 'Shridhar';

-- EXERCISES
#1 
USE employees;

#2 Find all employees with first names 'Irena,' 'Vidya,' or 'Maya' (should get 709 rows)
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

#3 Find all employees whose last name starts with 'e' (should get 7,330 rows 
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%';

#4 Return all employees hired in the '90's (135,214 rows):
SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

#5 Give me all the employees born on Christmas (842 rows):
SELECT birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

#6 Get all the employees with 'q' in their last name (should get back 1,873 rows):
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%';

#7 Updating query number 2 using 'OR' instead of 'IN' (709 rows):
SELECT first_name
FROM employees
WHERE first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name = 'Maya'; 

#8 - filter #7 to include only males (yields 441 rows)
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
	AND gender = 'M';
	
#9 - all employees whose last name starts or ends with 'e' (30,723 rows):
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%'
	OR last_name LIKE '%e';
	
#10 - update #9 to find out whose last name starts AND ends with 'e' (899 Rows):
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' 
	AND last_name LIKE '%e';

#11 - all employees hired in 1990's AND born on Christmas (362 Rows):
SELECT hire_date, birth_date AS 'Christmas Baby'
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	AND birth_date LIKE '%-12-25';

#12 - return all employees with 'q' but NOT 'qu' in last name (547 rows)
SELECT last_name 
FROM employees
WHERE last_name LIKE '%q%' 
	AND last_name NOT LIKE '%qu%';