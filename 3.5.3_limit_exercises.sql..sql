#2 List the first 10 distinct last names sorted in Descending (Z-A) order:
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

#3 Update Christmas birthday and hire dates to show the first five employees who have both, ordered by birth_date and hire_date:
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

#4
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET (10 - 1) * 5;
#Keeps coming up as syntax error, and I've checked it to ryan's answer - looks the same.  No comprendo.