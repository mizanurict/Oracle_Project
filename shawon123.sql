CREATE SEQUENCE order_number
START WITH 10000000
INCREMENT BY 1
NOCACHE;

select* from ALL_CUSTOMER;

select* from all_product;



select* from login;

select* from EMP_BASIC_INFORMATION;

select* from EMP_PERSONAL_INFORMATION;

select* from EMP_ADDRESS_INFORMATION;

select* from EMP_EMPLOYMENT_INFORMATION;

select* from EMP_SALARY_ACCOUNT_INFORMATION;

CREATE SEQUENCE common_code
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;

select* from PAYSCALEPAYGRADE;



SELECT a.emp_code, a.emp_name, a.designation, a.dob, b.GENDER, b.BLOOD_GROUP, c.PRESENT_VILLAGE, 
c.PRESENT_DISTRICT, d.JOINING_DATE, d.DEPARTMENT, d.EMP_TYPE, e.PAYSCALE, e.PAYGRADE, e.GROSS_SALARY	
FROM emp_basic_information a
JOIN emp_personal_information b
ON a.common_code = b.common_code
JOIN emp_address_information c
ON a.common_code=c.common_code
JOIN emp_employment_information d
ON a.common_code=d.common_code
JOIN emp_salary_account_information e
ON a.common_code=e.common_code;


SELECT a.emp_code, a.emp_name, a.designation, a.dob, a.nid_number, a.personal_phone, 
b.GENDER, b.MARITAL_STATUS, b.BLOOD_GROUP, c.PRESENT_VILLAGE, c.PRESENT_DISTRICT, d.JOINING_DATE, d.DEPARTMENT
FROM emp_basic_information a
JOIN emp_personal_information b
ON a.common_code = b.common_code
JOIN emp_address_information c
ON a.common_code=c.common_code
JOIN emp_employment_information d
ON a.common_code=d.common_code
JOIN emp_salary_account_information e
ON a.common_code=e.common_code;

select* from EMP_EMPLOYMENT_INFORMATION;

select department, joining_date from EMP_EMPLOYMENT_INFORMATION
group by rollup (department, joining_date)
order by department;

SELECT EMP_BASIC_INFORMATION.EMP_CODE, EMP_BASIC_INFORMATION.EMP_NAME, EMP_BASIC_INFORMATION.DESIGNATION, 
EMP_BASIC_INFORMATION.DOB, EMP_BASIC_INFORMATION.NID_NUMBER, 
EMP_BASIC_INFORMATION.PERSONAL_PHONE, EMP_BASIC_INFORMATION.EMP_IMAGE, 
EMP_PERSONAL_INFORMATION.FATHER_NAME, EMP_PERSONAL_INFORMATION.MOTHER_NAME, 
EMP_PERSONAL_INFORMATION.RELIGION, EMP_PERSONAL_INFORMATION.NATIONALITY, 
EMP_PERSONAL_INFORMATION.GENDER, EMP_PERSONAL_INFORMATION.BLOOD_GROUP
FROM EMP_BASIC_INFORMATION join EMP_PERSONAL_INFORMATION 
on EMP_BASIC_INFORMATION.common_CODE=EMP_PERSONAL_INFORMATION.common_code
WHERE EMP_BASIC_INFORMATION.emp_code=&emp_code;

SELECT EMP_BASIC_INFORMATION.EMP_CODE, EMP_BASIC_INFORMATION.EMP_NAME, EMP_BASIC_INFORMATION.DESIGNATION, 
       EMP_BASIC_INFORMATION.DOB, EMP_BASIC_INFORMATION.NID_NUMBER, 
       EMP_BASIC_INFORMATION.PERSONAL_PHONE, EMP_BASIC_INFORMATION.EMP_IMAGE, 
       EMP_PERSONAL_INFORMATION.FATHER_NAME, EMP_PERSONAL_INFORMATION.MOTHER_NAME, 
       EMP_PERSONAL_INFORMATION.RELIGION, EMP_PERSONAL_INFORMATION.NATIONALITY, 
       EMP_PERSONAL_INFORMATION.GENDER, EMP_PERSONAL_INFORMATION.BLOOD_GROUP
FROM EMP_BASIC_INFORMATION 
JOIN EMP_PERSONAL_INFORMATION 
  ON EMP_BASIC_INFORMATION.common_CODE = EMP_PERSONAL_INFORMATION.common_code
WHERE EMP_BASIC_INFORMATION.emp_code = :emp_code;



