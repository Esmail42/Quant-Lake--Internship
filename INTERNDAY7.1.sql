use chinook;
  # --Task 2: SELECT Queries --
  
SELECT * 
FROM EMPLOYEE;
SELECT * 
FROM CUSTOMER;
SELECT * 
FROM INVOICE;
SELECT *
FROM INVOICELINE;
SELECT FirstName, LastName, Country FROM customer;

#-- Task 3: Filtering with WHERE --
SELECT * 
FROM invoice 
WHERE Total > 10;
SELECT * 
FROM CUSTOMER
WHERE COUNTRY ='CANADA';
SELECT *
 FROM CUSTOMER
 WHERE FIRSTNAME LIKE 'S%';
 SELECT * 
 FROM INVOICE
 WHERE INVOICEDATE BETWEEN '2009-01-01'  AND  '2010-01-01';
SELECT * 
FROM CUSTOMER
WHERE COUNTRY IN ('USA', 'Germany');
    #-- Task 4: Sorting and Limiting --
SELECT * FROM INVOICE
ORDER BY TOTAL DESC 
LIMIT 70;
SELECT * FROM EMPLOYEE 
ORDER BY  EMPLOYEEID ASC
LIMIT 77;
SELECT COUNT(*) AS TOTALINVOICES
 FROM INVOICE;
 SELECT *
 FROM EMPLOYEE
 WHERE FIRSTNAME LIKE 'A%';
#-- Task 5: Basic Aggregations --
 SELECT COUNT(*) 
 FROM EMPLOYEE
 WHERE REPORTSTO=2;
 SELECT SUM(Total) AS TotalRevenue 
 FROM INVOICE;
 SELECT COUNT(*)
 FROM CUSTOMER
 WHERE COUNTRY='SP';
 SELECT BILLINGCOUNTRY, SUM(Total) AS CountrySales
FROM INVOICE
GROUP BY BILLINGCOUNTRY
ORDER BY CountrySales;
SELECT Country, COUNT(*) 
FROM CUSTOMER
GROUP BY COUNTRY;
SELECT COUNT(*), SUM(QUANTITY) 
FROM INVOICELINE;

-- PRATICE QUERIES--
SELECT FIRSTNAME
FROM CUSTOMER
WHERE COUNTRY='BRAZIL';
SELECT FIRSTNAME,LASTNAME
FROM EMPLOYEE;
SELECT * 
FROM INVOICE;
SELECT MAX(BILLINGSTATE)
FROM INVOICE;
SELECT COUNT(*)
FROM CUSTOMER 
GROUP BY COUNTRY 
ORDER BY COUNTRY ASC;
SELECT *
FROM CUSTOMER
ORDER BY EMAIL ASC
LIMIT 10;
