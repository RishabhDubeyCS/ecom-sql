Create database EcommerceDB;
use EcommerceDB;

Create table Customers (
customer_id int primary key ,
 name varchar(100),
  email varchar(100),
  phone varchar (15),
   city varchar (50)
   );
Create table Products (
product_id int primary key,
product_name varchar (100),
category_id int, 
price decimal (10,2),
stock int 
);
create table Categories (
category_id int primary key,
 category_name varchar (50)
 
);
create table Orders (
 order_id int primary KEY,
 customer_id int , 
  order_data Date,
   status varchar (20),
   foreign key (customer_id) references Customers(customer_id)
   
 );
 CREATE TABLE OrderItems (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  total_price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Payments (
  payment_id INT PRIMARY KEY,
  order_id INT,
  amount DECIMAL(10,2),
  payment_method VARCHAR(20),
  payment_date DATE,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Customers VALUES
(3, 'Priya Sharma', 'priya@gmail.com', '7777777777', 'Delhi'),
(4, 'Rahul Verma', 'rahulv@gmail.com', '9991112222', 'Mumbai'),
(5, 'Neha Singh', 'neha123@gmail.com', '9898989898', 'Pune'),
(6, 'Arjun Patel', 'arjun@gmail.com', '7788991122', 'Chennai');

 INSERT INTO Categories VALUES
(3, 'Home Appliances'),
(4, 'Mobiles');

INSERT INTO Products VALUES
(103, 'Smartphone', 4, 19999, 35),
(104, 'Power Bank', 4, 999, 60),
(202, 'Jacket', 2, 1299, 40),
(301, 'Mixer Grinder', 3, 2499, 15),
(302, 'Air Purifier', 3, 9999, 12);

INSERT INTO Orders VALUES
(5003, 3, '2025-12-29', 'Delivered'),
(5004, 4, '2025-12-29', 'Cancelled'),
(5005, 5, '2025-12-30', 'Delivered'),
(5006, 6, '2025-12-30', 'Pending');

INSERT INTO OrderItems VALUES
(3, 5003, 103, 1, 19999),
(4, 5003, 104, 1, 999),
(5, 5005, 301, 1, 2499),
(6, 5006, 202, 2, 2598),
(7, 5006, 302, 1, 9999);

INSERT INTO Payments VALUES
(9002, 5003, 20998, 'Credit Card', '2025-12-29'),
(9003, 5005, 2499, 'UPI', '2025-12-30');


SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Categories;
SELECT * FROM Orders;
SELECT * FROM OrderItems;
SELECT * FROM Payments;







 