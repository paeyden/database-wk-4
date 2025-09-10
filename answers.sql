# Query to show Display the **payment date** and the **total amount** paid on that date.  
#- Sort the results by **payment date in descending order**.  
#- Show only the **top 5 latest payment dates**. 

SELECT 
    paymentDate, 
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


# question 2
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

# question 3
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

# question 4
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;
