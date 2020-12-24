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