select customer_code, delivery_date, net_value, total_value 
from ordered_customers
where delivery_date=:delivery_date;


select customer_code, customer_name, delivery_date, net_value, total_value 
from ordered_customers
WHERE delivery_date BETWEEN :start_date AND :end_date;


SELECT customer_code, customer_name, 
       SUM(net_value) AS Net_Value, 
       SUM(total_value) AS Total_Value,
         ROUND((SUM(total_value) - SUM(net_value)) / SUM(total_value) * 100, 2)
        AS Commission
FROM ordered_customers
WHERE delivery_date BETWEEN :start_date AND :end_date
GROUP BY customer_code, customer_name;

select* from ordered_products;

select* from ordered_customers;


select a.order_number, b.INVOICE_DATE, a.PRODUCT_CODE, a.product_name, a.QTY, a.UNIT_PRICE, a.QTY * a.UNIT_PRICE as "Gross Total"
 from ordered_products a
 join ordered_customers b
 on a.order_number=b.order_number
 WHERE invoice_date BETWEEN :start_date AND :end_date;
 
 
SELECT a.emp_code, 
       a.emp_name, 
       a.designation, 
       a.dob, 
       a.nid_number, 
       a.personal_phone, 
       b.GENDER, 
       b.MARITAL_STATUS, 
       b.BLOOD_GROUP, 
        c.PRESENT_VILLAGE || ', ' ||
        c.PRESENT_DISTRICT AS Present_Address, 
       d.JOINING_DATE, 
       d.DEPARTMENT
FROM emp_basic_information a
JOIN emp_personal_information b ON a.common_code = b.common_code
JOIN emp_address_information c ON a.common_code = c.common_code
JOIN emp_employment_information d ON a.common_code = d.common_code
JOIN emp_salary_account_information e ON a.common_code = e.common_code
WHERE upper(d.DEPARTMENT)	=upper(:Derpartment);



SELECT a.emp_code, a.emp_name, a.designation, a.dob, b.GENDER, b.BLOOD_GROUP, c.PRESENT_VILLAGE, 
c.PRESENT_DISTRICT, d.JOINING_DATE, d.DEPARTMENT, d.EMP_TYPE, e.PAYSCALE, e.PAYGRADE, e.GROSS_SALARY	
FROM emp_basic_information a
JOIN emp_personal_information b
ON a.common_code = b.common_code
JOIN emp_address_information c
ON a.common_code=c.common_code
JOIN emp_employment_information d
ON a.common_code=d.common_code
JOIN emp_salary_account_information e
ON a.common_code=e.common_code
WHERE upper(d.DEPARTMENT)	=upper(:Derpartment);



select* from login;


SELECT a.emp_code, a.emp_name, a.designation, a.dob, b.GENDER, b.BLOOD_GROUP,  
c.PRESENT_VILLAGE || ', ' ||
c.PRESENT_DISTRICT AS Present_Address,
d.JOINING_DATE, d.DEPARTMENT, d.EMP_TYPE, e.PAYSCALE, e.PAYGRADE, e.GROSS_SALARY	
FROM emp_basic_information a
JOIN emp_personal_information b
ON a.common_code = b.common_code
JOIN emp_address_information c
ON a.common_code=c.common_code
JOIN emp_employment_information d
ON a.common_code=d.common_code
JOIN emp_salary_account_information e
ON a.common_code=e.common_code 
WHERE upper(d.DEPARTMENT)	=upper(:Derpartment);



SELECT CURRENT_DATE, 
USERNAME, VILLAGE, PO, PS, 
DISTRICT, PHONE, EMAIL, 
POSITION, DOJ, PROBATION_PERIOD
FROM OFFER_LATTER
Where phone=: phone;



CREATE SEQUENCE transaction_code
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;



SELECT a.emp_code, a.emp_name, a.designation,  
d.EMP_TYPE, e.PAYSCALE, e.PAYGRADE, e.basic_salary, e.GROSS_SALARY	
FROM emp_basic_information a
JOIN emp_personal_information b
ON a.common_code = b.common_code
JOIN emp_address_information c
ON a.common_code=c.common_code
JOIN emp_employment_information d
ON a.common_code=d.common_code
JOIN emp_salary_account_information e
ON a.common_code=e.common_code;


SElECT a.payscale, a.paygrade, a.amount
FROM PAYSCALEPAYGRADE a;

SELECT* From salary_increment
where effective_date;

SELECT *
FROM (
    SELECT *
    FROM salary_increment
    where pf=5355
    ORDER BY effective_date DESC
)
WHERE ROWNUM = 1;


