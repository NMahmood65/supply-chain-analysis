use supply_chain_project;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 26.7/Uploads/sales.csv'
INTO TABLE sales
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;