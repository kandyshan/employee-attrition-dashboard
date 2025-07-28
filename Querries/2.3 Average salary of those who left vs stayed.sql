--2.3 Average salary of those who left vs stayed

SELECT
	a.attrition_status,
	ROUND(
	AVG(e.salary),
	2
	)AS average_salary
	FROM employees e
	JOIN attrition a ON a.employee_id=e.employee_id
	GROUP BY attrition_status