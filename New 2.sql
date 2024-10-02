select c.department, sum (nvl(a.t_qty,0)) "KHL_MYM QTY", sum (nvl(a.g_total,0)) sales, sum (nvl(b.qty,0)) target 
from product_category c 
left join sales a 
on c.department=a.department  and  a.branch='KHL_MYM'   
left join target b
on a.department= b.department and a.branch=b.branch
group by c.department, a.branch
order by c.department;



-------------- For Dhaka & Kushtia Wing --------------------------
insert into sales_view (dept, sales_qty1, sales_amt1,target1, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and a.branch='DHK_KST'
group by a.department, a.branch, a.month
order by a.department;


--------------- For Chittagong & Bogura Wing ---------------------------
insert into sales_view (dept, sales_qty2, sales_amt2,target2, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='CTG_BOG'
group by a.department, a.branch, a.month
order by a.department;



-------------- For Khulna & Mymensingh Wing --------------------------
insert into sales_view (dept, sales_qty3, sales_amt3,target3, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='KHL_MYM' 
group by a.department, a.branch, a.month
order by a.department;


--------------- For Corporate & Others Wing ---------------------------

insert into sales_view (dept, sales_qty4, sales_amt4,target4, branch, month_name) 
select distinct a.department, sum(nvl(a.t_qty,0)), sum(nvl(a.g_total,0)) sales, sum(nvl(b.qty,0)) tar, a.branch, a.month  from sales a, target b
where a.department= b.department and a.branch=b.branch and  a.branch='COR_OTHERS'
group by a.department, a.branch, a.month
order by a.department;



select distinct department from sales where department not in (select department from target);

select distinct department from target;

update target set department = 'Die Casting Gift Box' where department = 'Die-Casting Gift Box';

select distinct dept from sales_view;



select distinct dept, sum(nvl(target1,0)), sum(nvl(sales_qty1,0)), sum(nvl(sales_amt1,0)),sum(nvl(target2,0)), sum(nvl(sales_qty2,0)), sum(nvl(sales_amt2,.0)), 
sum(nvl(target3,0)), sum(nvl(sales_qty3,0)), sum(nvl(sales_amt3,0)), sum(nvl(target4,0)), sum(nvl(sales_qty4,0)), sum(nvl(sales_amt4,0)) from sales_view
group by dept
order by dept;


--------------------- For My Practise -------------

SELECT 
    department,
    SUM(CASE WHEN branch = 'DHK_KST' THEN t_qty ELSE 0 END) AS dhk_branch_qty,
    SUM(CASE WHEN branch = 'DHK_KST' THEN g_total ELSE 0 END) AS dhk_branch_amount
FROM 
    sales
GROUP BY 
    department
ORDER BY department;

-----

SELECT 
    department,
    SUM(CASE WHEN branch = 'DHK_KST' THEN t_qty ELSE 0 END) AS dhk_branch_qty,
    SUM(CASE WHEN branch = 'DHK_KST' THEN g_total ELSE 0 END) AS dhk_branch_amount
FROM 
    sales
GROUP BY 
    department
UNION ALL
-- Total row
SELECT 
    'Total' AS department,
    SUM(CASE WHEN branch = 'DHK_KST' THEN t_qty ELSE 0 END) AS dhk_branch_qty,
    SUM(CASE WHEN branch = 'DHK_KST' THEN g_total ELSE 0 END) AS dhk_branch_amount
FROM 
    sales
ORDER BY 
    department;




--------------

SELECT 
    department,
    SUM(CASE WHEN branch = 'DHK_KST' THEN t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN branch = 'DHK_KST' THEN g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN branch = 'CTG_BOG' THEN t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN branch = 'CTG_BOG' THEN g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN branch = 'KHL_MYM' THEN t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN branch = 'KHL_MYM' THEN g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN branch = 'COR_OTHERS' THEN t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN branch = 'COR_OTHERS' THEN g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM 
    sales
GROUP BY 
    department
UNION ALL
-- Total row
SELECT 
    'Total' AS department,
    SUM(CASE WHEN branch = 'DHK_KST' THEN t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN branch = 'DHK_KST' THEN g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN branch = 'CTG_BOG' THEN t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN branch = 'CTG_BOG' THEN g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN branch = 'KHL_MYM' THEN t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN branch = 'KHL_MYM' THEN g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN branch = 'COR_OTHERS' THEN t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN branch = 'COR_OTHERS' THEN g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM 
    sales
ORDER BY 
    department;
    
    
    -----------
 SELECT 
    s.department,
    SUM(CASE WHEN t.branch = 'DHK_KST' THEN t.qty ELSE 0 END) AS Target_DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN t.branch = 'CTG_BOG' THEN t.qty ELSE 0 END) AS Target_CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN t.branch = 'KHL_MYM' THEN t.qty ELSE 0 END) AS Target_KHL_MYMT_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN t.branch = 'COR_OTHERS' THEN t.qty ELSE 0 END) AS Target_COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM 
    sales s
LEFT JOIN 
    target t ON s.department = t.department AND s.branch = t.branch
GROUP BY 
    s.department
UNION ALL
SELECT 
    'Total' AS department,
    SUM(CASE WHEN t.branch = 'DHK_KST' THEN t.qty ELSE 0 END) AS Target_DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN t.branch = 'CTG_BOG' THEN t.qty ELSE 0 END) AS Target_CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN s.t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN s.g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN t.branch = 'KHL_MYM' THEN t.qty ELSE 0 END) AS Target_KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN t.branch = 'COR_OTHERS' THEN t.qty ELSE 0 END) AS Target_COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN s.t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN s.g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM 
    sales s
