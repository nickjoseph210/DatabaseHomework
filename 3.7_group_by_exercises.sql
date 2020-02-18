#2 Use 'DISTINCT' to find the unique titles in the 'titles' table
SELECT DISTINCT(title)
FROM titles;

#3a Find the unique last names for employees whose last names start and end with 'e':
SELECT DISTINCT(last_name)
FROM employees
WHERE last_name LIKE 'e%e';

#3b Same as above, only this time use GROUP BY:
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

#4 Update above to find unique combinations of first_name and last_name where the last_name starts and ends with 'e':
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;

#5 Find unique last names with a 'q' but not a 'qu'
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

#6 Add COUNT() to the above and use ORDER BY to make it easier to find employees whose unusual name is shared by others
SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

#7 Find out how many employees - male or female - have the first names, 'irena', 'vidya', and 'maya':
SELECT COUNT(*), gender
FROM employees
WHERE first_name LIKE 'irena'
OR first_name LIKE 'vidya'
OR first_name LIKE 'maya'
GROUP BY gender;

#8 Find the unique last names of all employees with the first names 'irena', 'vidya', and 'maya':
SELECT first_name, last_name, gender
FROM employees
WHERE first_name LIKE 'irena'
OR first_name LIKE 'vidya'
OR first_name LIKE 'maya'
GROUP BY first_name, last_name, gender;