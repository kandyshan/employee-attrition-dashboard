--1.3 Calculate Average salary by job role

SELECT 
	jr.job_title,
	ROUND(AVG(e.salary),2) AS avg_salary
	FROM employees e
	JOIN job_roles jr on e.job_role_id=jr.job_role_id
	GROUP BY jr.job_title
	ORDER BY avg_salary DESC;