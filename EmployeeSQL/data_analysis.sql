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

--------------------------------------------
--------------------------------------------
--------------------------------------------

SELECT 	A.depto_no, 
		B.dept_name, 
		A.emp_no, 
		C.last_name, 
		C.first_name
FROM Dept_Manager as A
INNER JOIN Departments as B
ON A.depto_no = B.depto_no
INNER JOIN Employees as C
ON A.emp_no = C.emp_no
;

--------------------------------------------
--------------------------------------------
--------------------------------------------

SELECT 	A.emp_no, 
		B.last_name, 
		B.first_name, 
		C.dept_name
FROM Dept_Emp as A
INNER JOIN Employees as B
ON A.emp_no = B.emp_no
INNER JOIN Departments as C
ON A.depto_no = C.Depto_no
;

--------------------------------------------
--------------------------------------------
--------------------------------------------

SELECT 	A.first_name, 
		A.last_name, 
		A.sex
FROM Employees as A
WHERE A.first_name = 'Hercules'
AND A.last_name LIKE 'B%'
;

--------------------------------------------
--------------------------------------------
--------------------------------------------

SELECT 	A.emp_no, 
		A.last_name, 
		A.first_name, 
		C.dept_name
FROM Employees as A
INNER JOIN Dept_Emp as B
ON A.emp_no = B.emp_no
INNER JOIN Departments as C
ON B.depto_no = C.depto_no
WHERE C.dept_name = 'Sales'
;

--------------------------------------------
--------------------------------------------
--------------------------------------------

SELECT 	A.emp_no, 
		A.last_name, 
		A.first_name, 
		C.dept_name
FROM Employees as A
INNER JOIN Dept_Emp as B
ON A.emp_no = B.emp_no
INNER JOIN Departments as C
ON B.depto_no = C.depto_no
WHERE C.dept_name in ('Sales', 'Development')
;

--------------------------------------------
--------------------------------------------
--------------------------------------------

SELECT 	A.last_name, 
		COUNT(A.last_name) AS repeat
FROM Employees as A
GROUP BY A.last_name
ORDER BY repeat DESC, 
		 A.last_name
;