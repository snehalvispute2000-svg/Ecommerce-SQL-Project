CREATE DATABASE IF NOT EXISTS ecommerce_db;
USE ecommerce_db;

CREATE TABLE Customers(
Customer_ID INT PRIMARY KEY,
Customer_Name VARCHAR(100),
Gender VARCHAR(10),
Age INT,
City VARCHAR(50),
State VARCHAR(50),
Join_Date DATE);

CREATE TABLE Categories(
Category_ID INT PRIMARY KEY,
Category_Name VARCHAR(50));

CREATE TABLE Products(
Product_ID INT PRIMARY KEY,
Product_Name VARCHAR(100),
Category_ID INT,
Price DECIMAL(10,2),
Stock INT,
FOREIGN KEY(Category_ID) REFERENCES Categories(Category_ID));

CREATE TABLE Orders(
Order_ID INT PRIMARY KEY,
Customer_ID INT,
Order_Date DATE,
Payment_Method VARCHAR(20),
FOREIGN KEY(Customer_ID) REFERENCES Customers(Customer_ID));

CREATE TABLE Order_Details(
Order_Detail_ID INT PRIMARY KEY,
Order_ID INT,
Product_ID INT,
Quantity INT,
FOREIGN KEY(Order_ID) REFERENCES Orders(Order_ID),
FOREIGN KEY(Product_ID) REFERENCES Products(Product_ID));

----------------------------------------------------------------------------------------------------------
INSERT INTO Categories VALUES
(1,'Electronics'),(2,'Clothing'),(3,'Home'),(4,'Beauty'),(5,'Sports');

INSERT INTO Customers VALUES
(101,'Customer_1','Male',22,'Pune','Maharashtra','2024-01-01'),
(102,'Customer_2','Female',23,'Mumbai','Maharashtra','2024-02-01'),
(103,'Customer_3','Male',24,'Delhi','Delhi','2024-03-01'),
(104,'Customer_4','Female',25,'Bengaluru','Karnataka','2024-04-01'),
(105,'Customer_5','Male',26,'Ahmedabad','Gujarat','2024-05-01'),
(106,'Customer_6','Female',27,'Pune','Maharashtra','2024-06-01'),
(107,'Customer_7','Male',28,'Mumbai','Maharashtra','2024-07-01'),
(108,'Customer_8','Female',29,'Delhi','Delhi','2024-08-01'),
(109,'Customer_9','Male',30,'Bengaluru','Karnataka','2024-09-01'),
(110,'Customer_10','Female',31,'Ahmedabad','Gujarat','2024-10-01'),
(111,'Customer_11','Male',32,'Pune','Maharashtra','2024-11-01'),
(112,'Customer_12','Female',33,'Mumbai','Maharashtra','2024-12-01'),
(113,'Customer_13','Male',34,'Delhi','Delhi','2024-01-01'),
(114,'Customer_14','Female',35,'Bengaluru','Karnataka','2024-02-01'),
(115,'Customer_15','Male',36,'Ahmedabad','Gujarat','2024-03-01'),
(116,'Customer_16','Female',22,'Pune','Maharashtra','2024-04-01'),
(117,'Customer_17','Male',23,'Mumbai','Maharashtra','2024-05-01'),
(118,'Customer_18','Female',24,'Delhi','Delhi','2024-06-01'),
(119,'Customer_19','Male',25,'Bengaluru','Karnataka','2024-07-01'),
(120,'Customer_20','Female',26,'Ahmedabad','Gujarat','2024-08-01'),
(121,'Customer_21','Male',27,'Pune','Maharashtra','2024-09-01'),
(122,'Customer_22','Female',28,'Mumbai','Maharashtra','2024-10-01'),
(123,'Customer_23','Male',29,'Delhi','Delhi','2024-11-01'),
(124,'Customer_24','Female',30,'Bengaluru','Karnataka','2024-12-01'),
(125,'Customer_25','Male',31,'Ahmedabad','Gujarat','2024-01-01'),
(126,'Customer_26','Female',32,'Pune','Maharashtra','2024-02-01'),
(127,'Customer_27','Male',33,'Mumbai','Maharashtra','2024-03-01'),
(128,'Customer_28','Female',34,'Delhi','Delhi','2024-04-01'),
(129,'Customer_29','Male',35,'Bengaluru','Karnataka','2024-05-01'),
(130,'Customer_30','Female',36,'Ahmedabad','Gujarat','2024-06-01'),
(131,'Customer_31','Male',22,'Pune','Maharashtra','2024-07-01'),
(132,'Customer_32','Female',23,'Mumbai','Maharashtra','2024-08-01'),
(133,'Customer_33','Male',24,'Delhi','Delhi','2024-09-01'),
(134,'Customer_34','Female',25,'Bengaluru','Karnataka','2024-10-01'),
(135,'Customer_35','Male',26,'Ahmedabad','Gujarat','2024-11-01'),
(136,'Customer_36','Female',27,'Pune','Maharashtra','2024-12-01'),
(137,'Customer_37','Male',28,'Mumbai','Maharashtra','2024-01-01'),
(138,'Customer_38','Female',29,'Delhi','Delhi','2024-02-01'),
(139,'Customer_39','Male',30,'Bengaluru','Karnataka','2024-03-01'),
(140,'Customer_40','Female',31,'Ahmedabad','Gujarat','2024-04-01');

