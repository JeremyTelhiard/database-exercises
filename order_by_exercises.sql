USE employees
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name desc, first_name desc;
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no;
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no desc;
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1990-01-01' AND hire_date <= '1999-12-31';
SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';
SELECT emp_no, first_name, last_name
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';
SELECT emp_no, first_name, last_name
FROM employees
WHERE (last_name LIKE 'E%' OR last_name LIKE '%E');
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E';
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE (hire_date >= '1990-01-01' AND hire_date <= '1999-12-31') AND birth_date LIKE '%-12-25';
SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE (hire_date >= '1990-01-01' AND hire_date <= '1999-12-31') AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';