
-------------- For Dhaka & Kushtia Wing --------------------------
insert into sales_view (dept, sales_qty1, sales_amt1,target1, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and a.branch='DHK_KST'
group by a.department, a.branch, a.month
order by a.department


--------------- For Chittagong & Bogura Wing ---------------------------
insert into sales_view (dept, sales_qty2, sales_amt2,target2, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='CTG_BOG'
group by a.department, a.branch, a.month
order by a.department



-------------- For Khulna & Mymensingh Wing --------------------------
insert into sales_view (dept, sales_qty3, sales_amt3,target3, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='KHL_MYM' 
group by a.department, a.branch, a.month
order by a.department


--------------- For Corporate & Others Wing ---------------------------

insert into sales_view (dept, sales_qty4, sales_amt4,target4, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='COR_OTHERS'
group by a.department, a.branch, a.month
order by a.department



select distinct department from sales where department not in (select department from target)

select distinct department from target

update target set department = 'Die Casting Gift Box' where department = 'Die-Casting Gift Box'

select distinct dept from sales_view

delete from sales_view

select distinct dept, sum(nvl(target1,0)), sum(nvl(sales_qty1,0)), sum(nvl(sales_amt1,0)),sum(nvl(target2,0)), sum(nvl(sales_qty2,0)), sum(nvl(sales_amt2,.0)), 
sum(nvl(target3,0)), sum(nvl(sales_qty3,0)), sum(nvl(sales_amt3,0)), sum(nvl(target4,0)), sum(nvl(sales_qty4,0)), sum(nvl(sales_amt4,0)) from sales_view
group by dept
order by dept

----------

SELECT DISTINCT 
    pc.department,
    SUM(NVL(sv.target1, 0)) AS T_DHK_KST, 
    SUM(NVL(sv.sales_qty1, 0)) AS Q_DHK_KST, 
    SUM(NVL(sv.sales_amt1, 0)) AS A_DHK_KST, 
    SUM(NVL(sv.target2, 0)) AS T_CTG_BOG, 
    SUM(NVL(sv.sales_qty2, 0)) AS Q_CTG_BOG, 
    SUM(NVL(sv.sales_amt2, 0)) AS A_CTG_BOG, 
    SUM(NVL(sv.target3, 0)) AS T_KHL_MYM, 
    SUM(NVL(sv.sales_qty3, 0)) AS Q_KHL_MYM, 
    SUM(NVL(sv.sales_amt3, 0)) AS A_KHL_MYM, 
    SUM(NVL(sv.target4, 0)) AS T_OTHERS, 
    SUM(NVL(sv.sales_qty4, 0)) AS Q_OTHERS, 
    SUM(NVL(sv.sales_amt4, 0)) AS A_OTHERS
FROM 
    product_category pc
LEFT JOIN 
    sales_view sv  ON sv.dept = pc.department
GROUP BY 
    pc.department
ORDER BY 
    pc.department;
    
    
    
    
    
    --------------
    
    
SELECT 
    pc.department,  
    SUM(CASE WHEN t.branch = 'DHK_KST' THEN t.qty ELSE 0 END) AS Target_DHK_KST,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN t.branch = 'CTG_BOG' THEN t.qty ELSE 0 END) AS Target_CTG_BOG,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN s.t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN s.g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN t.branch = 'KHL_MYM' THEN t.qty ELSE 0 END) AS Target_KHL_MYMT,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN t.branch = 'COR_OTHERS' THEN t.qty ELSE 0 END) AS Target_COR_OTHERS,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN s.t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN s.g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM 
    Product_category pc
LEFT JOIN 
    sales s ON pc.department = s.department
LEFT JOIN 
    target t ON pc.department = t.department AND s.branch = t.branch
GROUP BY 
    pc.department
ORDER BY 
    pc.department;  
