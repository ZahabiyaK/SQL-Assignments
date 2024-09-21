USE TechShop;

-- Question 1

Select FirstName, LastName, Email From Customers Where CustomerID is Not Null;

-- Question 2

Select Ord.OrderID, ord.OrderDate, cust.FirstName, cust.LastName From Orders ord  Join Customers cust on ord.CustomerID = cust.CustomerID;

-- Question 3
Insert into Customers Values(11,'Vikram','Jain','JainV32@gmail.com',9698123753,'Banglore');
select * From Customers;

-- Question 4

Update Products set Price = Price + (Price * 0.10);
select Price From Products;

--Question 5

Select * From Orders;
Select * From OrderDetails;

declare @OrderID INT = 7;

Delete From Orders Where OrderID = @OrderID;
Delete From OrderDetails Where OrderID = @OrderID;

Select * From Orders;
Select * From OrderDetails;

-- Question 6

Insert into Orders Values(11,GETDATE(),32000,5);
Select * From Orders;

--Question 7

Select * From Customers Where CustomerID = 5;

Declare @CustomerID INT = 5;
Declare @Email varchar(max) = 'Sharma15@gmail.com';
Declare @Address varchar(max) = 'Indore';

Update Customers set Email = @Email, Address = @Address Where CustomerID = @CustomerID;

Select * From Customers Where CustomerID = 5;

--Question 10

Select * From Products;
Insert Into Products Values (11,'Headphones','Wireless Headphones',1199.00);
Select * From Products;

