SELECT * FROM customer;
SELECT * FROM products;
SELECT * FROM customer_list;
SELECT * FROM cust1;
SELECT * FROM prod1;

SELECT * FROM emp_basic_info;
SELECT * FROM emp_additional_info;

SELECT All_Customer.code, All_Customer.customer_name, All_Customer.line, Item_Master.item_code, Item_Master.item_name, Item_Master.mrp
FROM All_Customer
inner JOIN Item_Master ON All_Customer.line = Item_Master.line
order by 1;





SELECT All_Customer.code, All_Customer.customer_name, All_Customer.line, Item_Master.item_code, Item_Master.item_name, Item_Master.mrp
FROM All_Customer
inner JOIN Item_Master ON All_Customer.line = Item_Master.line
where all_customer.code='&code';







SELECT * FROM Item_Master;
SELECT * FROM All_Customer;
SELECT * FROM CUSTOMER_CREDIT_LIMIT;

SELECT a.CODE, 
a.CUSTOMER_NAME, a.ADDRESS, b.AMOUNT, 
a.PHONE
FROM ALL_CUSTOMER a join CUSTOMER_CREDIT_LIMIT b on a.code=b.code;



CREATE SEQUENCE order_number
START WITH 10000000
INCREMENT BY 1
NOCACHE;

SELECT a.CODE, 
a.CUSTOMER_NAME, a.ADDRESS, b.AMOUNT, 
a.PHONE, c.division
FROM ALL_CUSTOMER a join CUSTOMER_CREDIT_LIMIT b on a.code=b.code
join customer_branch c on a.code=c.code;

SELECT * FROM customer_branch where customer_branch.branch='&code';
SELECT * FROM order_num;

SELECT * FROM customer_branch;

SELECT * FROM All_Customer where All_Customer.code='&code';


SELECT * FROM Item_Master;



SELECT * FROM order_info;
SELECT * FROM ordered_product;















