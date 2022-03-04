use classicmodels;

CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM customers;

SELECT * FROM
customer_views;

CREATE OR REPLACE VIEW customer_view2 AS
SELECT orderNumber, productCode
FROM orderdetails

CREATE OR REPLACE view customer_view2 AS
SELECT orderNumber, productCode, priceEach, orderLineNumber
FROM orderDetails
WHERE orderLineNumber = 3;

select *
from customer_view;
drop view customer_view2;
drop view customer_view;
 