INSERT INTO Products VALUES
(1001,'Product_1',1,500,20),
(1002,'Product_2',2,650,21),
(1003,'Product_3',3,800,22),
(1004,'Product_4',4,950,23),
(1005,'Product_5',5,1100,24),
(1006,'Product_6',1,1250,25),
(1007,'Product_7',2,1400,26),
(1008,'Product_8',3,1550,27),
(1009,'Product_9',4,1700,28),
(1010,'Product_10',5,1850,29),
(1011,'Product_11',1,2000,30),
(1012,'Product_12',2,2150,31),
(1013,'Product_13',3,2300,32),
(1014,'Product_14',4,2450,33),
(1015,'Product_15',5,2600,34),
(1016,'Product_16',1,2750,35),
(1017,'Product_17',2,2900,36),
(1018,'Product_18',3,3050,37),
(1019,'Product_19',4,3200,38),
(1020,'Product_20',5,3350,39);

INSERT INTO Orders VALUES
(5001,101,'2025-01-01','UPI'),
(5002,102,'2025-02-02','Card'),
(5003,103,'2025-03-03','Cash'),
(5004,104,'2025-04-04','UPI'),
(5005,105,'2025-05-05','Card'),
(5006,106,'2025-06-06','Cash'),
(5007,107,'2025-07-07','UPI'),
(5008,108,'2025-08-08','Card'),
(5009,109,'2025-09-09','Cash'),
(5010,110,'2025-10-10','UPI'),
(5011,111,'2025-11-11','Card'),
(5012,112,'2025-12-12','Cash'),
(5013,113,'2025-01-13','UPI'),
(5014,114,'2025-02-14','Card'),
(5015,115,'2025-03-15','Cash'),
(5016,116,'2025-04-16','UPI'),
(5017,117,'2025-05-17','Card'),
(5018,118,'2025-06-18','Cash'),
(5019,119,'2025-07-19','UPI'),
(5020,120,'2025-08-20','Card'),
(5021,121,'2025-09-21','Cash'),
(5022,122,'2025-10-22','UPI'),
(5023,123,'2025-11-23','Card'),
(5024,124,'2025-12-24','Cash'),
(5025,125,'2025-01-25','UPI'),
(5026,126,'2025-02-26','Card'),
(5027,127,'2025-03-27','Cash'),
(5028,128,'2025-04-28','UPI'),
(5029,129,'2025-05-01','Card'),
(5030,130,'2025-06-02','Cash'),
(5031,131,'2025-07-03','UPI'),
(5032,132,'2025-08-04','Card'),
(5033,133,'2025-09-05','Cash'),
(5034,134,'2025-10-06','UPI'),
(5035,135,'2025-11-07','Card'),
(5036,136,'2025-12-08','Cash'),
(5037,137,'2025-01-09','UPI'),
(5038,138,'2025-02-10','Card'),
(5039,139,'2025-03-11','Cash'),
(5040,140,'2025-04-12','UPI'),
(5041,101,'2025-05-13','Card'),
(5042,102,'2025-06-14','Cash'),
(5043,103,'2025-07-15','UPI'),
(5044,104,'2025-08-16','Card'),
(5045,105,'2025-09-17','Cash'),
(5046,106,'2025-10-18','UPI'),
(5047,107,'2025-11-19','Card'),
(5048,108,'2025-12-20','Cash'),
(5049,109,'2025-01-21','UPI'),
(5050,110,'2025-02-22','Card'),
(5051,111,'2025-03-23','Cash'),
(5052,112,'2025-04-24','UPI'),
(5053,113,'2025-05-25','Card'),
(5054,114,'2025-06-26','Cash'),
(5055,115,'2025-07-27','UPI'),
(5056,116,'2025-08-28','Card'),
(5057,117,'2025-09-01','Cash'),
(5058,118,'2025-10-02','UPI'),
(5059,119,'2025-11-03','Card'),
(5060,120,'2025-12-04','Cash'),
(5061,121,'2025-01-05','UPI'),
(5062,122,'2025-02-06','Card'),
(5063,123,'2025-03-07','Cash'),
(5064,124,'2025-04-08','UPI'),
(5065,125,'2025-05-09','Card'),
(5066,126,'2025-06-10','Cash'),
(5067,127,'2025-07-11','UPI'),
(5068,128,'2025-08-12','Card'),
(5069,129,'2025-09-13','Cash'),
(5070,130,'2025-10-14','UPI'),
(5071,131,'2025-11-15','Card'),
(5072,132,'2025-12-16','Cash'),
(5073,133,'2025-01-17','UPI'),
(5074,134,'2025-02-18','Card'),
(5075,135,'2025-03-19','Cash'),
(5076,136,'2025-04-20','UPI'),
(5077,137,'2025-05-21','Card'),
(5078,138,'2025-06-22','Cash'),
(5079,139,'2025-07-23','UPI'),
(5080,140,'2025-08-24','Card');

