-- Challenge Starter Code
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

-- Creating Retirement Titles Table
-- Filtered Data on both birth_date and hire_date since
-- this is the range of employees who are close to retirement at PH
-- and they still have to be with the company
SELECT e.emp_no, 
	   e.first_name, 
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
	   
INTO retirement_titles

FROM employees as e

INNER JOIN titles as t

ON (e.emp_no = t.emp_no)

WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

--AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
;