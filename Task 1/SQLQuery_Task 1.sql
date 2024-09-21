
--Create Database TechShop;

USE TechShop;

-- Creating Tables
Create Table Customers(
	CustomerID INT PRIMARY KEY,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(MAX),
	Phone varchar(20),
	Address varchar(MAX)
);
Create Table Products(
	ProductID INT PRIMARY KEY,
	ProductName varchar(50),
	Description varchar(max),
	Price decimal(10,2)
);
Create Table Orders(
	OrderID INT PRIMARY KEY,
	OrderDate datetime,
	TotalAmount decimal(10,2),
	CustomerID INT,
	FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
);

Create Table Inventory(
	InventoryID INT PRIMARY KEY,
	QuantityInStock INT,
	LastStockUpdate Datetime,
	ProductID INT,
	FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);

Create Table OrderDetails(
	OrderDetailID INT PRIMARY KEY,
	Quantity INT,
	OrderID INT,
	ProductID INT,
	FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);

--Insert Values

Insert Into Products (ProductID, ProductName, Description, Price) Values
(1,'Smartphone', 'Android', 21000.00),
(2,'Bluetooth Speaker', 'Portable bluetooth speaker', 53000.00),
(3,'Charger', 'Fast Charging ', 600.00),
(4,'Camera', 'Digital Camera with 40mp', 30000.00),
(5,'Mouse', 'wireless optical mouse', 999.00),
(6,'Keyboard', 'Basic keyboard', 1500.00),
(7,'TV', '42 inch Smart TV', 50000.00),
(8,'Smart Watch', 'NoiseFit smartwatch', 1800.00),
(9,'Tablet', '11 inch tablet', 15000.00),
(10,'Airpodes', 'Wireless Airpodes', 20000.00);

Insert Into Customers (CustomerID, FirstName, LastName, Email, Phone, Address) Values
(1,'Avni', 'Rathore','Avni20@gmail.com',8916790125, 'Nashik'),
(2,'Harshita', 'Pandey','Harshi@gmail.com',9926780126, 'Indore'),
(3,'Shubham', 'Mishra','Shubham@gmail.com',7916770827, 'Mumbai'),
(4,'Rahul', 'Kumar','KumarRahul@gmail.com',8716790922, 'Chennai'),
(5,'Tanya', 'Sharma','TanyaS02@gmail.com',8216790195, 'Pune'),
(6,'Manoj', 'Agarwal','Manoj@gmail.com',9516790560, 'Banglore'),
(7,'Dilip', 'Dosi','DosiDilip@gmail.com',7656781248, 'Hyderabad'),
(8,'Anil', 'Choudhary','Choudhary32@gmail.com',8726790222, 'Ahmedabad'),
(9,'Ritu', 'Gupta','Gupta09@gmail.com',7923793417, 'Udaipur'),
(10,'Manisha', 'Porwal','ManishaPorwal@gmail.com',8478125321, 'Mandsaur');

Insert Into Orders (OrderID, OrderDate, TotalAmount, CustomerID) Values
(1,GetDate(), 21000.00,1),
(2,GetDate(), 52000.00,2),
(3,GetDate(), 15000.00,3),
(4,GetDate(), 25000.00,4),
(5,GetDate(), 40000.00,5),
(6,GetDate(), 7000.00,6),
(7,GetDate(), 28000.00,7),
(8,GetDate(), 18000.00,8),
(9,GetDate(), 9000.00,9),
(10,GetDate(), 1000.00,10);

Insert Into OrderDetails (OrderDetailID, Quantity, OrderID, ProductID) Values
(101,2,1,1),
(102,1,2,2),
(103,1,3,3),
(104,2,4,4),
(105,1,5,5),
(106,2,6,6),
(107,1,7,7),
(108,1,8,8),
(109,2,9,9),
(110,2,10,10);

Insert Into Inventory (InventoryID, QuantityInStock, LastStockUpdate, ProductID) Values
(01,15,GetDate(),1),
(02,10,GetDate(),2),
(03,12,GetDate(),3),
(04,20,GetDate(),4),
(05,30,GetDate(),5),
(06,50,GetDate(),6),
(07,10,GetDate(),7),
(08,40,GetDate(),8),
(09,35,GetDate(),9),
(10,20,GetDate(),10);

--Displaying data

select * from Products;
select * from Customers;
select * from Orders;
select * from OrderDetails;
select * from Inventory;
