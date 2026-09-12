CREATE DATABASE supply_chain_project;
USE supply_chain_project;

CREATE TABLE sales (
    Invoice VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    Price DECIMAL(10,2),
    Customer_ID VARCHAR(20),
    Country VARCHAR(50)
);

CREATE TABLE supplier_performance (
    PO_Number VARCHAR(20),
    SKU VARCHAR(20),
    Supplier_Name VARCHAR(100),
    Expected_Delivery_Date DATE,
    Actual_Delivery_Date DATE,
    Qty_Ordered INT,
    Qty_Received INT,
    Defect_Qty INT
);

CREATE TABLE cycle_counts (
    Count_Date DATE,
    SKU VARCHAR(20),
    System_Qty INT,
    Physical_Qty INT
);