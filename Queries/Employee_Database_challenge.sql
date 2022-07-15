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


-- Creating list of employees who are retirement-ready and can
-- mentor the next generation of employees at PH
-- Start with selecting the correct columns from the req.
-- tables
SELECT DISTINCT ON(e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title

INTO mentorship_eligibility

FROM employees as e

INNER JOIN dept_emp as de

ON (e.emp_no = de.emp_no)

INNER JOIN titles as t

ON (e.emp_no = t.emp_no)

WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 

AND (de.to_date = '9999-01-01')

ORDER BY e.emp_no;


-- Summary Query 1
-- Looking at the total number of roles who are in the correct age
-- range and hiring range to be retiring from PH
SELECT count(ce.emp_no) FROM current_emp as ce;







-- Summary Query 2
-- Count of mentorship eligible employees by title
SELECT count(me.emp_no), me.title FROM mentorship_eligibility as me

GROUP BY (me.title);

SELECT count(me.emp_no) FROM mentorship_eligibility as me;