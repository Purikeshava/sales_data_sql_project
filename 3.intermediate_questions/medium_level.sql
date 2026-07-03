use sales_data;
select * from products;
select * from customers; 
select * from orders;

     -- INTERMEDIATE SQL QUESTIONS --
     
-- Q1. How many customers are from each country?
select country,count(customerid) as total_customers from Customers
group by country;

-- Q2. How many products are in each category?
select `Category`,count(*) as total_products from Products
group by `category`;

-- Q3. Average price of each category.
select `Category`,avg(`Price`) as avg_price 
from Products 
group by category;

-- Q4. Maximum product price in each category.
select `Category`,max(`Price`) as max_price 
from Products 
group by category;

-- Q5. Total stock available in each category.
select `Category`,sum(`StockQuantity`) as total_stock 
from Products
group by Category;
select * from Products;

-- Q6. Show categories having more than 3 products.
select `Category`,count(*) as total_products from Products 
group by category
having count(*)>3;

-- Q7. Countries having more than 20 customers.
select `Country`,count(*) as total_customers 
from Customers 
group by country
having count(*) > 20;

-- Q8.Categorize products as Expensive, Medium, Cheap using case.
select `ProductName`,`Price` ,
case 
when price >= 60 then 'expensive'
when price >= 45  then 'medium'
else 'cheap'
end as type_of_product
from Products;

-- Q9. Classify customers as VIP, Premium, Regular.
select `CustomerName`,`CustomerSegment`, 
case 
when CustomerSegment = 'vip' then 'vip'
when CustomerSegment = 'premium' then 'premium'
else 'regular' 
end as customer_type
from Customers;

-- Q10. Orders placed in 2025.
select `OrderID`,`ProductName`,`OrderDate` 
from Orders 
where `OrderDate` between '2025-01-01' and '2025-12-30'
order by `OrderDate`;

-- Q11. Orders placed in March.
select `OrderID`,`ProductName`,`OrderDate` 
from Orders 
where month(`OrderDate`) = 3;

-- Q12. Newest customer.
select *from customers
order by signupdate desc
limit 1;

-- Q13. Oldest customer.
select *from customers
order by signupdate asc
limit 1;

-- Q14. Find customers whose name starts with A.
select * from Customers
where `customername` like 'A%';

-- Q15. Average rating of products.
select avg(rating) as average_rating
from products;

-- Q16. find the total quantity generated from all orders.
select `Category`,sum(quantity) as total_quantity
from orders
group by category;

-- Q17. find the average product price in each category.
select category,
round(avg(price), 2) as average_price
from products
group by category;

-- Q18. find the highest and lowest product price in each category.
select category,
max(price) as highest_price,
min(price) as lowest_price
from products
group by category;

-- Q19. find the total number of products in each supplier country.
select suppliercountry,
count(*) as total_products
from products
group by suppliercountry;

-- Q20. find the minimum unit price for each product category.
select category,
min(unitprice) as minimum_price
from orders
group by category;

           -- END --

 


