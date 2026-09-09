-- Implement a PL/SQL block with a cursor to fetch and display the Name and Salary of the
-- top 5 highest-paid employees from the Staff table. - 

CREATE TABLE Staff (
    Emp_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Salary NUMBER(10,2)
);
INSERT INTO Staff VALUES (1, 'A', 95);
INSERT INTO Staff VALUES (2, 'B', 85);
INSERT INTO Staff VALUES (3, 'C', 90);
INSERT INTO Staff VALUES (4, 'D', 75);
INSERT INTO Staff VALUES (5, 'E', 80);
INSERT INTO Staff VALUES (6, 'F', 70);
INSERT INTO Staff VALUES (7, 'G', 65);


DECLARE
    CURSOR stf_cursor IS
        SELECT Name, Salary
        FROM Staff
        ORDER BY Salary DESC;

    v_count NUMBER := 0;

BEGIN
    FOR stf IN stf_cursor LOOP

        v_count := v_count + 1;

        DBMS_OUTPUT.PUT_LINE(
            'Name: ' || stf.Name ||
            ', Salary: ' || stf.Salary
        );

        EXIT WHEN v_count = 5;

    END LOOP;
END;
/
