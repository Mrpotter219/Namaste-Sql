--creating a table
CREATE TABLE Amazon_orders(
Order_id INTEGER,
Order_Date DATE,
Product_Name VARCHAR(30),
Total_price DECIMAL(5,2),
Payment_Method VARCHAR(20)
);

--inserting values inside table
INSERT INTO Amazon_orders VALUES(1,'2024-05-31','Hand Wash',22.50,'UPI');
INSERT INTO Amazon_orders VALUES(2,'2024-05-31','Face Wash',50.00,'COD');
INSERT INTO Amazon_orders VALUES(3,'2024-06-1','Soap',20.10,'UPI');
INSERT INTO Amazon_orders VALUES(4,'2024-06-2','Pen',100,'COD');

--viewing full table
SELECT * FROM Amazon_orders;

--viewing particyular columns
SELECT Order_id, Order_Date, Product_Name FROM Amazon_orders;

--viewing selected rows 
SELECT TOP 2 * FROM Amazon_orders;

--sorting 
SELECT * FROM Amazon_orders ORDER BY Total_Price;

--deleting the table
DROP TABLE amazon_orders;

--delete all records from the table, not table stru
DELETE FROM amazon_orders;


/* DDL: Data Defination language
        anything related to table structure such as CREATE, DROP

   DML: Data manipulation language
        Anything related to the table values such as INSERT, DELETE

   DCL: Data Query language
        Changing nothing but only showing the values such as SELECT
*/


--creating tables in new schema
CREATE TABLE hr.test(
	id INTEGER,
	name VARCHAR(10)
);

INSERT INTO hr.test VALUES(1,'sanket');
INSERT INTO hr.test VALUES(2,'gaurav');

SELECT * FROM hr.test;


--putting values from exixting schema table into new schema tables
CREATE TABLE sales.test(
	id INTEGER,
	name VARCHAR(10)
);

INSERT INTO sales.test
SELECT * FROM hr.test;

SELECT * FROM sales.test;
