set serveroutput on;

CREATE OR REPLACE PACKAGE emp_p AS 
FUNCTION hire 
(empl_id NUMBER, egn VARCHAR2, first_name VARCHAR2, last_name VARCHAR2,
addl_name VARCHAR2, address VARCHAR2, phone VARCHAR2, email VARCHAR2,
job_desc VARCHAR2, dep_id NUMBER, mng_id NUMBER, salary NUMBER, date_started DATE,
status VARCHAR2) 
   RETURN NUMBER; 
FUNCTION create_dept(dep_id NUMBER, salary NUMBER) 
   RETURN NUMBER; 
PROCEDURE remove_emp(empl_id NUMBER); 
PROCEDURE remove_dept(dep_id NUMBER); 
PROCEDURE increase_sal(empl_id NUMBER, salary_incr NUMBER);  
no_sal EXCEPTION; 
END emp_p; 
/

CREATE OR REPLACE PACKAGE BODY emp_p AS 
total_emps NUMBER; 
total_depts NUMBER; 
FUNCTION hire 
(empl_id NUMBER, egn VARCHAR2, first_name VARCHAR2, last_name VARCHAR2,
addl_name VARCHAR2, address VARCHAR2, phone VARCHAR2, email VARCHAR2,
job_desc VARCHAR2, dep_id NUMBER, mng_id NUMBER, salary NUMBER, date_started DATE,
status VARCHAR2) 
RETURN NUMBER IS new_emp_n NUMBER; 
BEGIN 
SELECT employee_seq.NEXTVAL 
   INTO new_emp_n
   FROM DUAL; 
INSERT INTO employee
   VALUES (new_emp_n, '9702154875', 'Ivan', 'Ivanov', '', 'Bulgaria', '0887745621',
   'ivaniv@gmail.com', '', 3, null, 3000, 02-MAR-22, ''); 
   total_emps := total_emps + 1; 
RETURN(new_emp_n); 
END;

FUNCTION create_dept(dep_id NUMBER, salary NUMBER) 
RETURN NUMBER IS 
   new_dept_n NUMBER; 
BEGIN 
   SELECT department_seq.NEXTVAL 
      INTO new_dept_n 
      FROM dual; 
   INSERT INTO department
      VALUES (new_dept_n, 1, 1700); 
   total_depts := total_depts + 1; 
   RETURN(new_dept_n); 
END; 
PROCEDURE remove_emp (empl_id NUMBER) IS 
BEGIN 
   DELETE FROM employee
   WHERE employee.empl_id = remove_emp.empl_id; 
   total_emps := total_emps - 1; 
END; 
PROCEDURE remove_dept(dep_id NUMBER) IS 
BEGIN 
   DELETE FROM department
   WHERE department.dep_id = remove_dept.dep_id; 
   total_depts := total_depts - 1; 
   SELECT COUNT(*) INTO total_emps FROM employee; 
END;
PROCEDURE increase_sal(empl_id NUMBER, salary_incr NUMBER) IS 
salary NUMBER; 
BEGIN 
   SELECT salary INTO salary FROM employee
   WHERE employee.empl_id = increase_sal.empl_id; 
   IF salary IS NULL 
      THEN RAISE no_sal; 
   ELSE 
      UPDATE employee 
      SET salary = salary + salary_incr
      WHERE empl_id = empl_id; 
   END IF; 
END;


END emp_p;
/

ALTER PACKAGE emp_p
    COMPILE PACKAGE;
    
ALTER PACKAGE emp_p
    COMPILE PACKAGE;