LEFT JOIN 
    target t ON s.department = t.department AND s.branch = t.branch
ORDER BY 
    department;
    
    -----------

 SELECT 
    pc.department,
    SUM(CASE WHEN t.branch = 'DHK_KST' THEN t.qty ELSE 0 END) AS Target_DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN t.branch = 'CTG_BOG' THEN t.qty ELSE 0 END) AS Target_CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN t.branch = 'KHL_MYM' THEN t.qty ELSE 0 END) AS Target_KHL_MYMT_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN t.branch = 'COR_OTHERS' THEN t.qty ELSE 0 END) AS Target_COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM
product_category pc  
LEFT JOIN
    sales s ON pc.department = s.department
LEFT JOIN 
    target t ON s.department = t.department AND s.branch = t.branch
GROUP BY 
    pc.department
    UNION ALL
SELECT 
    'Total' AS department,
    SUM(CASE WHEN t.branch = 'DHK_KST' THEN t.qty ELSE 0 END) AS Target_DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN t.branch = 'CTG_BOG' THEN t.qty ELSE 0 END) AS Target_CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN s.t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN s.g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN t.branch = 'KHL_MYM' THEN t.qty ELSE 0 END) AS Target_KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN t.branch = 'COR_OTHERS' THEN t.qty ELSE 0 END) AS Target_COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN s.t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN s.g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM 
    sales s
LEFT JOIN 
    target t ON s.department = t.department AND s.branch = t.branch
ORDER BY 
    department;
    
    -------------

 SELECT 
    pc.department,
    SUM(CASE WHEN t.branch = 'DHK_KST' THEN t.qty ELSE 0 END) AS Target_DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.t_qty ELSE 0 END) AS DHK_KST_Qty,
    SUM(CASE WHEN s.branch = 'DHK_KST' THEN s.g_total ELSE 0 END) AS DHK_KST_Amount,
    SUM(CASE WHEN t.branch = 'CTG_BOG' THEN t.qty ELSE 0 END) AS Target_CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN t_qty ELSE 0 END) AS CTG_BOG_Qty,
    SUM(CASE WHEN s.branch = 'CTG_BOG' THEN g_total ELSE 0 END) AS CTG_BOG_Amount,
    SUM(CASE WHEN t.branch = 'KHL_MYM' THEN t.qty ELSE 0 END) AS Target_KHL_MYMT_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.t_qty ELSE 0 END) AS KHL_MYM_Qty,
    SUM(CASE WHEN s.branch = 'KHL_MYM' THEN s.g_total ELSE 0 END) AS KHL_MYM_Amount,
    SUM(CASE WHEN t.branch = 'COR_OTHERS' THEN t.qty ELSE 0 END) AS Target_COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN t_qty ELSE 0 END) AS COR_OTHERS_Qty,
    SUM(CASE WHEN s.branch = 'COR_OTHERS' THEN g_total ELSE 0 END) AS COR_OTHERS_Amount
FROM
product_category pc  
LEFT JOIN
    sales s ON pc.department = s.department
LEFT JOIN 
    target t ON s.department = t.department AND s.branch = t.branch
GROUP BY 
    pc.department
ORDER BY department;

---------------

