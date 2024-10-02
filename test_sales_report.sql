SELECT 
    territory, 
    party_name,
    TO_CHAR(SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END), 'FM9990.00')  AS Aluminum_Qty,
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
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END) AS Flask_Qty,
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END) AS Flask_Gross,
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
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross,
    TO_CHAR((SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END)), 'FM990.00') AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN g_total ELSE 0 END)+ 
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
GROUP BY 
    territory, 
    party_name
UNION ALL
SELECT 
    territory,
    'Total' AS party_name,
    TO_CHAR(SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END), 'FM9990.00')  AS Aluminum_Qty,
    --SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
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
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END) AS Flask_Qty,
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END) AS Flask_Gross,
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
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross,
    TO_CHAR((SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END)), 'FM9990.00') AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN g_total ELSE 0 END)+ 
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
GROUP BY 
    territory
ORDER BY 
    territory, 
    party_name;
    
    ---------
    
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
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END) AS Flask_Qty,
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END) AS Flask_Gross,
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
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross,
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN g_total ELSE 0 END)+ 
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
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END) AS Flask_Qty,
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END) AS Flask_Gross,
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
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross,
       (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN g_total ELSE 0 END)+ 
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
GROUP BY 
    territory
ORDER BY 
    territory, 
    party_name;
    
    select territory,party_name, t_qty
    from test_sales_report
    where territory ='Jessore-1 Territory' and party_name ='Khan Traders (Alu)';
 

CREATE TABLE "TEST_SALES_REPORT_v2" 
   (	
	"VOUCHER_DATE" Date,	
	"TERRITORY" VARCHAR2(60), 
	"SALESMAN" VARCHAR2(60), 
	"PARTY_CODE" VARCHAR2(60), 
	"PARTY_NAME" VARCHAR2(120), 
	"CUST_CATEGORY" VARCHAR2(60), 
	"PARTY_TYPE" VARCHAR2(60), 
	"DEPARTMENT" VARCHAR2(120), 
	"SUB_DEPARTMENT" VARCHAR2(164), 
	"CATEGORY" VARCHAR2(60), 
	"SUB_CATEGORY" VARCHAR2(60), 
	"PRODUCT_CODE" VARCHAR2(60), 
	"PRODUCT_NAME" VARCHAR2(164), 
	"BRANCH" VARCHAR2(60), 
	"T_QTY" DECIMAL(20, 2), 
	"RPU" DECIMAL(20, 2), 
	"G_TOTAL"DECIMAL(20, 2), 
	"GENERAL_DISCOUNT" DECIMAL(20, 2), 
	"TRADE_DISCOUNT" DECIMAL(20, 2), 
	"NET_SALES" DECIMAL(20, 2)
   );
   
   truncate table TEST_SALES_REPORT;
   
   drop table TEST_SALES_REPORT;
   
commit;
   
select territory,party_name, t_qty
    from TEST_SALES_REPORT
    where territory ='Jessore-1 Territory' and party_name ='Khan Traders (Alu)';
    
-------------------

 SELECT 
    territory, 
    party_name,
    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)) AS Total_Gross
FROM 
    test_sales_report
GROUP BY 
    territory, 
    party_name
UNION ALL
SELECT 
    territory,
    'Total' AS party_name,    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)) AS Total_Gross
FROM 
    test_sales_report
GROUP BY 
    territory
ORDER BY 
    territory, 
    party_name;
    
    
    
    
    
   -------------------
   
   
SELECT 
    territory, 
    party_name,
    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,    
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)) AS Total_Gross
FROM 
    test_sales_report
GROUP BY 
    territory, 
    party_name
UNION ALL
-- Adding totals by territory
SELECT 
    territory,
    'Total' AS party_name,    
    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)) AS Total_Gross
FROM 
    test_sales_report
GROUP BY 
    territory
-- Adding the grand total at the bottom
UNION ALL
SELECT 
    'Grand Total' AS territory,
    'Grand Total' AS party_name,
    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)) AS Total_Gross
FROM 
    test_sales_report
ORDER BY 
    territory, 
    party_name;

select first_name, id from test_user;

SELECT 
    first_name, 
    id 
FROM 
    test_user
UNION ALL
-- Adding Grand Total row
SELECT 
    'Grand Total' AS first_name, 
    sum(id) AS id
FROM 
    test_user;



SELECT 
    territory, 
    COALESCE(party_name, 'TOTAL') AS party_name,  -- Null values will be replaced with 'TOTAL'
    SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) AS Aluminum_Qty,
    SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END) AS Aluminum_Gross,
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) AS Anodize_Qty,
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END) AS Anodize_Gross,
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END) AS Blender_Qty,
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END) AS Blender_Gross,    
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)) AS Total_Gross
FROM 
    test_sales_report
GROUP BY 
    ROLLUP (territory, party_name)
ORDER BY 
    territory, 
    party_name;
    
    
    
    
    -------------
    
    
  SELECT 
    territory, 
    COALESCE(party_name, 'TOTAL') AS party_name,
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
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END) AS Flask_Qty,
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END) AS Flask_Gross,
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
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN g_total ELSE 0 END) AS Steel_Pcs_Gross,
    (SUM(CASE WHEN department = 'Aluminum' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Anodize' THEN t_qty ELSE 0 END) +
    SUM(CASE WHEN department = 'Blender' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Electric Iron' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Food Pot' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Flask' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Gas Stove' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Induction Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Kettle' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Nonstick Gift Box' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Others' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Packing Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Polish Hari (Pcs)' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Raw Materials' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Rice Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'SS Pressure Cooker' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Spoon and Knife' THEN t_qty ELSE 0 END)+
    SUM(CASE WHEN department = 'Steel (Pcs)' THEN t_qty ELSE 0 END)) AS Total_Qty,
    (SUM(CASE WHEN department = 'Aluminum' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Anodize' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Blender' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Cast Aluminum (Karai)' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Ceramic Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Die Casting Gift Box' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Electric Iron' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Food Pot' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Flask' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Gas Stove' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Induction Cooker' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Kettle' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick' THEN g_total ELSE 0 END)+ 
    SUM(CASE WHEN department = 'Non Stick Ceramic' THEN g_total ELSE 0 END)+ 
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
GROUP BY 
    ROLLUP (territory, party_name)
ORDER BY 
    territory, 
    party_name;
