-- Write a PL/SQL cursor loop to process the Orders table row-by-row and print "High Value" 
-- for every order where the Amount exceeds 10,000.

CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Amount NUMBER(10,2)
);

INSERT INTO Orders VALUES (101, 5000);
INSERT INTO Orders VALUES (102, 15000);
INSERT INTO Orders VALUES (103, 8000);
INSERT INTO Orders VALUES (104, 25000);
INSERT INTO Orders VALUES (105, 12000);
INSERT INTO Orders VALUES (106, 7000);

DECLARE
    CURSOR ord_cursor IS
        SELECT Order_ID, Amount
        FROM Orders;

BEGIN
    FOR ord IN ord_cursor LOOP

        IF ord.Amount > 10000 THEN
            DBMS_OUTPUT.PUT_LINE(
                'Order ID: ' || ord.Order_ID || ' - High Value'
            );
        END IF;

    END LOOP;
END;
/