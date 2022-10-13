# Module 7 Challenge: Pewlett Hackard HR Analysis
## by Crystina Dang using Python v3.9.12, pgAdmin 4 v6.14

### Overview of the analysis: 
The purpose of this analysis was to prepare the HR analyst at Pewlett Hackard for the retirement of the baby boomer generation by determining the number of retiring employees by title, and identifying employees who are eligible to participate in a mentorship program.

### Results: 

*The following image provides the number of retiring employees by title:*
![This is an image](https://github.com/crystdang/Pewlett-Hackard-analysis/blob/main/Images/retiring_titles.png)

- Senior Engineers and Senior Staff are retiring significantly more than other junior roles
- 

*The following image provides the number of retiring employees eligible for the mentorship program using COUNT() from the mentorship_eligibility table:*

![This is an image](https://github.com/crystdang/Pewlett-Hackard-analysis/blob/main/Images/total_eligible.png)

- Of the 


### Summary: 
**How many roles will need to be filled as the "silver tsunami" begins to make an impact?**

*The following image provides the total number of retiring titles using SUM() from the retiring_titles table:*
![This is an image](https://github.com/crystdang/Pewlett-Hackard-analysis/blob/main/Images/total_retiring.png)

**Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**

1549 eligible
72458 retiring
Most of the retiring employees are senior titles, which can be resolved by the promotion of (junior) Engineers and (junior) Staff.
*The following image provides the breakdown of mentorship elibile titles using COUNT() and GROUP BY from the mentorship_eligibility table:*
![This is an image](https://github.com/crystdang/Pewlett-Hackard-analysis/blob/main/Images/mentorship_titles.png)

*The following image provides the breakdown of current active titles using COUNT() and GROUP BY through INNER JOIN of the current_emp and titles table:*


![This is an image](https://github.com/crystdang/Pewlett-Hackard-analysis/blob/main/Images/current_titles.png)


33118