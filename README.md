# Pewlett-Hackard-Analysis

# Overview

## Purpose
The purpose of this analysis was to determine the number of employees who will be retiring from Pewlett-Hackard(PH).  By determining the number of employees that will be retiring from PH the company can future proof themselves and look to hire new people into those roles.  By doing so PH can begin the process of long time employees retire and then have retirement-ready employees begin to mentor the next generation of PH employees.


# Results

## Number of Retiring Employees by Title
1. There are more Senior Engineer and Senior Staff roles who are retiring than the others by a wide margin.
2. This means that many of these roles will have to be replaced from within but will also have to be supplemented with external hires.
3. Those who are within the age range for retirement were not hired within the initial hire range.  These people might be retiring but that does not mean they were hired at the same time as people who were identified to be within the hiring range.  While these people are able to retire based on age; based on hire date they may prefer to keep working.
4. Those employees who are retirement-ready based on the unique titles table but were hired at a different time could also be good candidates for the mentorship program.


![Retiring_titles](https://user-images.githubusercontent.com/29406929/179319114-dfb243ec-e314-4a28-b27b-f5b5ac30b146.png)

Fig 1. Counts of retiring employees by title



## Mentorship Eligibility Program
1. The total number of eligible employees is far less than the total number of employees who are retiring.
2. When looking at specifically titles there are fewer of each title who are eligible for the mentorship program.
3. This difference in retirement-ready and the retiring suggests that more external hires who can fit in the retirement-ready category or are somewhat younger than that so as to be able to have plenty of mentors
4. The eligible employees for the program also suggests that PH has to look at internal employees and who could be promoted to more senior level roles.


# Summary

Over 30,000 roles will need to be filled across the entire company as the silver tsunami begins to make an impact.  Based on the number of roles that are retiring who are still current employees it is imperative that PH look both outside and within the company for new employees who can mentor and keep the company going strong.

Based on a query of the mentorship eligible some titles have a lot of employees who could be mentors and others do not have as much.  Having said that the total number of eligible mentors is what could be of concern because these employees are part of the retirement-ready employees.  Thus they could retire if they wanted to but choose not to because they want to keep working for a variety of reasons.

## Additional Queries
The following were queries that were made to help inform parts of this analysis and add insight into the some of the retirement explorations that PH will be going through.

-- Summary Query 1
-- Looking at the total number of roles who are in the correct age
-- range and hiring range to be retiring from PH
SELECT count(ce.emp_no) FROM current_emp as ce;







-- Summary Query 2
-- Count of mentorship eligible employees by title
SELECT count(me.emp_no), me.title FROM mentorship_eligibility as me

GROUP BY (me.title);

SELECT count(me.emp_no) FROM mentorship_eligibility as me;
