USE employees;

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;
SELECT * FROM employees WHERE month(birth_date) = 12
                          AND day(birth_date) = 25;
SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999
                          AND month(birth_date) = 12
                          AND day(birth_date) = 25
                        ORDER BY birth_date, hire_date DESC;
SELECT *, DATEDIFF(NOW(), hire_date) FROM employees WHERE year(hire_date) BETWEEN 1990 AND 1999
                          AND month(birth_date) = 12
                          AND day(birth_date) = 25;