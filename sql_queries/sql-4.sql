use supply_chain_project;
-- ALTER TABLE sales ADD COLUMN Clean_InvoiceDate DATETIME;

-- UPDATE sales
-- SET Clean_InvoiceDate = STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i');

-- SELECT InvoiceDate, Clean_InvoiceDate FROM sales LIMIT 10;

ALTER TABLE sales DROP COLUMN InvoiceDate;
ALTER TABLE sales RENAME COLUMN Clean_InvoiceDate TO InvoiceDate;