INSERT INTO Order_Details VALUES
(1,5001,1001,1),
(2,5002,1002,2),
(3,5003,1003,3),
(4,5004,1004,4),
(5,5005,1005,5),
(6,5006,1006,1),
(7,5007,1007,2),
(8,5008,1008,3),
(9,5009,1009,4),
(10,5010,1010,5),
(11,5011,1011,1),
(12,5012,1012,2),
(13,5013,1013,3),
(14,5014,1014,4),
(15,5015,1015,5),
(16,5016,1016,1),
(17,5017,1017,2),
(18,5018,1018,3),
(19,5019,1019,4),
(20,5020,1020,5),
(21,5021,1001,1),
(22,5022,1002,2),
(23,5023,1003,3),
(24,5024,1004,4),
(25,5025,1005,5),
(26,5026,1006,1),
(27,5027,1007,2),
(28,5028,1008,3),
(29,5029,1009,4),
(30,5030,1010,5),
(31,5031,1011,1),
(32,5032,1012,2),
(33,5033,1013,3),
(34,5034,1014,4),
(35,5035,1015,5),
(36,5036,1016,1),
(37,5037,1017,2),
(38,5038,1018,3),
(39,5039,1019,4),
(40,5040,1020,5),
(41,5041,1001,1),
(42,5042,1002,2),
(43,5043,1003,3),
(44,5044,1004,4),
(45,5045,1005,5),
(46,5046,1006,1),
(47,5047,1007,2),
(48,5048,1008,3),
(49,5049,1009,4),
(50,5050,1010,5),
(51,5051,1011,1),
(52,5052,1012,2),
(53,5053,1013,3),
(54,5054,1014,4),
(55,5055,1015,5),
(56,5056,1016,1),
(57,5057,1017,2),
(58,5058,1018,3),
(59,5059,1019,4),
(60,5060,1020,5),
(61,5061,1001,1),
(62,5062,1002,2),
(63,5063,1003,3),
(64,5064,1004,4),
(65,5065,1005,5),
(66,5066,1006,1),
(67,5067,1007,2),
(68,5068,1008,3),
(69,5069,1009,4),
(70,5070,1010,5),
(71,5071,1011,1),
(72,5072,1012,2),
(73,5073,1013,3),
(74,5074,1014,4),
(75,5075,1015,5),
(76,5076,1016,1),
(77,5077,1017,2),
(78,5078,1018,3),
(79,5079,1019,4),
(80,5080,1020,5),
(81,5001,1001,1),
(82,5002,1002,2),
(83,5003,1003,3),
(84,5004,1004,4),
(85,5005,1005,5),
(86,5006,1006,1),
(87,5007,1007,2),
(88,5008,1008,3),
(89,5009,1009,4),
(90,5010,1010,5),
(91,5011,1011,1),
(92,5012,1012,2),
(93,5013,1013,3),
(94,5014,1014,4),
(95,5015,1015,5),
(96,5016,1016,1),
(97,5017,1017,2),
(98,5018,1018,3),
(99,5019,1019,4),
(100,5020,1020,5),
(101,5021,1001,1),
(102,5022,1002,2),
(103,5023,1003,3),
(104,5024,1004,4),
(105,5025,1005,5),
(106,5026,1006,1),
(107,5027,1007,2),
(108,5028,1008,3),
(109,5029,1009,4),
(110,5030,1010,5),
(111,5031,1011,1),
(112,5032,1012,2),
(113,5033,1013,3),
(114,5034,1014,4),
(115,5035,1015,5),
(116,5036,1016,1),
(117,5037,1017,2),
(118,5038,1018,3),
(119,5039,1019,4),
(120,5040,1020,5);
------------------------------------------------
select * from categories;
select * from customers;
select * from order_details;
select * from orders;
select * from products;
----------------------------------------------------------
--- Basic Data Retrieval -----
----------------------------------------------------------
-- Display all customers.
select customer_id, customer_name from customers;

