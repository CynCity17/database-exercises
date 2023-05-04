USE employees;

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager
FROM employees
        JOIN dept_manager
              ON dept_manager.emp_no = employees.emp_no
        JOIN departments
              ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01';

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
        JOIN dept_manager as de ON de.emp_no = e.emp_no
        JOIN departments as d ON d.dept_no = de.dept_no
WHERE gender = 'F' AND de.to_date = '9999-01-01';

SELECT departments.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary
FROM employees as e
        JOIN dept_manager as de
            ON de.emp_no = e.emp_no
        JOIN departments
            ON departments.dept_no = de.dept_no
        JOIN salaries as s
             ON e.emp_no = s.emp_no
            AND de.to_date = s.to_date
WHERE de.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(de.first_name, de.last_name) AS Manager
FROM employees as e
    JOIN dept_manager as de
        ON de.emp_no = e.emp_no
    JOIN departments as d
        ON d.dept_no = de.dept_no
    JOIN

