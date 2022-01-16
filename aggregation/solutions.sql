/*
	Aggregation Problems
    https://joequery.me/notes/sql-aggregation-functions/
    
    Database dump available at the database_setup.sql file
*/

/* === 1 === */
SELECT
	COUNT(pr.prod_id) AS 'Count_of_Bean_Bag_Toys'
FROM 
	products pr
WHERE
	pr.prod_name LIKE '%bean bag toy%';

/* === 2 === */
SELECT
	COUNT(ct.cust_id) AS 'Customers_Without_Email'
FROM
	customers ct
WHERE
	cts.cust_email IS NULL; 

/* === 3 === */
SELECT
	AVG(pr.prod_price) AS 'Average_Price_of_12_inch_Products'
FROM
	products pr
WHERE
	pr.prod_desc LIKE '%12 inch%';

/* === 4 === */
SELECT
	(MAX(pr.prod_price) * 100) AS '100x_of_Most_Expensive_Product'
FROM
	products pr;

/* === 5 === */
SELECT
	(SUM(prod_price) * 10) AS '10x_of_3_Most_Expensive_Products'
FROM (
		SELECT DISTINCT 
			prod_price
		FROM 
			products
		ORDER BY 
			prod_price DESC 
		LIMIT 3
	) AS highest_prices;

/* === 6 === */
SELECT
	COUNT(v.vend_id) AS 'Count_of_Incorporated_Vendors'
FROM
	vendors v
WHERE
	v.vend_name LIKE '%Inc.';