-- Display customer names and cities only.
Select customer_name, city from customers;

-- Find customers from Pune.
select customer_id, customer_name,city from customers
where city = 'Pune';

-- Find female customers.
select customer_id, customer_name, Gender from customers
where Gender = 'Female';

-- Find customers aged above 30.
select customer_id, customer_name, age from customers
where age > 30;

-- Display all products.
select * from products;

-- Find products costing more than ₹2000.
select * from products
where price > 2000;

-- Display products sorted by price (highest first).
select product_id, product_name, price from products
order by price desc;

-- Show all distinct payment methods.
select distinct payment_method from orders;

-- Display orders placed after January 1, 2025
select order_id, order_date from orders
where order_date > '2025-01-01';

-----------------------------------------------------------------
---- Aggregate Functions ---------
-----------------------------------------------------------------
-- Count total customers.
select count(*) as Total_customers from customers;

-- Count total orders.
select count(*) as Total_orders from orders;

-- Count total products.
select count(*) as Total_products from products;

-- Calculate total stock available.
select sum(stock) as Total_available_stock from products;

-- Find average product price.
select round(AVG(price),2) as Avg_Product_Price from products;

-- Find the highest-priced product.
select product_id, Product_name, price from products 
order by price desc limit 1;

select max(price) as highest_price from products;

-- Find the lowest-priced product.
select product_id, Product_name, price from products 
order by price limit 1;

select min(price) as highest_price from products;

-- Calculate total revenue.
select sum(od.quantity*p.price) as total_revenue
from order_details as od
join products as p
using(product_id);

-- Calculate average order value.
select round(AVG(order_value),2) as Avg_order_value
from
(select 
	od.Order_ID, sum(od.Quantity*p.Price) as order_value
from order_details as od
join products as p
on od.Product_ID = p.Product_ID
group by od.Order_ID) x;

-- Find total quantity sold.
select sum(quantity) as Total_quantity_sold from order_details;

---------------------------------------------------------------------------
----- GROUP BY Analysis -------
---------------------------------------------------------------------------
-- Count customers in each state.
select state, count(customer_id) as Total_customers from customers 
group by state;

-- Count customers in each city.
select City, count(customer_id) as Total_customers from customers 
group by City;

-- Count products in each category.
select c.category_name, 
	count(p.product_id) as Total_products from 
	products as p join categories as c
	on c.Category_id = p.Category_id
	group by c.Category_name;
    
    select category_id, 
	count(product_id) as Total_products from 
	products
    group by Category_id;

