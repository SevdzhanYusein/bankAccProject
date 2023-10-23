set serveroutput on;

CREATE OR REPLACE PACKAGE empl_p AS
PROCEDURE new_empl(e_empl_id NUMBER,
                        e_egn VARCHAR2,
                        e_f_n VARCHAR2,
                        e_l_n VARCHAR2,
                        e_a_n VARCHAR2,
                        e_add VARCHAR2,
                        e_phone VARCHAR2,
                        e_email VARCHAR2,
                        e_job_desc VARCHAR2,
                        e_dep_id NUMBER,
                        e_mng_id NUMBER,
                        e_salary NUMBER,
                        e_date_st DATE,
                        e_status VARCHAR2);
PROCEDURE del_empl(e_empl_id NUMBER);
END empl_p;
/

CREATE OR REPLACE PACKAGE BODY empl_p AS
PROCEDURE new_empl(e_empl_id NUMBER,
                        e_egn VARCHAR2,
                        e_f_n VARCHAR2,
                        e_l_n VARCHAR2,
                        e_a_n VARCHAR2,
                        e_add VARCHAR2,
                        e_phone VARCHAR2,
                        e_email VARCHAR2,
                        e_job_desc VARCHAR2,
                        e_dep_id NUMBER,
                        e_mng_id NUMBER,
                        e_salary NUMBER,
                        e_date_st DATE,
                        e_status VARCHAR2)
IS BEGIN 
    INSERT INTO employee(empl_id, egn, first_name, last_name, addl_name,address,
    phone, email, job_desc, dep_id, mng_id, salary, date_started, status)
    VALUES(e_empl_id , e_egn ,e_f_n , e_l_n , e_a_n , e_add , e_phone ,
    e_email ,e_job_desc ,e_dep_id ,e_mng_id ,e_salary ,e_date_st ,e_status );
    END new_empl;
    
PROCEDURE del_empl(e_empl_id NUMBER) IS 
BEGIN
   DELETE FROM employee
   WHERE empl_id = e_empl_id;
END del_empl;
END empl_p;
/


 BEGIN
empl_p.new_empl(100,'9804157485', 'Maya', 'Marinova', '', 'Bulgaria',
'08975848612', 'mmm@gmail.com', 'Cards', 3, null, '3000','19-MAR-22', 'active');
END;
/

BEGIN
empl_p.del_empl(100);
END;
/