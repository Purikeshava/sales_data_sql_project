use sales_data;

       -- BASIC-LEVEL QUESTIONS --

-- Q1. Display all products.
select * from products;

-- Q2. Display all customers.
select * from customers; 

-- Q3. Display all orders.
select * from orders;

-- Q4. Show only customerid,customername,city from customers.
select `customerid`, `customername`,`city` 
from customers;

-- Q5. Show customers only from India.
select `customerid`,`customername`,`country` 
from customers
where `country` = 'india';

-- Q6. Show products costing more than $50.
select `productid`,`productname`,`price` 
from Products 
where `price` >50;

-- Q7. Show products sorted by highest price.
select * from Products 
order by price desc;

-- Q8. Show first 10 orders.
select * from Orders
limit 10;

-- Q9. Find products with StockQuantity less than 100.
select * from Products 
where `StockQuantity`< 100;

-- Q10. Show customers who signed up in 2025.
select * from Customers
where `SignupDate` between '01-01-2025' and '30-12-2025';

-- Q11. Display unique countries.
select distinct(`Country`) from Customers;

-- Q12. Count total customers.
select count(`CustomerID`) from Customers;

-- Q13. Count total orders.
select count(`OrderID`) from Orders;

-- Q14. Find highest priced product.
select * from Products 
order by `price` 
limit 1;

-- Q15. Find lowest priced product.
select * from Products 
order by `price` asc 
limit 1;

               -- END --