SELECT a.emp_code, a.emp_name, a.designation,  
d.EMP_TYPE, e.PAYSCALE, e.PAYGRADE, e.basic_salary, e.GROSS_SALARY	
FROM emp_basic_information a
JOIN emp_employment_information d
ON a.common_code=d.common_code
JOIN emp_salary_account_information e
ON a.common_code=e.common_code;

BEGIN TRANSACTION;

-- Insert into the first target table
INSERT INTO emp_basic_information (designation) 
SELECT designation
FROM (
    SELECT designation
    FROM salary_increment
    ORDER BY effective_date DESC
)
WHERE ROWNUM = 1;

-- Insert into the second target table
INSERT INTO emp_salary_account_information (PAYSCALE, PAYGRADE, BASIC_SALARY, GROSS_SALARY)
SELECT PAYSCALE, PAYGRADE, BASIC_SALARY, GROSS_SALARY
FROM (
    SELECT PAYSCALE, PAYGRADE, BASIC_SALARY, GROSS_SALARY
    FROM salary_increment
    ORDER BY effective_date DESC
)
WHERE ROWNUM = 1;

COMMIT;


MERGE INTO emp_basic_information
USING (
    SELECT pf, designation
    FROM salary_increment
    WHERE effective_date = (
        SELECT MAX(effective_date)
        FROM salary_increment i
        WHERE i.pf = salary_increment.pf
    )
) salary_increment
ON (emp_basic_information.emp_code = salary_increment.pf)
WHEN MATCHED THEN
    UPDATE SET 
        emp_basic_information.designation = salary_increment.designation,
        emp_basic_information.last_updated = SYSDATE;


MERGE INTO EMP_SALARY_ACCOUNT_INFORMATION
USING (
    SELECT pf, PAYSCALE, PAYGRADE, BASIC_SALARY, GROSS_SALARY
    FROM salary_increment
    WHERE effective_date = (
        SELECT MAX(effective_date)
        FROM salary_increment i
        WHERE i.pf = salary_increment.pf
    )
) salary_increment
ON (EMP_SALARY_ACCOUNT_INFORMATION.pf = salary_increment.pf)
WHEN MATCHED THEN
    UPDATE SET 
        EMP_SALARY_ACCOUNT_INFORMATION.PAYSCALE = salary_increment.PAYSCALE,
        EMP_SALARY_ACCOUNT_INFORMATION.PAYGRADE = salary_increment.PAYGRADE,
        EMP_SALARY_ACCOUNT_INFORMATION.BASIC_SALARY = salary_increment.BASIC_SALARY,
        EMP_SALARY_ACCOUNT_INFORMATION.GROSS_SALARY= salary_increment.GROSS_SALARY,
        EMP_SALARY_ACCOUNT_INFORMATION.last_updated = SYSDATE;
        
        
        
     commit;   
     
     -----------------------------------------------------------
     
     MERGE INTO EMP_SALARY_ACCOUNT_INFORMATION
USING (
    SELECT pf, PAYSCALE, PAYGRADE, BASIC_SALARY, GROSS_SALARY
    FROM salary_increment
    WHERE effective_date = (
        SELECT MAX(effective_date)
        FROM salary_increment i
        WHERE i.pf = salary_increment.pf
    )
) salary_increment
ON (EMP_SALARY_ACCOUNT_INFORMATION.pf = salary_increment.pf)
WHEN MATCHED THEN
    UPDATE SET 
        EMP_SALARY_ACCOUNT_INFORMATION.PAYSCALE = salary_increment.PAYSCALE,
        EMP_SALARY_ACCOUNT_INFORMATION.PAYGRADE = salary_increment.PAYGRADE,
        EMP_SALARY_ACCOUNT_INFORMATION.BASIC_SALARY = salary_increment.BASIC_SALARY,
        EMP_SALARY_ACCOUNT_INFORMATION.GROSS_SALARY= salary_increment.GROSS_SALARY,
        EMP_SALARY_ACCOUNT_INFORMATION.last_updated = SYSDATE;



-----------------------------
 
















