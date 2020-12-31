SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '01/01/52' AND '12/31/55';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '01/01/53' AND '12/31/53';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '01/01/54' AND '12/31/54';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '01/01/55' AND '12/31/55';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '01/01/52' AND '12/31/55')
AND (hire_date BETWEEN '01/01/85' AND '12/31/88');

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '01/01/52' AND '12/31/55')
AND (hire_date BETWEEN '01/01/85' AND '12/31/88');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '01/01/52' AND '12/31/55')
AND (hire_date BETWEEN '01/01/85' AND '12/31/88');

-- Retirement eligibility
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '01/01/52' AND '12/31/55')
AND (hire_date BETWEEN '01/01/85' AND '12/31/88');

-- Test
select * from retirement_info

-- How to get CSV "retirement_titles.csv" after running this table then exporting it to a csv file

SELECT em.emp_no,em.first_name, em.last_name, 
    t.title AS Title, t.from_date, t.to_date
INTO challenge_mentor_info
FROM Employees AS em
INNER JOIN titles AS t ON em.emp_no = t.emp_no
INNER JOIN dept_emp AS d ON em.emp_no = d.emp_no
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (d.to_date = '9999-01-01');

--A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title.
--unique-titles.csv can be exported after running this table.

SELECT ce.emp_no, ce.first_name, ce.last_name, ti.title, ti.emp_no
INTO mentor_dept_info
FROM current_emp AS ce
INNER JOIN title AS ti ON ce.emp_no = ti.emp_no 
WHERE ti.title IN ('Senior Staff', 'Senior Engineer', 'Engineer', 'Staff');

-- A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965
-- How to get csv "retiring_titles.csv" after exporting this table then exporting it to a csv file.
SELECT COUNT(employee_number), cti.title
Into Retiring_Titles_Table
FROM challenge_title_info AS cti
GROUP BY title
Order BY cti.count DESC

-- How to get the csv "mentorship_eligibilty.csv" after running this table  then exporting it to a csv file.
SELECT em.emp_no,em.first_name, em.last_name,   
   t.title AS Title, t.from_date, t.to_date
INTO mentor_info
FROM Employees AS em
INNER JOIN titles AS t ON em.emp_no = t.emp_no
INNER JOIN dept_emp AS d ON em.emp_no = d.emp_no
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (d.to_date = '9999-01-01');
