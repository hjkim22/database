USE classicmodels;

-- SELECT * FROM customers;

-- SELECT * FROM products WHERE productLine = 'Classic Cars';

-- SELECT * FROM orders ORDER BY orderDate DESC LIMIT 10;

-- SELECT * FROM payments WHERE amount >= 100;

-- ------------------------------------------------------

-- SELECT o.orderNumber, c.customerName FROM orders o JOIN customers c ON o.customerNumber = c.customerNumber;

-- SELECT p.productName, p.productLine, pl.textDescription FROM products p JOIN productlines pl ON p.productLine = pl.productLine;

-- SELECT e1.employeeNumber, e1.firstName, e1.lastName, e2.firstName AS 'ManagerFirstName', e2.lastName AS 'ManagerLastName'
-- FROM employees e1
-- LEFT JOIN employees e2 ON e1.reportsTo = e2.employeeNumber;

-- SELECT e.employeeNumber, e.lastName, e.firstName, e.extension, e.email, e.officeCode, e.reportsTo, e.jobTitle
-- FROM employees e
-- JOIN offices o ON e.officeCode = o.officeCode
-- WHERE o.city = 'San Francisco';

-- ------------------------------------------------------------------------

-- SELECT productLine, COUNT(*) AS productCount
-- FROM products
-- GROUP BY productLine;

-- SELECT customers.customerNumber, 
--        customers.customerName, 
--        SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS totalAmount
-- FROM customers
-- JOIN orders ON customers.customerNumber = orders.customerNumber
-- JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
-- GROUP BY customers.customerNumber, customers.customerName;

-- SELECT productName, SUM(quantityOrdered) AS totalQuantity
-- FROM orderdetails od
-- JOIN products p ON od.productCode = p.productCode
-- GROUP BY productName
-- ORDER BY totalQuantity DESC
-- LIMIT 1;

-- SELECT o.city, SUM(od.quantityOrdered * od.priceEach) AS totalSales
-- FROM orders ord
-- JOIN orderdetails od ON ord.orderNumber = od.orderNumber
-- JOIN customers c ON ord.customerNumber = c.customerNumber
-- JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
-- JOIN offices o ON e.officeCode = o.officeCode
-- GROUP BY o.city
-- ORDER BY totalSales DESC
-- LIMIT 1;

-- ------------------------------------------------------------------------

-- SELECT orderNumber, SUM(quantityOrdered * priceEach) AS totalAmount
-- FROM orderdetails
-- GROUP BY orderNumber
-- HAVING totalAmount > 500;

-- SELECT customerNumber, SUM(amount) AS totalPayment
-- FROM payments
-- GROUP BY customerNumber
-- HAVING totalPayment > (SELECT AVG(amount) FROM payments);

-- SELECT customerName
-- FROM customers
-- WHERE customerNumber NOT IN (SELECT customerNumber FROM orders);

-- SELECT c.customerName, SUM(od.quantityOrdered * od.priceEach) AS totalSpent
-- FROM customers c
-- JOIN orders o ON c.customerNumber = o.customerNumber
-- JOIN orderdetails od ON o.orderNumber = od.orderNumber
-- GROUP BY c.customerName
-- ORDER BY totalSpent DESC
-- LIMIT 1;

-- ------------------------------------------------------------------------

-- INSERT INTO customers (customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit)
-- VALUES ('New Customer', 'Lastname', 'Firstname', '123-456-7890', '123 Street', 'Suite 1', 'City', 'State', 'PostalCode', 'Country', 1002, 50000.00);

-- UPDATE products
-- SET buyPrice = buyPrice * 1.10
-- WHERE productLine = 'Classic Cars';

-- UPDATE customers
-- SET email = 'newemail@example.com'
-- WHERE customerNumber = 103;

-- UPDATE employees
-- SET officeCode = '2'
-- WHERE employeeNumber = 1002;