SELECT 
    territory, 
    party_name,
    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END) AS CastAluminumKarai_Qty,
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END) AS CastAluminumKarai_Gross,
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END) AS Ceramic_Gift_Box_Qty,
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END) AS Ceramic_Gift_Box_Gross,
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END) AS Die_Casting_Qty,
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END) AS Die_Casting_Gross,
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END) AS Die_Casting_Gift_Box_Qty,
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END) AS Die_Casting_Gift_Box_Gross,
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END) AS Electric_Iron_Qty,
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END) AS Electric_Iron_Gross,
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END) AS Food_Pot_Qty,
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END) AS Food_Pot_Gross,
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END) AS Gas_Stove_Qty,
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END) AS Gas_Stove_Gross,
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END) AS Induction_Cooker_Qty,
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END) AS Induction_Cooker_Gross,
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END) AS Kettle_Qty,
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END) AS Kettle_Gross,
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END) AS Non_Stick_Qty,
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END) AS Non_Stick_Gross,
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN t_qty ELSE 0 END) AS Non_Stick_Ceramic_Qty,
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN g_total ELSE 0 END) AS Non_Stick_Ceramic_Gross,
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END) AS Nonstick_Gift_Box_Qty,
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN g_total ELSE 0 END) AS Nonstick_Gift_Box_Gross,
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END) AS Others_Qty,
    SUM(CASE WHEN department = 'Others' THEN g_total ELSE 0 END) AS Others_Gross,
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END) AS Packing_Materials_Qty,
    SUM(CASE WHEN department = 'Packing Materials' THEN g_total ELSE 0 END) AS Packing_Materials_Gross,
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END) AS Polish_Hari_Qty,
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN g_total ELSE 0 END) AS Polish_Hari_Gross,
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END) AS Pressure_Cooker_Qty,
    SUM(CASE WHEN department = 'Pressure Cooker' THEN g_total ELSE 0 END) AS Pressure_Cooker_Gross,
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END) AS Raw_Materials_Qty,
    SUM(CASE WHEN department = 'Raw Materials' THEN g_total ELSE 0 END) AS Raw_Materials_Gross,
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END) AS Rice_Cooker_Qty,
    SUM(CASE WHEN department = 'Rice Cooker' THEN g_total ELSE 0 END) AS Rice_Cooker_Gross,
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END) AS SS_Pressure_Cooker_Qty,
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN g_total ELSE 0 END) AS SS_Pressure_Cooker_Gross,
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END) AS Spoon_Knife_Qty,
    SUM(CASE WHEN department = 'Spoon and Knife' THEN g_total ELSE 0 END) AS Spoon_Knife_Gross,
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END) AS Steel_Pcs_Qty,
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross
FROM 
    test_sales_report
GROUP BY 
    territory, 
    party_name
UNION ALL
SELECT 
    territory,
    'Total' AS party_name,
    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END) AS CastAluminumKarai_Qty,
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END) AS CastAluminumKarai_Gross,
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END) AS Ceramic_Gift_Box_Qty,
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END) AS Ceramic_Gift_Box_Gross,
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END) AS Die_Casting_Qty,
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END) AS Die_Casting_Gross,
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END) AS Die_Casting_Gift_Box_Qty,
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END) AS Die_Casting_Gift_Box_Gross,
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END) AS Electric_Iron_Qty,
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END) AS Electric_Iron_Gross,
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END) AS Food_Pot_Qty,
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END) AS Food_Pot_Gross,
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END) AS Gas_Stove_Qty,
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END) AS Gas_Stove_Gross,
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END) AS Induction_Cooker_Qty,
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END) AS Induction_Cooker_Gross,
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END) AS Kettle_Qty,
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END) AS Kettle_Gross,
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END) AS Non_Stick_Qty,
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END) AS Non_Stick_Gross,
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN t_qty ELSE 0 END) AS Non_Stick_Ceramic_Qty,
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN g_total ELSE 0 END) AS Non_Stick_Ceramic_Gross,
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END) AS Nonstick_Gift_Box_Qty,
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN g_total ELSE 0 END) AS Nonstick_Gift_Box_Gross,
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END) AS Others_Qty,
    SUM(CASE WHEN department = 'Others' THEN g_total ELSE 0 END) AS Others_Gross,
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END) AS Packing_Materials_Qty,
    SUM(CASE WHEN department = 'Packing Materials' THEN g_total ELSE 0 END) AS Packing_Materials_Gross,
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END) AS Polish_Hari_Qty,
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN g_total ELSE 0 END) AS Polish_Hari_Gross,
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END) AS Pressure_Cooker_Qty,
    SUM(CASE WHEN department = 'Pressure Cooker' THEN g_total ELSE 0 END) AS Pressure_Cooker_Gross,
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END) AS Raw_Materials_Qty,
    SUM(CASE WHEN department = 'Raw Materials' THEN g_total ELSE 0 END) AS Raw_Materials_Gross,
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END) AS Rice_Cooker_Qty,
    SUM(CASE WHEN department = 'Rice Cooker' THEN g_total ELSE 0 END) AS Rice_Cooker_Gross,
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END) AS SS_Pressure_Cooker_Qty,
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN g_total ELSE 0 END) AS SS_Pressure_Cooker_Gross,
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END) AS Spoon_Knife_Qty,
    SUM(CASE WHEN department = 'Spoon and Knife' THEN g_total ELSE 0 END) AS Spoon_Knife_Gross,
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END) AS Steel_Pcs_Qty,
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross
FROM 
    test_sales_report
GROUP BY 
    territory
ORDER BY 
    territory, 
    party_name;