MERGE INTO emp_basic_information ebi
    USING (
        SELECT pf, designation
        FROM salary_increment si
        WHERE effective_date = (
            SELECT MAX(effective_date)
            FROM salary_increment i
            WHERE i.pf = si.pf
        )
    ) si
    ON (ebi.emp_code = si.pf)
    WHEN MATCHED THEN
        UPDATE SET 
            ebi.designation = si.designation,
            ebi.last_updated = SYSDATE;
    
    -- Merge into EMP_SALARY_ACCOUNT_INFORMATION table
    MERGE INTO EMP_SALARY_ACCOUNT_INFORMATION esai
    USING (
        SELECT pf, PAYSCALE, PAYGRADE, BASIC_SALARY, GROSS_SALARY
        FROM salary_increment si
        WHERE effective_date = (
            SELECT MAX(effective_date)
            FROM salary_increment i
            WHERE i.pf = si.pf
        )
    ) si
    ON (esai.pf = si.pf)
    WHEN MATCHED THEN
        UPDATE SET 
            esai.PAYSCALE = si.PAYSCALE,
            esai.PAYGRADE = si.PAYGRADE,
            esai.BASIC_SALARY = si.BASIC_SALARY,
            esai.GROSS_SALARY = si.GROSS_SALARY,
            esai.last_updated = SYSDATE;
            
    COMMIT;
            
            
            
            
            
            
            
            
            ----------------------
            
SELECT 
    si.pf, 
    si.username,
    eei.DEPARTMENT,
    si.designation, 
    si.basic_salary, 
    si.gross_salary, 
    si.effective_date,
    sysdate
FROM (
    SELECT*
    FROM 
        salary_increment
    WHERE 
        pf = :pf
    ORDER BY 
        effective_date DESC
) si
JOIN emp_employment_information eei
ON eei.pf = si.pf
WHERE ROWNUM = 1;

             
            
            
            
            
   SELECT 
    si.pf, 
    si.username,
    eei.DEPARTMENT,
    si.designation, 
    si.basic_salary, 
    si.new_gross, 
    si.effective_date,
    sysdate
FROM (
    SELECT *
    FROM salary_increment
    WHERE pf = :pf
    AND transaction_code = (
        SELECT MAX(transaction_code)
        FROM salary_increment
        WHERE pf = :pf
    )
    ORDER BY effective_date DESC
) si
JOIN emp_employment_information eei
ON eei.pf = si.pf
WHERE ROWNUM = 1;

            
            
            
            
            
         
            
            
            
            
            

CREATE TABLE salary_increment_backup AS SELECT* FROM salary_increment WHERE 1=2;



CREATE OR REPLACE TRIGGER si_backup
BEFORE INSERT OR DELETE OR UPDATE ON salary_increment
FOR EACH ROW
ENABLE
BEGIN
      IF inserting THEN
INSERT INTO salary_increment_backup (pf, username, type, designation, payscale, paygrade, basic_salary, gross_salary, increment_value, effective_date, transaction_code, new_gross) VALUES (:NEW.pf, :NEW.username, :NEW.type, :NEW.designation, :NEW.payscale, :NEW.paygrade, :NEW.basic_salary, :NEW.gross_salary, :NEW.increment_value, :NEW.effective_date, :NEW.transaction_code, :NEW.new_gross);
      ELSIF deleting THEN
DELETE FROM salary_increment_backup WHERE pf=:old.pf;
      ELSIF updating THEN
UPDATE salary_increment_backup SET pf =:NEW.pf, username =:NEW.username, type =:NEW.type, designation=:NEW.designation, payscale=:NEW.payscale, paygrade=:NEW.paygrade, basic_salary=:NEW.basic_salary, gross_salary=:NEW.gross_salary, increment_value=:NEW.increment_value, effective_date=:NEW.effective_date, transaction_code=:NEW.transaction_code, new_gross=:NEW.new_gross  WHERE pf=:old.pf;
END IF;
END;


select* from salary_increment;

select* from salary_increment_backup;

ALTER TABLE OFFER_LATTER
ADD (emp_id VARCHAR2(50) NOT NULL);



CREATE SEQUENCE leave_code
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;


select a.emp_code, a.emp_name,b.department, a.designation, c.al, c.sl, c.cl, c.spl, c.lwp, c.tl, c.wh, c.bd, c.fa
from emp_basic_information a
join leave_details c
on a.emp_code != c.pf
join emp_employment_information b
on a.emp_code = b.pf;


select* from leave_approved;

CREATE SEQUENCE seq_attendance_id
START WITH 1
INCREMENT BY 1
NOCACHE; -- Optional


CREATE OR REPLACE TRIGGER trigger_leave_id
BEFORE INSERT ON leave_application
FOR EACH ROW
BEGIN
  :NEW.leave_id := seq_leave_id.NEXTVAL;
