set serveroutput on;

DECLARE
    --c_cust_id NUMBER;
    c_egn VARCHAR2(10);
    c_f_n VARCHAR2(105);
    c_l_n VARCHAR2(105);
CURSOR c_customer IS 
    SELECT  egn, first_name, last_name FROM customer;
BEGIN 
    OPEN c_customer;
    LOOP
    FETCH c_customer into  c_egn,c_f_n, c_l_n;
    EXIT WHEN c_customer%notfound;
    dbms_output.put_line( c_egn || ' ' || c_f_n || ' ' 
    || c_l_n);
    END LOOP;
    CLOSE c_customer;
    END;
    /
    


set serveroutput on;

CREATE OR REPLACE PACKAGE cust_p AS
PROCEDURE new_customer( c_cust_id NUMBER,
                        c_egn VARCHAR2,
                        c_f_n VARCHAR2,
                        c_l_n VARCHAR2,
                        c_a_n VARCHAR2,
                        c_add VARCHAR2,
                        c_phone VARCHAR2,
                        c_email VARCHAR2,
                        c_amount NUMBER,
                        c_curr_type VARCHAR2,
                        c_acc VARCHAR2);
PROCEDURE del_cust(c_cust_id NUMBER);
PROCEDURE edit_cust(c_cust_id NUMBER,
                        c_egn VARCHAR2,
                        c_f_n VARCHAR2,
                        c_l_n VARCHAR2,
                        c_a_n VARCHAR2,
                        c_add VARCHAR2,
                        c_phone VARCHAR2,
                        c_email VARCHAR2,
                        c_amount NUMBER,
                        c_curr_type VARCHAR2,
                        c_acc VARCHAR2);
--PROCEDURE list_cust;
END cust_p;
/

CREATE OR REPLACE PACKAGE BODY cust_p AS
PROCEDURE new_customer( c_cust_id NUMBER,
                        c_egn VARCHAR2,
                        c_f_n VARCHAR2,
                        c_l_n VARCHAR2,
                        c_a_n VARCHAR2,
                        c_add VARCHAR2,
                        c_phone VARCHAR2,
                        c_email VARCHAR2,
                        c_amount NUMBER,
                        c_curr_type VARCHAR2,
                        c_acc VARCHAR2)
IS BEGIN 
    INSERT INTO customer(cust_id, egn, first_name, last_name, addl_name,address,
    phone, email, amount, currency_type, account)
    VALUES(c_cust_id, c_egn, c_f_n, c_l_n, c_a_n, c_add, c_phone, c_email, 
    c_amount, c_curr_type, c_acc);
    END new_customer;
    
PROCEDURE del_cust(c_cust_id NUMBER) IS 
BEGIN
   DELETE FROM customer
   WHERE cust_id = c_cust_id;
END del_cust;

PROCEDURE edit_cust(    c_cust_id NUMBER,
                        c_egn VARCHAR2,
                        c_f_n VARCHAR2,
                        c_l_n VARCHAR2,
                        c_a_n VARCHAR2,
                        c_add VARCHAR2,
                        c_phone VARCHAR2,
                        c_email VARCHAR2,
                        c_amount NUMBER,
                        c_curr_type VARCHAR2,
                        c_acc VARCHAR2)
IS
BEGIN 
    UPDATE customer SET egn = c_f_n, 
                         first_name = c_f_n,
                         last_name = c_l_n,
                         addl_name = c_a_n,
                         address = c_add,
                         phone = c_phone,
                         email = c_email,
                         amount = c_amount,
                         currency_type = c_curr_type,
                         account = c_acc
    where cust_id = c_cust_id;
    COMMIT;
    
    END edit_cust;

--PROCEDURE list_cust IS
--CURSOR c_customer is
--    SELECT first_name FROM customer;
--TYPE c_list is TABLE OF VARCHAR2(105);
--name_list c_list := c_list();
--counter integer :=0;
--BEGIN
--    FOR n IN c_customer LOOP
--    counter := counter +1;
--    name_list.extend;
--    name_list(counter) := n.name;
--    dbms_output.put_line('Cusotmer(' || counter ||')' || name_list(counter));
--    END LOOP;
--END list_cust;
END cust_p;
/


set serveroutput on;

    BEGIN
cust_p.new_customer(17,'9905078347', 'Vanina', 'Dimitrova', '', 'Bulgaria',
'08874561236', 'vasil@gmail.com', 3500, 'EUR','BG457474177588556669444');
END;
/

BEGIN
cust_p.del_cust(17);
END;
/

select *
from customer
where cust_id =12;

BEGIN
cust_p.edit_cust(13,'9607081425', 'Dayana', 'Georgieva', '', 'Bulgaria','0888747574',
'dddd?@gmail.com',null,'BGN','');
END;
/
