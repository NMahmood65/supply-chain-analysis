use supply_chain_project;
-- Remove double quotes
UPDATE sales 
SET Description = REPLACE(Description, '"', '');

-- Trim leading and trailing spaces
UPDATE sales 
SET Description = TRIM(Description);

-- Remove leading asterisks
UPDATE sales 
SET Description = TRIM(LEADING '*' FROM Description);