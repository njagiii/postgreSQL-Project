-- CREATE schema assignment
CREATE SCHEMA assignment;
show search_path;
set search_path to assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE assignment.customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE assignment.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE assignment.sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE TABLE assignment.inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO assignment.customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from customers;

-- Inserting data into assignment.Products table
INSERT INTO assignment.products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from products;

-- Inserting data into assignment.Sales table
INSERT INTO assignment.sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO assignment.inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM customers;

-- Select all data from assignment.Products table
SELECT * from products;

-- Select all data from assignment.Sales table
SELECT * FROM sales;

-- Select all data from assignment.Inventory table
SELECT * FROM inventory;



-- 1. Write a query to select all data from the `Customers` table.
select * from customers;

-- 2. Write a query to select the total number of products from the `Products` table.
select count(*) as total_no_of_products from products; 

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select product_name, price from products
where price > 500;

-- 4. Write a query to find the average price of all products from the `Products` table.
select avg(price) as average_price from products;

-- 5. Write a query to find the total sales amount from the `Sales` table.
select sum(total_amount) as total_sales from sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select distinct membership_status from customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select first_name, last_name, concat("first_name",' ',"last_name") as full_name 
from customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select product_name, category from products
where category ilike 'electronics';

-- 9. Write a query to find the highest price from the `Products` table.
select product_name, price from products
where price = (select max(price) from products);

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
select product_id, count(*) as total_no_of_sales from sales
group by product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select product_id, sum(quantity_sold) as total_quantity_sold from sales
group by product_id;

-- 12. Write a query to find the lowest price of products in the `Products` table.
select product_name, price from products
where price = (select min(price) from products);

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select first_name, last_name, price from customers c
join sales s
on s.customer_id=c.customer_id
join products p
on s.product_id=p.product_id
where price > 1000;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and select the product name and total sales amount.
select product_name, sum(total_amount) from products p 
join sales s
on s.product_id = p.product_id
group by product_name;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select first_name, last_name, sum(total_amount) from customers c
join sales s
on s.customer_id=c.customer_id
group by first_name, last_name;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select first_name, last_name, product_name, quantity_sold from customers c
join sales s
on s.customer_id=c.customer_id
join products p
on s.product_id = p.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select product_name, sum(quantity_sold) from products p
join sales s
on s.product_id = p.product_id
group by product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select product_name from products 
where stock_quantity < 10; 

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with sales greater than 5.
select product_name, quantity_sold from sales s
join products p
on p.product_id = s.product_id
where quantity_sold > 5;

