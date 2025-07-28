-- 1.2 Number of employees by department

SELECT d.department_name,
		COUNT(e.employee_id) as employee_count
		FROM employees e
		JOIN departments d ON e.department_id = d.department_id
		GROUP BY d.department_name