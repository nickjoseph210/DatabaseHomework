#1
USE employees;

#2 Concatenate the first and last names of employees whose names begin and end with the letter 'e'
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE first_name LIKE 'e%'
	AND last_name LIKE '%e';

#3 Uppercase all the names in the above
SELECT CONCAT(first_name, ' ', last_name) AS full_name,
UPPER(CONCAT(first_name, ' ', last_name)) AS ucase_full_name
FROM employees 
WHERE first_name LIKE 'e%'
	 AND last_name LIKE '%e';
	 
#4 For emps born on Christmas and hired in the 1990's, use datediff() to find out how many days they've been working for the company
SELECT first_name, last_name, DATEDIFF(now(), hire_date) 
FROM employees 
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25';

#5 Find the smallest and largest salaries from the salaries table
SELECT MIN(salary), MAX(salary)
FROM salaries;

#6 Generate a username for all employees that is all lowercase, first_letter of first_name + first 4 letters of last_name, an '_', the birth_month, and the last 2 digits of the year they were born
SELECT 
CONCAT
( 
LOWER(LEFT(first_name, 1)),
LOWER(LEFT(last_name, 4)),
'_',
RIGHT(LEFT(birth_date, 7), 2),
RIGHT(LEFT(birth_date, 4), 2)
) 
AS 'username',
first_name, last_name, birth_date
FROM employees
LIMIT 25;