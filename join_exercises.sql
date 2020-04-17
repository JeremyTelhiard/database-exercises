USE employees;
SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date >= '9999'
ORDER BY d.dept_name;
SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date >= '9999' AND e.gender = 'F'
ORDER BY d.dept_name;
SELECT t.title AS 'Title', COUNT(*) AS COUNT
FROM dept_emp AS de
         JOIN titles AS t
              ON t.emp_no = de.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd009' AND de.to_date >= '9999' AND t.to_date >= '9999'
GROUP BY t.title
ORDER BY t.title;
SELECT d.dept_name AS `Department Name`, CONCAT(e.first_name, ' ', e.last_name) AS `Department Manager`,
       s.salary AS Salary
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
         JOIN salaries AS s
              ON s.emp_no = e.emp_no
WHERE de.to_date >= '9999' AND s.to_date >= '9999'
ORDER BY d.dept_name;
--BONUS
SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Employee Name`, d.dept_name AS `Department Name`,
       CONCAT(me.first_name, ' ', me.last_name) AS `Manager Name`
FROM employees as e
        JOIN dept_emp AS de2
            ON de2.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de2.dept_no
        JOIN dept_manager AS dm
             on d.dept_no = dm.dept_no
        JOIN employees AS me
            on dm.emp_no = me.emp_no
        WHERE dm.to_date > curdate()
ORDER BY e.first_name, e.last_name;