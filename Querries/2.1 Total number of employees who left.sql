--2.1 Total number of employees who left

SELECT COUNT(*) AS total_attrition 
		FROM attrition 
		WHERE attrition_status = 'Yes';