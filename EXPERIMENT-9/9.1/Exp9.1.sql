CREATE TABLE Salary_Hike (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary NUMERIC(10,2)
);
INSERT INTO Salary_Hike
(emp_id, emp_name, salary)
VALUES
(101, 'Amit', 50000),
(102, 'Rahul', 60000),
(103, 'Priya', 40000),
(104, 'Ravi', 70000);

CREATE OR REPLACE FUNCTION CHECK_SALARY_HIKE()
RETURNS TRIGGER
AS
$$
BEGIN
    IF NEW.salary > OLD.salary * 1.15 THEN
        RAISE EXCEPTION 'Salary increase cannot exceed 15%% of OLD salary';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE PLPGSQL;

CREATE TRIGGER SALARY_HIKE_TRG
BEFORE UPDATE ON Salary_Hike
FOR EACH ROW
EXECUTE FUNCTION CHECK_SALARY_HIKE();

UPDATE Salary_Hike
SET salary = 55000
WHERE emp_id = 101;

UPDATE Salary_Hike
SET salary = 80000
WHERE emp_id = 101;