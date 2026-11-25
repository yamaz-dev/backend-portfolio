SELECT @@VERSION;

CREATE DATABASE PracticeDelivery
COLLATE SQL_Latin1_General_CP1_CI_AS;

USE PracticeDelivery;

CREATE TABLE TypeTest (
       Phone varchar,
       Price decimal(10,3),
       Name nvarchar(20)
   );

   INSERT INTO TypeTest (Phone, Price, Name) VALUES ('0791112233', 0.1, N'سارة');

   SELECT * FROM TypeTest;

   SELECT * FROM TypeTest WHERE Price * 3 = 0.3;

    CREATE TABLE TypeTest2 (
       Phone varchar(15),
       Price decimal(10,3),
       Name nvarchar(20)
   );

   INSERT INTO TypeTest2 (Phone, Price, Name) VALUES ('0791112233', 0.1, N'سارة');
   SELECT * FROM TypeTest2;
   SELECT * FROM TypeTest2 WHERE Price * 3 = 0.3;

     DROP TABLE TypeTest;
   DROP TABLE TypeTest2;

   CREATE TABLE Customer (
    Id int IDENTITY(1,1) PRIMARY KEY,
    FirstName nvarchar(50) NOT NULL,
    LastName nvarchar(50) NOT NULL,
    Phone varchar(15) NOT NULL,
    Email varchar(50) NULL,
    Gender tinyint NOT NULL,
   );

   INSERT INTO Customer (FirstName , LastName , Phone, Email, Gender)
   VALUES  (N'Jack', N'Morgen', '0791112233', 'jack@example.com', 0),
   (N'Emma', N'Hughes', '0772223344', 'emma.hughes@example.com', 1),
   (N'Michael', N'Brown', '0783334455', NULL, 0),
   (N'Sarah', N'Connor', '0794445566', 'sarah.connor@example.com', 1),
   (N'Daniel', N'Stone', '0775556677', 'daniel@example.com', 0);
   -- INSERT INTO Customer (FirstName, Phone, Gender) VALUES (N'Daniel', '0775556677', 0);
   SELECT * FROM Customer;

   SELECT FirstName, LastName FROM Customer;
   SELECT * FROM Customer WHERE Gender = 1;
   SELECT * FROM Customer WHERE FirstName = N'Michael';
   SELECT * FROM Customer WHERE Gender = 1 AND LastName = N'Connor';
   SELECT * FROM Customer WHERE FirstName = N'Jack' OR FirstName = N'Michael';
   SELECT * FROM Customer WHERE LastName LIKE N'C%';
   SELECT * FROM Customer ORDER BY LastName;
   SELECT * FROM Customer ORDER BY Gender, LastName DESC;
   SELECT TOP 2 * FROM Customer ORDER BY Id DESC;
   SELECT DISTINCT Gender FROM Customer;
   SELECT FirstName,Phone FROM Customer;
   SELECT * FROM Customer WHERE Gender = 1;
   SELECT * FROM Customer WHERE LastName LIkE N'H';
   SELECT * FROM Customer WHERE Id IN (2,3);
   SELECT * FROM Customer ORDER BY LastName DESC;
   SELECT TOP  2 * FROM Customer ORDER BY Id DESC; 
    SELECT DISTINCT Gender FROM Customer;

    CREATE TABLE Store (
    Id int IDENTITY(1,1) PRIMARY KEY,
    Name nvarchar(100)NOT NULL,
    Type char(1)NOT NULL,
    AddressId int NOT NULL
    );

    INSERT INTO Store (Name,Type,AddressId)  VALUES (N'Burger Spot' , 'R' , 1),(N'Shawarma Corner', 'R' ,2),(N'Fresh Market' ,'G',3);

    SELECT * FROM Store;
 

    CREATE TABLE [Order] (
    Id int IDENTITY(1,1) PRIMARY KEY,
    OrderDate datetime2(0) NOT NULL,
    PickupTime datetime2(0) NULL,
    DeliveryTime datetime2(0) NULL,
    Status tinyint NOT NULL,
    Price decimal(10,3) NOT NULL,
    CustomerId int NOT NULL,
    StoreId int NOT NULL,
    DriverId int NULL,
    DeliveryAddressId int NOT NULL);

    INSERT INTO [Order] (OrderDate,PickupTime, DeliveryTime,Status,Price,CustomerId,StoreId,DriverId,DeliveryAddressId) VALUES 
    ('2026-04-28 12:10','2026-04-28 12:30','2026-04-28 12:55',2,8.750,1,1,1,7),
    ('2026-04-29 19:05','2026-04-29 19:20','2026-04-29 19:48',2,23.400,2,3,2,9),
    ('2026-04-30 13:40',NULL,NULL,3,5.250,3,2,NULL,10),
    ('2026-04-30 20:15',NULL,NULL,0,12.500,4,1,NULL,11),
    ('2026-04-30 20:40',NULL,NULL,0,6.000,1,2,NULL,7);

     SELECT * FROM [Order];

    SELECT * FROM [Order] WHERE Status = 0;
    SELECT * FROM [Order] WHERE Price >= 10;
    SELECT TOP 2 * FROM [Order] ORDER BY Price DESC;


        






