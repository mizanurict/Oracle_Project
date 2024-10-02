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
    ORDER BY 
    department;

     