END;





CREATE OR REPLACE TRIGGER trg_update_Leave_Status
AFTER UPDATE OF status ON leave_approved
FOR EACH ROW
BEGIN
   UPDATE leave_application
   SET status = :new.status
   WHERE leave_id = :old.leave_id;
END;
/




select a.emp_code, a.emp_name,b.department, a.designation, c.al, c.sl, c.cl, c.spl, c.lwp, c.tl, c.wh, c.bd, c.fa, s.PSL, s.TSL, s.YSL, s.SL, s.BSL
from emp_basic_information a
join leave_details c
on a.emp_code != c.pf
join emp_employment_information b
on a.emp_code = b.pf
join sick_leave s
on a.EMP_CODE = s.PF AND MAX(s.SICK_ID);

select* from sales;





CREATE TABLE emp_attendance_info (
    attendance_id NUMBER,
    employee_id VARCHAR2(50),
    attendance_date DATE,
    time_in TIMESTAMP(6),
    time_out TIMESTAMP(6),
    overtime_hours NUMBER,
    absence_reason VARCHAR2(100)
);


SELECT a.employee_id, b.emp_name, c.department, b.designation, c.joining_date, a.attendance_date, 
       a.time_in, a.time_out, a.overtime_hours
FROM emp_attendance_information a
JOIN emp_basic_information b
    ON a.employee_id = b.emp_code
JOIN emp_employment_information c
    ON a.employee_id = c.pf
WHERE a.employee_id = :PF 
  AND attendance_date BETWEEN :Start_Date AND :End_Date;
  
  SELECT a.employee_id, 
       b.emp_name, 
       a.attendance_date, 
       a.time_in, 
       a.time_out, 
       a.overtime_hours
FROM emp_attendance_information a
JOIN emp_basic_information b
  ON a.employee_id = b.emp_code
WHERE a.employee_id = :employee_id
AND a.attendance_date BETWEEN :start_date AND :end_date
ORDER BY a.attendance_date;


SELECT a.employee_id,
       COUNT(a.attendance_date) AS total_workdays, 
       SUM(a.overtime_hours) AS total_overtime
FROM emp_attendance_information a
GROUP BY a.employee_id;

WITH attendance_details AS (
   SELECT a.employee_id, 
          b.emp_name, 
          c.department,
          c.joining_date,
          a.attendance_date, 
          a.time_in, 
          a.time_out, 
          a.overtime_hours
   FROM emp_attendance_information a
   JOIN emp_basic_information b
     ON a.employee_id = b.emp_code
     JOIN emp_employment_information c
    ON a.employee_id = c.pf
   WHERE a.employee_id = :employee_id
   AND a.attendance_date BETWEEN :start_date AND :end_date
   ORDER BY a.attendance_date
), 
attendance_summary AS (
   SELECT a.employee_id, 
          COUNT(a.attendance_date) AS total_workdays, 
          SUM(a.overtime_hours) AS total_overtime
   FROM emp_attendance_information a
   WHERE a.employee_id = :employee_id
   AND a.attendance_date BETWEEN :start_date AND :end_date
   GROUP BY a.employee_id
)
SELECT d.employee_id, 
        b.emp_name,
        c.department,
        c.joining_date,
       d.attendance_date, 
       d.time_in, 
       d.time_out, 
       d.overtime_hours, 
       s.total_workdays, 
       s.total_overtime
FROM attendance_details d
JOIN attendance_summary s
  ON d.employee_id = s.employee_id
  JOIN emp_employment_information c
    ON d.employee_id = c.pf
    JOIN emp_basic_information b
     ON d.employee_id = b.emp_code;
  




select a.emp_code, a.emp_name, a.designation, b.department, b.joining_date
from emp_basic_information a
join emp_employment_information b
on a.emp_code=b.pf
where a.emp_code = :PF;

select c.attendance_date, c.time_in, c.time_out,  TO_CHAR(c.overtime_hours, 'FM9999.00') AS OverTime_Hours 
from emp_attendance_information c
join emp_basic_information a
on c.employee_id=a.emp_code
where a.emp_code = :PF and c.attendance_date BETWEEN :start_date AND :end_date;

SELECT
       COUNT(c.attendance_date) AS total_workdays, 
       TO_CHAR(SUM(c.overtime_hours), 'FM999.00') AS total_overtime
FROM emp_attendance_information c
join emp_employment_information b
on c.employee_id=b.pf
where c.employee_id = :PF
GROUP BY c.employee_id;