-- Calculate revenue by category.
select c.category_name, 
	sum(od.quantity*p.price) as total_revenue
from order_details as od
join products as p
    ON od.product_id = p.product_id
join categories as c
on c.Category_id = p.Category_id
	group by c.Category_name;

-- Calculate revenue by city.
select c.city, 
	sum(od.quantity*p.price) as total_revenue
	from order_details as od
join products as p
    ON od.product_id = p.product_id
join orders as o 
	ON o.order_id = od.order_id
join customers as c
	ON c.Customer_id = o.Customer_id
group by c.city;

-- Calculate revenue by state.
select c.state, 
	sum(od.quantity*p.price) as total_revenue
	from order_details as od
join products as p
    ON od.product_id = p.product_id
join orders as o 
	ON o.order_id = od.order_id
join customers as c
	ON c.Customer_id = o.Customer_id
group by c.state;

-- Find orders by payment method.
Select Payment_Method,
	count(Order_id) as Total_orders from orders
    group by payment_method;

-- Find total quantity sold per product.
select p.product_id, p.product_Name, 
	sum(od.quantity) as total_quantity
	from 
	order_details as od 
	join products as p
	on p.product_id = od.product_id 
group by p.product_id, p.product_Name
order by total_quantity desc;

-- Find average product price by category.
select c.category_name,
	round(AVG(p.price),2) as AVG_price
from
Categories as C 
join 
products as p
ON p.Category_id = c.category_id
group by c.category_name;

-- Find monthly sales.
select 
	YEAR(o.order_date) as Year,
	MONTH(o.order_date) as Month,
    sum(od.quantity*p.price) as Total_revenue
from Orders as o
	join Order_details as od
ON O.Order_id = Od.order_id
	join Products as p
ON p.product_id = od.Product_id
Group by
	YEAR(o.order_date), MONTH(o.order_date)
order by 
	YEAR(o.order_date), MONTH(o.order_date);

--------------------------------------------------------------------------------
select * from categories;
select * from customers;
select * from order_details;
select * from orders;
select * from products;
---------------------------------------------------------------------------------
------------- HAVING Clause ------------------
---------------------------------------------------------------------------------
-- Categories with more than three products.
select 
	c.category_name, 
	count(p.product_id) as Total_products 
from
	Categories as C 
join 
	products as p
ON p.Category_id = c.category_id
group by c.category_name
having count(p.product_id) > 3;

-- Customers with more than two orders.
select 
	C.customer_id, c.customer_name,
	count(o.order_id) as Total_orders
from Customers as c 
join orders as o
ON C.customer_id = o.customer_id 
group by 	
	C.customer_id, c.customer_name
having count(o.order_id) > 2;

-- Products sold more than five times.
select p.product_name, p.product_id,
	sum(od.quantity) as Total_sold
from Order_details as od 
join products as p
ON P.product_id = Od.product_id
group by p.product_name, p.product_id
having sum(od.quantity) > 5
order by Total_sold desc;

-- Cities having more than five customers.
Select City,
	count(customer_id) as Total_customer
from customers 
group by city
having count(customer_id) > 5
order by Total_customer desc;

-- States generating revenue greater than ₹50,000.
select c.state, 
	sum(od.quantity*p.price) as total_revenue
	from order_details as od
join products as p
    ON od.product_id = p.product_id
join orders as o 
	ON o.order_id = od.order_id
join customers as c
	ON c.Customer_id = o.Customer_id
group by c.state 
having sum(od.quantity*p.price) > 50000;

--------------------------------------------------------------------------
------- JOIN Operations --------------------
--------------------------------------------------------------------------
-- Customer names with their orders.
Select 
	c.customer_id, c.customer_name, o.Order_id, o.Order_date
    from customers c
   Left join Orders o
ON C.customer_id = O.customer_id;

-- Customer names with products purchased.
select C.customer_id, C.customer_name, o.order_date, p.Product_name ,od.quantity 
	from customers c
Join Orders O
ON c.customer_id = o.customer_Id
join order_details od
ON Od.Order_id = O.order_id
join products p
ON Od.product_id = p.product_id
order by c.customer_name, o.order_date;

-- Product names with category names.
Select P.product_name, C.category_name
	from Products p
