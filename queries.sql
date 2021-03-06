-- Retirement eligibility
SELECT first_name, last_name

FROM employees

WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')

AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


-- Number of employees retiring
SELECT COUNT(first_name)

FROM employees

WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')

AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


-- Skill drill, querying individual years of 1953, 
-- 1954, and 1955
SELECT first_name, last_name

FROM employees

WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';


SELECT first_name, last_name

FROM employees

WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';


SELECT first_name, last_name

FROM employees

WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';


SELECT first_name, last_name

FROM employees

WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';



-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no

FROM current_emp as ce

LEFT JOIN dept_emp as de

ON ce.emp_no = de.emp_no

GROUP BY de.dept_no

ORDER BY de.dept_no;