use supply_chain_project;
DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    Invoice VARCHAR(50),
    StockCode VARCHAR(50),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate VARCHAR(50),  -- Changed from DATETIME to bypass date errors
    Price DECIMAL(10,2),
    Customer_ID VARCHAR(50),
    Country VARCHAR(50)
);

