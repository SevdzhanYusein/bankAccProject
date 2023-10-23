CREATE TABLE EMPLOYEE(
empl_id NUMBER PRIMARY KEY,
egn VARCHAR2(10) NOT NULL,
first_name VARCHAR2(105) NOT NULL,
last_name VARCHAR2(105) NOT NULL,
addl_name VARCHAR2(105),
address VARCHAR2(105),
phone VARCHAR2(35) NOT NULL,
email VARCHAR2(40) NOT NULL,
job_desc VARCHAR2(105),
dep_id NUMBER,
mng_id NUMBER
);

CREATE TABLE department(
dep_id NUMBER,
dep_name VARCHAR(105),
dep_desc VARCHAR(105)
);

ALTER TABLE department
ADD CONSTRAINT department_pk PRIMARY KEY (dep_id);

ALTER TABLE EMPLOYEE
ADD CONSTRAINT fk_department
    FOREIGN KEY (dep_id)
    REFERENCES department (dep_id);

CREATE TABLE CUSTOMER(
cust_id NUMBER PRIMARY KEY,
egn VARCHAR2(10) NOT NULL,
first_name VARCHAR2(105) NOT NULL,
last_name VARCHAR2(105) NOT NULL,
addl_name VARCHAR2(105),
address VARCHAR2(105),
phone VARCHAR2(35) NOT NULL,
email VARCHAR2(40) NOT NULL
);

insert into department
values (1, '????????', '????????');
insert into department
values (2, '???????? ??????', '???????? ??????');
insert into department
values (3, '??????? ???????????', '??????? ???????????');

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (1, '9805241447','Aleksandar', 'Ivanov', '', 'Bulgaria', '0878457945',
'alesiv@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (2, '9906035872','Andrea', 'Grigorov', '', 'Italy', '0888874447',
'andreaagg@gmail.com', 'Cards', 2);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (3, '9713156145','Petar', 'Angelov', '', 'Bulgaria', '0895454556', 
'Pet@gmail.com', 'Credit operator', 2);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (4, '9605147836','Petya', 'Nikolova', '', 'Bulgaria', '0896647283',
'petyaaa@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (5, '9806231412','Boris', 'Ivanov', '', 'Italy', '0877474652',
'biv@gmail.com', 'Cards', 2);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (6, '9908254763','Nikola', 'Dimitrov', '', 'Bulgaria', '0985625874', 
'ndimitrov@gmail.com', 'Credit operator', 2);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (7, '9714156147','Polina', 'Ivanova', '', 'Bulgaria', '0895455556', 
'poliiv@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (8, '9606147123','Ivana', 'Nikolova', '', 'Bulgaria', '0899947283',
'ivananik@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (9, '9810271412','Petar', 'Ivanov', '', 'Italy', '0877476662',
'piv@gmail.com', 'Cards', 3);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (10, '9708255563','Nikolna', 'Dimitrova', '', 'Bulgaria', '0987725874', 
'nikdimitrova@gmail.com', 'Cards', 3);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (11, '9803161425','Martin', 'Ivanov', '', 'Bulgaria', '0888747945',
'alesiv@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (12, '9912035872','Mario', 'Angelov', '', 'Italy', '0881274447',
'mariogg@gmail.com', 'Cards', 2);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (13, '9703156647','Nikola', 'Angelov', '', 'Bulgaria', '0883654556', 
'nikolaang@gmail.com', 'Credit operator', 2);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (14, '9612242174','Antonio', 'Nikolov', '', 'Bulgaria', '0896241283',
'antonnik@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (15, '9810231712','Deivid', 'Ivanov', '', 'Italy', '0877520652',
'deividiv@gmail.com', 'Cards', 2);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (16, '9608252363','Krasimir', 'Dimitrov', '', 'Bulgaria', '0885626474', 
'krasimird@gmail.com', 'Credit operator', 2);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (17, '9705306147','Hristina', 'Htisteva', '', 'Bulgaria', '0896345556', 
'hrist@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (18, '9506158123','Ivana', 'Ivanova', '', 'Bulgaria', '0881947283',
'ivanaivk@gmail.com', 'Operator', 1);

