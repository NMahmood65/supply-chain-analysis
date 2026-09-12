USE supply_chain_project;

CREATE OR REPLACE VIEW v_supplier_metrics AS
SELECT 
    PO_Number,
    SKU,
    Supplier_Name,
    Expected_Delivery_Date,
    Actual_Delivery_Date,
    Qty_Ordered,
    Qty_Received,
    Defect_Qty,
    DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) AS Lead_Time_Variance_Days,
    CASE WHEN Actual_Delivery_Date <= Expected_Delivery_Date 
         AND Qty_Ordered = Qty_Received THEN 1 ELSE 0 END AS Is_OTIF
FROM supplier_performance;

CREATE OR REPLACE VIEW v_inventory_accuracy AS
SELECT 
    Count_Date,
    SKU,
    System_Qty,
    Physical_Qty,
    (System_Qty - Physical_Qty) AS Variance_Qty,
    ROUND((1 - (ABS(System_Qty - Physical_Qty) / NULLIF(System_Qty, 0))) * 100, 2) AS Inventory_Record_Accuracy_Pct
FROM cycle_counts;