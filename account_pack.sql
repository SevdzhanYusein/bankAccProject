set serveroutput on;

CREATE OR REPLACE PACKAGE account_p AS
PROCEDURE new_acc( a_acc_id NUMBER,
                        a_cust_id NUMBER,
                        a_egn VARCHAR2,
                        a_f_n VARCHAR2,
                        a_l_n VARCHAR2,
                        a_account VARCHAR2,
                        a_curr_type VARCHAR2);
PROCEDURE del_acc(a_acc_id NUMBER);
END account_p;
/

CREATE OR REPLACE PACKAGE BODY account_p AS
PROCEDURE new_acc(a_acc_id NUMBER,
                        a_cust_id NUMBER,
                        a_egn VARCHAR2,
                        a_f_n VARCHAR2,
                        a_l_n VARCHAR2,
                        a_account VARCHAR2,
                        a_curr_type VARCHAR2)
IS BEGIN   
    INSERT INTO accounts(acc_id, cust_id, egn, first_name , last_name, account,
    currency_type)
    VALUES(a_acc_id,a_cust_id, a_egn, a_f_n,a_l_n,
    a_account,a_curr_type);
    END new_acc;
PROCEDURE del_acc(a_acc_id NUMBER) IS 
BEGIN
   DELETE FROM accounts
   WHERE acc_id = a_acc_id;
END del_acc;
END account_p;
/

 BEGIN
account_p.new_acc(120, 12,'9905078347', 'Vanya', 'Dimitrova',
'BG457474177588556669444', 'EUR');
END;
/

BEGIN
account_p.del_acc(120);
END;
/

select *
from accounts
where acc_id = 120;