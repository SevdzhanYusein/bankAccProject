select dep_name
from department;

alter table employee
add salary NUMBER;

select first_name
from employee;

select first_name, last_name, salary
from employee;

select first_name, last_name, lower(first_name || '.' || last_name || 
'@bankoftomorrow.bg') as email
from employee;

select *
from employee;

alter table employee
add date_started DATE;

select first_name, last_name, date_started
from employee
where date_started < add_months(sysdate, -60);

select sysdate, add_months(sysdate, -60) remove_five_years, sysdate + 4 add_day,
sysdate - 1/24 remove_hour
from dual;

select first_name, last_name, addl_name
from employee
where lower(first_name) like '%i%'
or lower(last_name) like '%i%'
or lower(addl_name) like '%i%';

--business request 2

create table employee_position(
empl_id NUMBER REFERENCES employee(empl_id),
pos VARCHAR2(105),
st_date DATE,
end_date DATE
);

alter table employee_position
add dep_id NUMBER REFERENCES department(dep_id);

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(3, 'Credit operator', '28-NOV-22', '06-DEC-22','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(3, 'Operator', '06-DEC-22', '','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(10, 'Credit operator', '06-JAN-22', '26-JUN-22','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(10, 'Cards', '10-SEP-22', '06-JAN-23','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(10, 'Credit operator', '06-JAN-23', '','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(5, 'Cards', '20-JUN-22', '20-DEC-22','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(5, 'Credit operator', '06-JAN-23', '','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(7, 'Opeator', '07-FEB-22', '06-SEP-22','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(7, 'Cards', '06-SEP-22', '','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(4, 'Opeator', '07-DEC-20', '06-SEP-22','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(4, 'Cards', '06-JAN-22', '06-NOV-22','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(4, 'Credit operator', '06-DEC-22', '','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(1, 'Operator', '06-JUN-22', '','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(2, 'Cards', '16-JAN-23', '','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(6, 'Credit operator', '20-SEP-21', '','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(8, 'Operator', '27-SEP-21', '','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(9, 'Cards', '28-NOV-22', '','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(11, 'Operator', '10-DEC-17', '','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(12, 'Cards', '20-MAR-19', '','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(13, 'Credit operator', '30-NOV-21', '','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(14, 'Operator', '10-MAR-21', '','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(15, 'Cards', '30-JUL-20', '','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(16, 'Credit operator', '19-JUL-21', '','2');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(17, 'Operator', '26-FEB-18', '','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(18, 'Operator', '23-AUG-20', '','1');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(19, 'Cards', '29-JAN-28', '','3');

insert into employee_position(empl_id, pos, st_date, end_date, dep_id)
values(20, 'Cards', '13-MAR-18', '','3');


select first_name, last_name, empl_id
from employee e
where (select count(ep.empl_id) from employee_position ep where ep.empl_id = e.empl_id) > 1

select  *
from employee_position ep
inner join employee e
on ep.empl_id=e.empl_id
where (select count(ep.empl_id) from employee_position ep where ep.empl_id = e.empl_id) > 1 
and (st_date between trunc(add_months(sysdate, -2), 'mm')
                           and last_day(add_months(sysdate, -2)));

select *
from employee e
where (select count(ep.empl_id) from employee_position ep where ep.empl_id = e.empl_id) = 1;



--business request 3

alter table employee
add status VARCHAR2(105);

select *
from employee
where status = 'dismissed';

select *
from employee
where status = 'on maternity leave';


select *
from employee
where status = 'on furlough';


select *
from employee
where date_started < add_months(sysdate, -60)
and salary > 5000
order by first_name desc;


select salary, job_desc, first_name, last_name
from employee
where dep_id = 1
order by salary desc
fetch first 5 rows only;

select salary, job_desc, first_name, last_name
from employee
where dep_id = 2
order by salary desc
fetch first 5 rows only;

select salary, job_desc, first_name, last_name
from employee
where dep_id = 3
order by salary desc
fetch first 5 rows only;

select job_desc, sum(salary)
from employee 
group by job_desc
order by sum(salary) asc;


select job_desc, salary
from employee
order by salary asc;

select job_desc, avg(salary) 
from employee
group by job_desc;


--business request 4

alter table customer
add amount DECIMAL;

alter table customer
add currency_type VARCHAR2(10);


select first_name, last_name, amount, currency_type
from customer
where currency_type <> 'BGN';


select first_name, last_name, amount, currency_type
from customer
where amount is null;


set serveroutput on;

declare 

begin

for i in (select *
          from customer) loop


dbms_output.put_line( i.first_name || ' account type is '||i.currency_type);

end loop;

end;


