use supply_chain_project;
-- UPDATE sales 
-- SET Description = 'Description Unavailable' 
-- WHERE Description LIKE '?%' OR Description = '';

SELECT DISTINCT Description FROM sales ORDER BY Description ASC LIMIT 20;