join Categories C
ON P.Category_id = c.category_id
order by P.product_name desc;

-- Revenue generated by each customer.
Select 
	C.customer_id, C.customer_name,
	Sum(od.Quantity*p.price) As TOTAL_REVENUE
	from customers c
Join Orders O
	ON c.customer_id = o.customer_Id
join order_details od
	ON Od.Order_id = O.order_id
join products p
	ON Od.product_id = p.product_id
group by 
	C.customer_id, C.customer_name
Order by 
	C.customer_id, C.customer_name;	

-- Revenue generated by each product.
Select P.product_id, P.product_name, 
	Sum(od.Quantity*p.price) As TOTAL_REVENUE
from order_details as od
join products p
ON Od.product_id = p.product_id
group by P.product_id, P.product_name
order by P.product_id, P.product_name;

-- Orders with payment methods.
select Order_id, Payment_method 
from orders;

-- Customers who never placed an order.
Select 
	c.customer_id, c.customer_name, o.Order_id, o.Order_date
    from customers c
   left join Orders o
ON C.customer_id = O.customer_id
where o.Order_ID is NULL;

-- Products never ordered.
Select P.product_id, Od.order_Detail_id
	from products p
left join order_details od
ON od.Product_id = P.product_id
where od.order_detail_id is Null;

-- Categories with products.
Select C.category_name, P.Product_name
from Products p
join categories c 
ON C.category_id = P.category_id
order by c.category_name;

-- Complete order report (Customer, Product, Quantity, Price, Revenue).
Select 
	c.customer_id, 
	C.customer_name, 	
    O.order_id, 
    p.Product_name, 
    od.Quantity,
    p.price,
    (od.quantity*P.price) as Revenue,
    o.payment_method 
from customers c
Join Orders O
	ON c.customer_id = o.customer_Id
join order_details od
	ON Od.Order_id = O.order_id
join products p
	ON Od.product_id = p.product_id
order by c.customer_id ;

-------------------------------------------------------------------------
----------------- Subqueries --------------------
-------------------------------------------------------------------------
-- Products priced above average.
Select product_name, Price from products
	where price >
(select avg(price) As Avg_Price from products);

-- Customers who spent more than average.
Select 	
	c.customer_Id, C.customer_name,
    sum(od.quantity*p.price) as total_spent 
from customers c
join orders o
ON c.customer_id = o.customer_id
join order_details od 
ON od.order_id = o.order_id
join products p
ON p.product_id = od.product_id 
group by c.customer_id, c.customer_name
having sum(od.quantity*p.price) >
(select avg(total_spent) 
from
(select
	sum(od.quantity*p.price) as total_spent
from orders o
join order_details od 
ON od.order_id = o.order_id
join products p
ON p.product_id = od.product_id 
group by o.customer_id)x);

-- Most expensive product.
select Product_id, Product_name, price from products 
where price =
(select max(Price) from products );

-- Cheapest product.
select Product_id, Product_name, price from products 
where price =
(select min(Price) from products );

-- Customers who purchased Electronics.
select distinct 
	c.customer_id, c.customer_name 
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
JOIN order_details AS od
    ON o.order_id = od.order_id
JOIN products AS p
    ON od.product_id = p.product_id
JOIN categories AS cat
    ON p.category_id = cat.category_id
where cat.category_name = 'Electronics';

select Customer_id, customer_name 
from customers 
where customer_id in
(select o.customer_id 
from orders o 
where o.order_id in
(select od.order_id 
from order_details od
where od.product_id in
(select p.product_id 
from products p
where p.category_id in 
(select category_id
from categories
where category_name = 'Electronics')))); 

-- Products purchased by customers from Pune. 
select 
	product_id, 
	product_name 
	from products
where product_id in
	(select product_id 
	from order_details
where order_id in
	(select order_id from orders
where customer_id in
	(select customer_id from customers 
where city = 'Pune')));

-- Customers with no orders.
SELECT
    customer_id,
    customer_name
FROM customers
WHERE customer_id NOT IN
(SELECT customer_id
    FROM orders);

-- Categories with highest revenue.
select 
	category_name,
    Total_Revenue
