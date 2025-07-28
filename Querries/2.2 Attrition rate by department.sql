-- 2.2 Attrition rate by department

SELECT 
		d.department_name,
		ROUND(
			COUNT(CASE WHEN a.attrition_status='Yes' THEN 1 END)*100.0/COUNT(e.employee_id),
			2
			)AS percentage_attrition_rate
		FROM  employees e
		JOIN attrition a ON a.employee_id = e.employee_id 
		JOIN departments d ON e.department_id = d.department_id
		GROUP BY department_name