insert into EMPLOYEE(empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id )
values (19, '9710271428','Pamela', 'Karabasheva', '', 'Bulgarian', '0877236162',
'pamk@gmail.com', 'Cards', 3);

insert into EMPLOYEE (empl_id, egn, first_name, last_name, addl_name, address,
phone, email, job_desc, dep_id)
values (20, '9708254463','Nikol', 'Dimova', '', 'Bulgaria', '0988725874', 
'nikdimitrova@gmail.com', 'Cards', 3);

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(1, '9608253645', 'Ivan', 'Dimitrov','', 'France', '0995471', 'iv@gmail.com');

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(2, '9906231548', 'Petar', 'Petrov', '', 'Bulgaria', '0879457635', 'petarpet@gmail.com');

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(3, '9704014586', 'Denitsa', 'Nikolova', '', 'Germany', '089215465', 'dnik@gmail.com');


insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(4, '9702023645', 'Teodor', 'Hristov', '', 'Bulgaria', '0887845796', 'tedi@gmail.com');

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(5, '9810247832', 'Kristiyana', 'Borisova', '', 'Bulgaria', '08878964512', 'kris@gmail.com');

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(6, '9906305246', 'Nikola', 'Todorov', '', 'Germany', '088745612', 'nikt@gmail.com');

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(7, '9705014588', 'Daniel', 'Nikolov', '', 'Germany', '089215466', 'dani@gmail.com');


insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(8, '9702023655', 'Teodora', 'Hristova', '', 'Bulgaria', '0887745796', 'tedhrist@gmail.com');

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(9, '9810247833', 'Kristiyan', 'Borisov', '', 'Bulgaria', '08878994512', 'krisb@gmail.com');

insert into customer (cust_id, egn, first_name, last_name, addl_name, address,
phone, email)
values(10, '9906314246', 'Antonina', 'Todorova', '', 'Germany', '088775612', 'ant@gmail.com');


alter table customer
add account VARCHAR2(50);


create table accounts(
acc_id NUMBER PRIMARY KEY,
cust_id NUMBER,
egn VARCHAR2(10) NOT NULL,
first_name VARCHAR2(105) NOT NULL,
last_name VARCHAR2(105) NOT NULL,
account VARCHAR2(50) NOT NULL,
currency_type VARCHAR2(10)
);


insert into accounts
values(101, 10, '9906314246', 'Antonina', 'Todorova', 'BG18RZBB91550123456710', 'EUR');

insert into accounts
values(102, 9, '9810247833', 'Kristiyan', 'Borisov', 'BG18RZBB91550123456709', 'USD');

insert into accounts
values(103, 8, '9702023655', 'Teodora', 'Hristova', 'BG18RZBB91550123456708', 'EUR');

insert into accounts
values(104, 7,'9705014588', 'Daniel', 'Nikolov', 'BG18RZBB91550123456701', 'BGN');

insert into accounts
values(105, 6,'9906305246', 'Nikola', 'Todorov', 'BG18RZBB91550123456702', 'BGN');

insert into accounts
values(106, 5, '9810247832', 'Kristiyana', 'Borisova', 'BG18RZBB91550123456703', 'BGN');

insert into accounts
values(107, 4, '9702023645', 'Teodor', 'Hristov', 'BG18RZBB91550123456704', 'EUR');

insert into accounts
values(108, 3, '9704014586', 'Denitsa', 'Nikolova', 'BG18RZBB91550123456705', 'GBP');

insert into accounts
values(109, 2, '9906231548', 'Petar', 'Petrov', 'BG18RZBB91550123456706', 'USD');

insert into accounts
values(110, 1, '9608253645', 'Ivan', 'Dimitrov', 'BG18RZBB91550123456707', 'BGN');

