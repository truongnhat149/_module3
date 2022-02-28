-- THUC HANH CHI MUC TRONG SQL
-- SELECT *
-- FROM customers 
-- WHERE CUSTOMERNAME = 'Land of Toys Inc.';


-- EXPLAIN SELECT *
-- FROM CUSTOMERS 
-- WHERE CUSTOMERNAME = 'Land of Toys Inc.';

-- ALTER TABLE CUSTOMERS ADD INDEX idx_customerName(customerName);
-- EXPLAIN SELECT *
-- FROM CUSTOMERS 
-- WHERE CUSTOMERNAME = 'Land of Toys Inc.';

-- ALTER TABLE customers
-- ADD INDEX idx_full_name(contactFirstName, contactLastName);
-- EXPLAIN SELECT *
-- FROM CUSTOMERS 
-- WHERE CONTACTFIRSTNAME = 'Jean' OR contactFirstName = 'King';

-- ALTER TABLE CUSTOMERS DROP INDEX idx_full_name;