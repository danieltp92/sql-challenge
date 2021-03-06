SELECT 	A.emp_no, 
		A.last_name, 
		A.first_name, 
		A.sex, 
		B.salary
FROM Employees as A
INNER JOIN Salaries as B
ON A.emp_no = B.emp_no
;