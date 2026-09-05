-- QuantigrationUpdates Database
-- Table creation and relationships

USE QuantigrationUpdates;

-- Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    StreetAddress VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(25),
    ZipCode VARCHAR(10),
    Telephone VARCHAR(15)
);

-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    SKU VARCHAR(20),
    Description VARCHAR(75),
    CONSTRAINT fk_CustomerID
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);

-- RMA table
CREATE TABLE RMA (
    RMAID INT PRIMARY KEY,
    OrderID INT,
    Step VARCHAR(50),
    Status VARCHAR(15),
    Reason VARCHAR(15),
    CONSTRAINT fk_OrderID
        FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID)
);
