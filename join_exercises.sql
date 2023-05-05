USE employees;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
FROM employees
        JOIN dept_manager
              ON dept_manager.emp_no = employees.emp_no
        JOIN departments
              ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
        JOIN dept_manager as de ON de.emp_no = e.emp_no
        JOIN departments as d ON d.dept_no = de.dept_no
WHERE gender = 'F' AND de.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT title, COUNT(title) AS Total FROM titles t
JOIN dept_emp de on t.emp_no = de.emp_no
JOIN departments d on de.dept_no = d.dept_no
WHERE dept_name = 'Customer Service'
    AND t.to_date LIKE '9%'
    AND de.to_date LIKE '9%'
    GROUP BY title;

SELECT departments.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary
FROM employees as e
        JOIN dept_manager as de
            ON de.emp_no = e.emp_no
        JOIN departments
            ON departments.dept_no = de.dept_no
        JOIN salaries as s
             ON e.emp_no = s.emp_no
            AND de.to_date = s.to_date
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee,
       dept_name AS Department,
       CONCAT(e2.first_name, ' ', e2.last_name) AS Manager
FROM employees as e
    JOIN dept_emp de2 on e.emp_no = de2.emp_no
    JOIN departments as d
        ON d.dept_no = de2.dept_no
    JOIN dept_manager as de
         ON de.dept_no = d.dept_no
    JOIN employees e2  on e2.emp_no = de.emp_no
WHERE de2.to_date LIKE '9%'
    AND de.to_date LIKE '9%'
ORDER BY dept_name, e.emp_no;

