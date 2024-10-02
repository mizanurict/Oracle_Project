DELETE FROM ordered_product;



SELECT * FROM all_customer;

TRUNCATE TABLE payscalepaygrade;

SELECT * FROM payscalepaygrade order by 1;

SELECT * FROM ordered_product order by num;

SELECT * FROM order_info order by order_number;

SELECT * FROM EMP_BASIC_INFORMATION;
SELECT * FROM EMP_PERSONAL_INFORMATION;
SELECT * FROM EMP_ADDRESS_INFORMATION;
SELECT * FROM EMP_EMPLOYMENT_INFORMATION;
SELECT * FROM EMP_SALARY_ACCOUNT_INFORMATION;

ALTER TABLE EMP_BASIC_INFORMATION
ADD emp_image BLOB;



CREATE TABLE my_images (
  id NUMBER PRIMARY KEY,
  image BLOB
);

SELECT * FROM my_images;


SELECT a.EMP_CODE, a.EMP_NAME, 
a.DESIGNATION, a.DOB, 
a.AGE, a.NID_NUMBER, a.PERSONAL_PHONE, 
a.OFFICE_EMAIL, a.CORPORATE_PHONE, 
a.PERSONAL_EMAIL, a.SERVICE_LENGTH, 
b.FATHER_NAME, b.MOTHER_NAME, 
b.RELIGION, b.BLOOD_GROUP, 
b.NATIONALITY, b.MARITAL_STATUS, 
b.SPOUSE_NAME, b.CHILDREN_NUMBER, 
b.WEIGHT, b.HEIGHT, 
b.GENDER, c.PRESENT_HOUSE, 
c.PRESENT_VILLAGE, c.PRESENT_UNION, 
c.PRESENT_POSTOFFICE, c.PRESENT_POSTCODE, 
c.PRESENT_THANA, c.PRESENT_DISTRICT, 
c.PRESENT_DIVISION, c.PRESENT_COUNTRY, 
c.PERMANENT_HOUSE, c.PERMANENT_VILLAGE, 
c.PERMANENT_UNION, c.PERMANENT_POSTOFFICE, 
c.PERMANENT_POSTCODE, 
c.PERMANENT_THANA, c.PERMANENT_DISTRICT, 
c.PERMANENT_DIVISION, c.PERMANENT_COUNTRY, 
d.EMP_TYPE, d.JOINING_DATE, 
d.DEPARTMENT, d.SECTION, 
d.ATTENDANCE_CARDID, d.CONFIRMATION_DATE, 
d.STATUS, e.PAYSCALE, 
e.PAYGRADE, 
e.PAYMENT_MODE, e.BASIC_SALARY, 
e.GROSS_SALARY, e.PAYROLL_NAME, 
e.BANK_NAME, e.ACCOUNT_NAME, 
e.ACCOUNT_NUMBER, 
e.START_DATE, e.LAST_INCREMENT_DATE, 
e.INCREMENT_AMOUNT  
FROM EMP_BASIC_INFORMATION a 
join EMP_PERSONAL_INFORMATION b on a.common_code=b.common_code
join EMP_ADDRESS_INFORMATION c on a.common_code=c.common_code
join EMP_EMPLOYMENT_INFORMATION d on a.common_code=d.common_code
join EMP_SALARY_ACCOUNT_INFORMATION e on a.common_code=e.common_code order by a.emp_code;



CREATE SEQUENCE common_code
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;





CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    department_id NUMBER,
    CONSTRAINT fk_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

CREATE TABLE salaries (
    employee_id NUMBER,
    salary NUMBER NOT NULL,
    effective_date DATE NOT NULL,
    CONSTRAINT fk_employee
        FOREIGN KEY (employee_id)
        REFERENCES employees(employee_id)
);

INSERT INTO departments (department_id, department_name) VALUES (1, 'Sales');
INSERT INTO departments (department_id, department_name) VALUES (2, 'IT');
INSERT INTO departments (department_id, department_name) VALUES (3, 'HR');

INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES (1, 'John', 'Doe', 1);
INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES (2, 'Jane', 'Smith', 2);
INSERT INTO employees (employee_id, first_name, last_name, department_id) VALUES (3, 'Alice', 'Johnson', 3);

INSERT INTO salaries (employee_id, salary, effective_date) VALUES (1, 5000, TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO salaries (employee_id, salary, effective_date) VALUES (1, 5500, TO_DATE('2024-07-01', 'YYYY-MM-DD'));
INSERT INTO salaries (employee_id, salary, effective_date) VALUES (2, 6000, TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO salaries (employee_id, salary, effective_date) VALUES (3, 4500, TO_DATE('2024-01-01', 'YYYY-MM-DD'));

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM salaries;

SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name,
       s.salary,
       s.effective_date
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN salaries s ON e.employee_id = s.employee_id
ORDER BY 1;




















CREATE TABLE divisions (
    division_id NUMBER PRIMARY KEY,
    division_name VARCHAR2(50) NOT NULL
);

CREATE TABLE districts (
    district_id NUMBER PRIMARY KEY,
    district_name VARCHAR2(50) NOT NULL,
    division_id NUMBER,
    CONSTRAINT fk_division
        FOREIGN KEY (division_id)
        REFERENCES divisions(division_id)
);



INSERT INTO divisions (division_id, division_name) VALUES (1, 'Division A');
INSERT INTO divisions (division_id, division_name) VALUES (2, 'Division B');

INSERT INTO districts (district_id, district_name, division_id) VALUES (1, 'District 1', 1);
INSERT INTO districts (district_id, district_name, division_id) VALUES (2, 'District 2', 1);
INSERT INTO districts (district_id, district_name, division_id) VALUES (3, 'District 3', 2);
INSERT INTO districts (district_id, district_name, division_id) VALUES (4, 'District 4', 2);


select district_id, to_char(district_name) from districts;


SELECT* FROM department_emp_attendance order by code;

SELECT department, sub_department  ,code, employee_name, late_in
FROM department_emp_attendance
where late_in!='0h 0m';

SELECT department, sub_department  ,code, employee_name, early_out
FROM department_emp_attendance
where early_out!='0h 0m';

SELECT department, sub_department  ,code, employee_name
FROM department_emp_attendance
where in_time_out_time='Absent';


SELECT ALL_CUSTOMER.CODE, ALL_CUSTOMER.CUSTOMER_NAME, ALL_CUSTOMER.ADDRESS
FROM ALL_CUSTOMER 
where ALL_CUSTOMER.CODE=Upper('&code');

select code, customer_name from all_customer order by code;

select code, customer_name from all_customer
where code = UPPER('&code');

select* from cust1;

select id, name from cust1
where id = &id;



select* from emp;


insert into login (username, password)  values('sales', 'sales');


select* from login;




