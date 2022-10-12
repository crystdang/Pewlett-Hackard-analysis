-- Follow the instructions below to complete Deliverable 1.

-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT e.emp_no, 
    e.first_name, 
    e.last_name,
-- Retrieve the title, from_date, and to_date columns from the Titles table.
    t.title, 
    t.from_date, 
    t.to_date
-- Create a new table using the INTO clause.
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as t
-- Join both tables on the primary key.
ON e.emp_no = t.emp_no
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;
-- Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
-- Before you export your table, confirm that it looks like this image


-- Note: There are duplicate entries for some employees because they have switched titles over the years. Use the following instructions to remove these duplicates and keep only the most recent title of each employee.

-- Copy the query from the Employee_Challenge_starter_code.sql and add it to your Employee_Database_challenge.sql file.
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
-- Retrieve the employee number, first and last name, and title columns from the Retirement Titles table.
    first_name,
    last_name,
    title

INTO unique_titles
FROM retirement_titles
-- These columns will be in the new table that will hold the most recent title of each employee.
WHERE to_date = ('9999-01-01')
-- Use the DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
ORDER BY emp_no, to_date DESC;



-- Write another query in the Employee_Database_challenge.sql file to retrieve the number of employees by their most recent job title who are about to retire.
-- First, retrieve the number of titles from the Unique Titles table.
SELECT COUNT(title), title
-- Then, create a Retiring Titles table to hold the required information.
INTO retiring_titles
FROM unique_titles
-- Group the table by title, then sort the count column in descending order.
GROUP BY title
ORDER BY count DESC;
-- Export the Retiring Titles table as retiring_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