from 
( select 
	c.category_name,
    sum(p.price*od.quantity) as total_revenue 
FROM categories AS c
    JOIN products AS p
        ON c.category_id = p.category_id
    JOIN order_details AS od
        ON p.product_id = od.product_id
	group by c.category_name) category_revenue
where total_revenue =
(select max(total_revenue)
from
( select 
	c.category_name,
    sum(p.price*od.quantity) as total_revenue 
FROM categories AS c
    JOIN products AS p
        ON c.category_id = p.category_id
    JOIN order_details AS od
        ON p.product_id = od.product_id
	group by c.category_name) as revenue);
    
-- Product with maximum quantity sold.
select	
	p.product_id,
	p.product_name, 
    sum(od.quantity) as total_quantity
from products p
join order_details od 
	ON p.product_id = od.product_id 
Group by p.product_id,
		p.product_name
Having sum(od.quantity) = 
(select max(total_quantity) 
from 
(select sum(quantity) as total_quantity
from order_details 
group by product_id) as product_sales );
    
-- Customers having maximum lifetime value. ---
select 
	c.customer_name,
    c.customer_id,
    sum(od.quantity* p.price) as Lifetime_value
from customers c 
join orders o
	On O.customer_id = c.customer_id 
join order_details od 
	on o.order_id = od.order_id
join Products p
	on p.product_id = od.product_id 
group by 
	c.customer_name,
    c.customer_id
 having sum(od.quantity*p.price) =
 (select max(lifetime_value) from
	(select sum(od.quantity* p.price) as Lifetime_value 
FROM orders AS o
        JOIN order_details AS od
            ON o.order_id = od.order_id
        JOIN products AS p
ON p.product_id = od.product_id
group by o.customer_id)as a);

----------------------------------------------------------------------------
----------- Views ------------------
----------------------------------------------------------------------------
-- Customer Sales
create view vw_customer_sale as
select 
	c.customer_id,
    c.customer_name,
    sum(od.quantity*p.price) as Total_sale
from customers c
join orders o
ON o.customer_id = c.customer_id
join order_details od
ON od.order_id = o.order_id 
join products p
ON p.product_id = od. product_id 
group by c.customer_id,
    c.customer_name
order by total_sale desc ;

select * from vw_customer_sale;

-- Product Sales
Create view vw_product_sales as 
Select 	
	P.product_id,
    P.Product_name,
    sum(od.quantity*p.price) as Total_sale
from Products p
join Order_details od
ON p.product_id = od.product_id
Group by
	P.product_id,
    P.Product_name
Order by total_sale desc;

select * from vw_product_sales;

-- Category Sales
create view vw_category_sales as 
Select 
	Ct.Category_id,
	ct.category_name,
    sum(od.quantity*p.price) as Total_sale
from Products p
join Order_details od
ON p.product_id = od.product_id
join Categories ct
ON ct.category_id = p.category_id
group by
	Ct.Category_id,
	ct.category_name
order by Total_sale desc;

select * from vw_category_sales;

-- Monthly Sales
create view VW_Monthly_sales as
select 
	year(o.order_date) as year,
    Month(o.order_date) as month,
    sum(od.quantity*p.price) as Total_sale 
from customers c
join orders o
ON o.customer_id = c.customer_id
join order_details od
ON od.order_id = o.order_id 
join products p
ON p.product_id = od. product_id 
group by 
	year(o.order_date),
    Month(o.order_date)
order by Month;

select * from VW_Monthly_sales;

-- Customer Lifetime Value
create view VW_Lifetime_Value as
select 
	c.customer_id,
    c.customer_name,
    sum(od.quantity*p.price) as Lifetime_Value
from customers c
join orders o
ON o.customer_id = c.customer_id
join order_details od
ON od.order_id = o.order_id 
join products p
ON p.product_id = od. product_id 
group by c.customer_id,
    c.customer_name
order by Lifetime_value desc ;

select * from VW_Lifetime_Value;
------------------------------------------------
--------------- Indexes --------------------
------------------------------------------------

-- Create index on Customer_ID.
create index cust on customers(customer_id);

-- Create index on Product_ID.
create index Prod on products(product_id);

-- Create index on Order_Date.
create index OD on orders(Order_date);


















