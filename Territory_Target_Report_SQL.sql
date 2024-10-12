    
    
----------------Territory Wise Sales Reports-------------------------

    SELECT 
    territory, 
    COALESCE(party_name, 'Sub Total') AS party_name,
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
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END) AS Flask_Qty,
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END) AS Flask_Gross,
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
    SUM(CASE WHEN department = 'Ceramic Non Stick' THEN t_qty ELSE 0 END) AS Non_Stick_Ceramic_Qty,
    SUM(CASE WHEN department = 'Ceramic Non Stick' THEN g_total ELSE 0 END) AS Non_Stick_Ceramic_Gross,
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
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END) AS Spoon_Knife_Qty,
    SUM(CASE WHEN department = 'Spoon and Knife' THEN g_total ELSE 0 END) AS Spoon_Knife_Gross,
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END) AS SS_Pressure_Cooker_Qty,
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN g_total ELSE 0 END) AS SS_Pressure_Cooker_Gross,
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END) AS Steel_Pcs_Qty,
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross,
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Ceramic Non Stick' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END)+
   SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END)+     
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Ceramic Non Stick' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Others' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Packing Materials' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Pressure Cooker' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Raw Materials' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Rice Cooker' THEN g_total ELSE 0 END)+   
  SUM(CASE WHEN department = 'SS Pressure Cooker' THEN g_total ELSE 0 END)+
    SUM(CASE WHEN department = 'Spoon and Knife' THEN g_total ELSE 0 END)+    
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END)) AS Total_Gross
FROM 
    test_sales_report
where voucher_date between :StartDate AND :EndDate
GROUP BY 
    ROLLUP (territory, party_name)
ORDER BY 
    territory;
    
------------------ Sales Target Report ---------------   
 
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

