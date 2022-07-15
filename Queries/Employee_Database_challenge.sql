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

-- Taking retirement_titles table and removing duplicate rows to
-- create the unique_titles table
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title

INTO unique_titles

FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

-- Table of count of titles retiring
SELECT count(title), ut.title

INTO retiring_titles

FROM unique_titles as ut

GROUP BY ut.title

ORDER BY count(title) DESC;