-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select first_name, last_name, category from customers c
join sales s
on s.customer_id = c.customer_id
join products p
on p.product_id = s.product_id
where category in ('Electronics' ,'Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select product_name, sum(total_amount) from products p
join sales s
on s.product_id = p.product_id
group by product_name;

-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select first_name, last_name, sale_date from customers c 
join sales s
on s.customer_id = c.customer_id
where extract(year from sale_date) = '2023';

-- 24. Write a query to find the customers with the highest total sales in 2023.
select first_name, last_name, sum(total_amount) as total_sales from customers c 
join sales s
on s.customer_id = c.customer_id
where extract(year from sale_date) = '2023'
group by first_name, last_name 
order by total_sales desc
limit 5;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
select product_name, price from products p
join sales s
on s.product_id = p.product_id
where price = (select max(price) from products p);

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
select count(*) from sales s
join products p
on s.product_id = p.product_id
where price > 500;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
select product_name, membership_status, sum(total_amount) from customers c
join sales s
on s.customer_id = c.customer_id
join products p
on p.product_id = s.product_id
where membership_status ilike 'gold'
group by product_name, membership_status;

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
select product_name, i.stock_quantity from products p
join inventory i 
on i.product_id = p.product_id
where i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
select s.customer_id, count(*) as total_purchases from sales s
join products p
on p.product_id = s.product_id 
join customers c
on s.customer_id = c.customer_id
group by s.customer_id
having count(*)>5;

-- 30. Write a query to find the average quantity sold per product.
select product_name, avg(quantity_sold) from products p
join sales s
on s.product_id = p.product_id
group by product_name;

-- 31. Write a query to find the number of sales made in the month of December 2023.
select count(*) as no_of_sales_in_Dec_2023 from sales
where extract(month from sale_date) = '12' and extract(year from sale_date) ='2023';

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
select first_name, last_name, sum(total_amount) as amount_spent from customers c
join sales s
on s.customer_id = c.customer_id
where extract(year from sale_date) = '2023'
group by first_name, last_name 
order by amount_spent desc;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select product_name, stock_quantity, quantity_sold from products p
join sales s
on s.product_id = p.product_id
where stock_quantity < 5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select product_name, sum(total_amount) as total_sales from products p
join sales s
on s.product_id = p.product_id
group by product_name 
order by total_sales desc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select first_name, last_name, total_amount from customers c
join sales s
on s.customer_id = c.customer_id
where sale_date between registration_date and registration_date + interval '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
select product_name, price, quantity_sold from products p
join sales s
on s.product_id = p.product_id
where price between 100 and 500;

-- 37. Write a query to find the most frequent customer who made purchases from the `Sales` table.
select customer_id, count(*) as total_purchases from sales
group by customer_id
order by total_purchases desc;

-- 38. Write a query to find the total quantity of products sold per customer.
select first_name, last_name, sum(quantity_sold) as total_quantity_sold from customers c
join sales s
on s.customer_id = c.customer_id
where s.customer_id = c.customer_id
group by first_name, last_name;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.
select product_name, stock_quantity
from products 
where stock_quantity = (select max(stock_quantity)from products)
union
select product_name, stock_quantity
from products 
where stock_quantity = (select min(stock_quantity)from products)
order by stock_quantity desc;


-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select product_name, sum(total_amount) as total_sales from products p
join sales s
on s.product_id=p.product_id
where product_name ilike '%phone%'
group by product_name;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select first_name, last_name, membership_status, sum(total_amount) as total_sales
from customers c
join sales s
on c.customer_id = s.customer_id
where membership_status ilike 'gold'
group by first_name, last_name, membership_status;

-- 42. Write a query to find the total sales of products by category.
select category, sum(total_amount) as total_sales
from sales s
join products p
on s.product_id = s.product_id
group by category;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select product_name,
extract(year from sale_date) as sale_year,
extract (month from sale_date) as sale_month,
sum(total_amount) as total_sales
from products p
join sales s 
on p.product_id = s.product_id
group by product_name, sale_year, sale_month
order by sale_year desc, sale_month desc;

-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select s.product_id,sale_id, stock_quantity from sales s
join inventory i 
on i.product_id = s.product_id
where stock_quantity > 0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select first_name, last_name, total_amount from customers c
join sales s
on s.customer_id = c.customer_id
order by total_amount desc limit 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
select distinct count(*) from sales
where extract(year from sale_date) = '2023';

-- 47. Write a query to find the products that have not been sold in the last 6 months.
select product_name,sale_date from sales s
join products p
on p.product_id = s.product_id
where sale_date not between (select max(sale_date) - interval '6 months' from sales) 
and (select max(sale_date) from sales);

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select product_name, price, quantity_sold from products p
join sales s
on p.product_id = s.product_id
where price between 200 and 800;

-- 49. Write a query to find the customers who spent the most money in the year 2023.
select first_name, last_name,total_amount from customers c 
join sales s
on c.customer_id=s.customer_id
where extract(year from sale_date) = '2023' and 
total_amount = (select max(total_amount) from sales);

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
select s.product_id, count(*) as times_sold from sales s
join products p
on p.product_id = s.product_id
where (select count(*) from sales) < 100 and price > 200
group by s.product_id;

-- 51. Which customers have spent more than the average spending of all customers?
select first_name, last_name, total_amount from customers c
join sales s
on c.customer_id = s.customer_id
where total_amount > (select avg(total_amount) from sales s);

-- 52. Which products are priced higher than the average price of all products?
select product_name from  products
where price > (select avg(price) from products);

-- 53. Which customers have never made a purchase?

select first_name, last_name, s.customer_id 
from (select customer_id, first_name, last_name from customers c) as customer_table
left join sales s
on customer_table.customer_id = s.customer_id
where s.customer_id is null;

-- 54. Which products have never been sold?

select product_name, s.product_id from 
(select product_id, product_name from products p) as product_details
left join sales s
on product_details.product_id = s.product_id
where s.product_id is null;

-- 55. Which customer made the single most expensive purchase?
select first_name, last_name, price from customers c
join sales s
on s.customer_id=c.customer_id
join products p
on s.product_id = p.product_id
where price = (select max(price) from products);

-- 56. Which products have total sales greater than the average total sales across all products?
select product_name, total_amount from products p
join sales s
on s.product_id = p.product_id
where total_amount > (select avg(total_amount) from sales)
order by total_amount desc;

-- 57. Which customers registered earlier than the average registration date?
select first_name, last_name, registration_date from customers
where registration_date < (select to_timestamp (avg(extract(epoch from registration_date))) from customers);

-- 58. Which products have a price higher than the average price within their own category?

select
    product_id, product_name, category, price
from (
select product_id, product_name, category, price,
        AVG(price) OVER (PARTITION BY category) AS avg_category_price
    from products
) as categorized
where price > avg_category_price;
--or
select
    p.product_id,
    p.product_name,
    p.category,
    p.price
from products p
join (
    select category, avg(price) as avg_category_price
    from products
    group by category
) as category_avg
on p.category = category_avg.category
where p.price > category_avg.avg_category_price;


-- 59. Which customers have spent more than the customer with ID = 10?
select s.customer_id, first_name, last_name, total_amount from customers c
join sales s
on c.customer_id = s.customer_id
where total_amount > (select total_amount from sales s where s.customer_id = 10);

-- 60. Which products have total quantity sold greater than the overall average quantity sold?
select product_name, quantity_sold from sales s
join (select product_id, sum(quantity_sold) from sales
group by product_id) as total_quant
on total_quant.product_id = s.product_id
join products p
on p.product_id = s.product_id
where total_quant.sum > (select avg(quantity_sold) from sales s);

-- =====================================================
-- COMMON TABLE EXPRESSIONS (CTEs)
-- =====================================================

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with amount_spent as 
(select customer_id, 
sum(total_amount) as total_spent from sales 
group by customer_id)
select first_name,last_name, total_spent from amount_spent a
join customers c
on c.customer_id = a.customer_id
order by a.total_spent desc limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with quantity_sold as 
(select 
product_id, 
sum(quantity_sold) as total_sold from sales
group by product_id)
select product_name,total_sold from quantity_sold q
join products p
on p.product_id = q.product_id
order by total_sold desc limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
with category_sale as (select category, sum(total_amount) as total_sales from sales s
join products p 
on s.product_id = p.product_id
group by category)
select category, total_sales from category_sale 
order by total_sales desc
limit 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with customer_purchases as (select first_name, last_name, count(*) as no_of_purchases
from sales s
join customers c
on s.customer_id = c.customer_id
group by first_name, last_name)
select first_name, last_name, no_of_purchases from customer_purchases 
where no_of_purchases > 2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with quantity_sold_t as (select product_name, sum(quantity_sold) as total_q from sales s
join products p
on s.product_id = p.product_id
group by product_name)
select product_name, total_q from quantity_sold_t 
where total_q > (select avg(quantity_sold) from sales s);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with total_spending as (select first_name, last_name, sum(total_amount) as total_spent from sales s 
join customers c
on c.customer_id = s.customer_id
group by first_name, last_name)
select first_name, last_name, total_spent  from total_spending 
where total_spent > (select avg(total_amount) from sales s);

-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with revenue_per_product as (select product_name, sum(total_amount) as product_revenue from sales s
join products p
on p.product_id = s.product_id
group by product_name)
select product_name, product_revenue from revenue_per_product 
order by product_revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.

with monthly_sales as 
(select extract(month from sale_date) as month_of_sale, sum(total_amount) as total_sales from sales s
group by month_of_sale)
select month_of_sale, total_sales from monthly_sales 
order by monthly_sales.total_sales desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with sales_per_product as (select product_name, s.product_id, count(*) as total_purchases from sales s
join products p
on p.product_id = s.product_id
group by product_name, s.product_id)
select product_name, total_purchases from sales_per_product 
where total_purchases > 3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.
with quantity_sold_t as (select product_name, sum(quantity_sold) as total_q from sales s
join products p
on s.product_id = p.product_id
group by product_name)
select product_name, total_q from quantity_sold_t 
where total_q < (select avg(quantity_sold) from sales s);

-- =====================================================
-- WINDOW FUNCTION QUESTIONS
-- =====================================================

-- 71. Rank customers based on the total amount they have spent.
select first_name, last_name, sum(total_amount), rank() over (order by sum(total_amount) desc) as rank_
from customers c
join sales s
on s.customer_id = c.customer_id
group by first_name, last_name;

-- 72. Rank products based on total quantity sold.
select product_name, sum(quantity_sold), rank() over (order by sum(quantity_sold) desc)
from products p
join sales s
on s.product_id = p.product_id
group by product_name;

-- 73. Identify the 3rd highest spending customer.
with spending_rank as (select customer_id, sum(total_amount), rank() 
over (order by sum(total_amount) desc) as rank from sales
group by customer_id)
select first_name, last_name from spending_rank s
join customers c 
on c.customer_id = s.customer_id
where rank = 3;

-- 74. Identify the 2nd most expensive product.

with product_ranking as (select product_name, price, 
rank() over (order by price desc) as rank from products)
select product_name, price from product_ranking 
where rank = 2;

-- 75. Show the ranking of products within each category based on price.
select product_name, price, category, 
rank() over (partition by category order by price desc) 
from products

-- 76. Show the ranking of customers based on the number of purchases they made.
select first_name, last_name, count(*), rank() over (order by count(*) desc) as ranking
from sales s
join customers c
on s.customer_id = c.customer_id
group by first_name, last_name;

-- 77. Show the running total of sales amounts ordered by sale_date.
select sum(total_amount),sale_date, rank() over (order by sale_date desc)
from sales
group by sale_date;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select sale_id,sale_date, total_amount, 
lead(total_amount) over (order by sale_date desc) as previous_sale_amt
from sales;

-- 79. Show the next sale amount for each sale ordered by sale_date.
select sale_id,sale_date, total_amount, 
lag(total_amount) over (order by sale_date desc) as next_sale_amt
from sales;

-- 80. Divide customers into 4 groups based on total spending.
select first_name, last_name, sum(total_amount) as total_spending, 
ntile(4) over (order by sum(total_amount) desc) as customer_group from sales s
join customers c
on c.customer_id = s.customer_id
group by first_name, last_name;

-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
select s.product_id, category from sales s
join products p
on p.product_id = s.product_id;

select
first_name, last_name,
c.customer_id,
s.product_id,
category,
count(distinct category) as category_count
from sales s
join products p 
on s.product_id = p.product_id
join customers c 
on s.customer_id = c.customer_id
group by c.customer_id, first_name, last_name, s.product_id, category
having count (distinct category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
select first_name, last_name, registration_date, sale_date from customers c
join sales s
on s.customer_id = c.customer_id
where sale_date between registration_date and registration_date + interval '7 days';

-- 83. Which products have lower stock remaining than the average stock quantity?
select product_name, stock_quantity from products
where stock_quantity < (select avg(stock_quantity) from products);

-- 84. Which customers purchased the same product more than once?
select first_name, s.customer_id, product_name, s.product_id, count(*)
from sales s
join customers c 
on c.customer_id = s.customer_id
join products p 
on p.product_id = s.product_id
group by s.customer_id, s.product_id, first_name, product_name
having count(*) > 1;

-- 85. Which product categories generated the highest total revenue?
select category, sum(total_amount) from sales s
join products p
on p.product_id = s.product_id
group by category
order by sum(total_amount) desc;

-- 86. Which products are among the top 3 most sold products?
select product_name, sum(quantity_sold) as total_quantity_sold from sales s
join products p
on s.product_id = p.product_id
group by product_name
order by total_quantity_sold desc
limit 3;

-- 87. Which customers purchased the most expensive product?
select first_name, last_name, product_name, price from customers c
join sales s
on c.customer_id = s.customer_id
join products p
on p.product_id = s.product_id
where price = (select max(price) from products);

-- 88. Which products were purchased by the highest number of unique customers?

select p.product_id, product_name, count(distinct s.customer_id) as unique_customers
from products p
join sales s 
on p.product_id = s.product_id
group by p.product_id, p.product_name
order by  unique_customers desc
LIMIT 1;

-- 89. Which customers made purchases above the average sale amount?
select first_name, last_name, sum(total_amount) from sales s
join customers c
on c.customer_id = s.customer_id
group by first_name, last_name 
having sum(total_amount) > (select avg(total_amount) from sales s);

-- 90. Which customers purchased more products than the average quantity purchased per customer?
select first_name, last_name, sum(quantity_sold) from sales s
join customers c
on c.customer_id = s.customer_id
group by first_name, last_name 
having sum(quantity_sold) > (select avg(quantity_sold) from sales s);


-- =====================================================
-- ADVANCED WINDOW + ANALYTICAL PROBLEMS
-- =====================================================

-- 91. Which customers rank in the top 10% of spending?

with customer_ranking as (select first_name, last_name, sum(total_amount) as total_spent, 
ntile(10) over (order by sum(total_amount) desc) as percentile
from sales s
join customers c
on s.customer_id = c.customer_id
group by first_name, last_name)
select first_name, last_name, percentile from customer_ranking 
where percentile = 1;

--OR

select first_name, last_name, percent_rank*100 as percentile_position 
from(select first_name,last_name, sum(total_amount) as total_spent,
percent_rank() over (order by sum(total_amount) desc) as percent_rank
from sales s
join customers c
on s.customer_id = c.customer_id
group by first_name, last_name)
where percent_rank <= 0.1; 



-- 92. Which products contribute to the top 50% of total revenue?

select product_name, total_revenue,percentile_position from
(select product_name, sum(total_amount) as total_revenue, 
ntile(2) over (order by sum(total_amount)desc ) as percentile_position
from sales s
join products p
on p.product_id = s.product_id
group by product_name)
where percentile_position = 1;


-- 93. Which customers made purchases in consecutive months?

select distinct
    c.customer_id,
    c.customer_name
from (
    select
        s.customer_id,
        date_trunk('month', s.sale_date) as purchase_month,
        lag(date_trunc('month', s.sale_date)) 
             over ( s.customer_id order by date_trunc('month', s.sale_date)) as prev_month
    FROM sales s
   group by s.customer_id, date_trunc('month', s.sale_date)
) monthly
join customers c on monthly.customer_id = c.customer_id
where purchase_month = prev_month + interval '1 month';


-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?

select
    product_name,
    i.product_id,
    i.stock_quantity,
    sum(s.quantity_sold) as total_quantity_sold,
    abs(i.stock_quantity - sum(s.quantity_sold)) as stock_vs_sold_difference
from inventory i
join sales s 
on i.product_id = s.product_id
join products p
on p.product_id = s.product_id
group by
    i.product_id,
    product_name,
    i.stock_quantity
order by stock_vs_sold_difference desc
limit 1;


-- 95. Which customers have spending above the average spending of their membership tier?

with customer_spending as (
    select
        c.customer_id,
        c.first_name,
        c.membership_status,
        sum(s.total_amount) as total_spending,
        avg(sum(s.total_amount)) over (partition by c.membership_status) as tier_avg_spending
    from customers c
    join sales s 
    on c.customer_id = s.customer_id
    group by
        c.customer_id,
        c.first_name,
        c.membership_status
)
select
    customer_id,
    first_name,
    membership_status,
    total_spending,
    round(tier_avg_spending, 2) as tier_avg_spending,
    round(total_spending - tier_avg_spending, 2) as above_avg_by
from customer_spending
where total_spending > tier_avg_spending
order by membership_status, total_spending desc;

-- 96. Which products have higher sales than the average sales within their category?
with average_sales as (select 
product_name,
category,
s.product_id,
sum(total_amount) as total_sales,
avg(sum(total_amount)) over (partition by category) as category_avg_sales
from sales s
join products p
on p.product_id =s.product_id
group by product_name, category, s.product_id)
select product_name, category, total_sales, category_avg_sales
from average_sales 
where total_sales > category_avg_sales;

-- 97. Which customer made the largest single purchase relative to their total spending?
select 
    customer_id,
    max(total_amount) as largest_single_purchase,
    sum(total_amount) as total_spending,
    round(
        max(total_amount) / sum(total_amount) * 100, 2
    ) as pct_of_total_spending
from sales
group by customer_id
order by pct_of_total_spending desc;

-- 98. Which products rank among the top 3 most sold products within each category?
select
    category,
    product_id,
    product_name,
    total_units_sold,
    rank_within_category
from (
    select
        p.category,
        p.product_id,
        p.product_name,
        sum(s.quantity_sold) as total_units_sold,
        rank() over (
            partition by p.category
            order by sum(s.quantity_sold) desc
        ) as rank_within_category
    from products p
    join sales s
    on p.product_id = s.product_id
    group by p.category, p.product_id, p.product_name
)
where rank_within_category <= 3
order by category asc, rank_within_category asc;

-- 99. Which customers are tied for the highest total spending?
select first_name, s.customer_id, sum(total_amount), rank() over (order by sum(total_amount) desc ) as rank_
from sales s
join customers c
on c.customer_id = s.customer_id
group by first_name, s.customer_id
limit 3;

-- 100. Which products generated sales every year present in the dataset?
select
    p.product_id,
    p.product_name,
    count(distinct extract(year from s.sale_date)) as years_with_sales,
    min(s.sale_date) as first_sale_date,
    max(s.sale_date) as last_sale_date
from products p
join sales s
on p.product_id = s.product_id
group by p.product_id, p.product_name
having count(distinct extract(year from s.sale_date)) = (
    select count(distinct extract(year from s.sale_date))
    from sales s
)
order by p.product_name asc;

