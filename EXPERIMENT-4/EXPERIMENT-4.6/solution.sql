
SELECT s.St_id,s.St_Name,s.Department,
ss.St_id,ss.St_Name,ss.Department
FROM Student AS s 
JOIN Student AS ss 
ON s.Department=ss.Department
WHERE s.St_id!=ss.St_id;


SELECT s.St_id,s.St_Name,s.Course_id
FROM Student AS s 
JOIN Student AS ss 
ON s.Course_id=ss.Course_id
WHERE s.St_id!=ss.St_id
ORDER BY s.Course_id;
    