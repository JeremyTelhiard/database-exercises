USE employees;
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name desc
LIMIT 10;
SELECT *
FROM employees
WHERE (hire_date >= '1990-01-01' AND hire_date <= '1999-12-31') AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;
SELECT *
FROM employees
WHERE (hire_date >= '1990-01-01' AND hire_date <= '1999-12-31') AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

-- LIMIT sets the number of results to show on a page and OFFSET sets
-- the amount of pages deep into the data you will go. So OFFSET
-- uses the LIMIT to decide what page number you will be on.