SELECT 	A.emp_no, 
		A.last_name, 
		A.first_name, 
		A.sex, 
		B.salary
FROM Employees as A
INNER JOIN Salaries as B
ON A.emp_no = B.emp_no
;

--------------------------------------------
--------------------------------------------
--------------------------------------------


SELECT 	A.first_name, 
		A.last_name, 
		A.hire_date
FROM Employees as A
WHERE SUBSTR(CAST(A.hire_date AS TEXT),1,4) = '1986'
;