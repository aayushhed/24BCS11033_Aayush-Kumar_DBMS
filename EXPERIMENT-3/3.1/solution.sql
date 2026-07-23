-- Problem: Count using CASE
-- Platform: CodeChef SQL
-- Concept: COUNT with CASE, GROUP BY

-- Count the number of students
-- scoring more than 80 marks in each department.

SELECT
    Department,
    COUNT(CASE
            WHEN Marks > 80 THEN 1
            ELSE NULL
         END) AS Dept_HighScore_Count
FROM student
GROUP BY Department;