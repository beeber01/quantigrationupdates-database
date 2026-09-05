-- QuantigrationUpdates Database
-- Import data from CSV files

USE QuantigrationUpdates;

-- Import customer data
LOAD DATA INFILE '/home/codio/workspace/customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Allow order data to be imported
SET FOREIGN_KEY_CHECKS = 0;

-- Import order data
LOAD DATA INFILE '/home/codio/workspace/orders.csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Import RMA data
LOAD DATA INFILE '/home/codio/workspace/rma.csv'
INTO TABLE RMA
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- Restore foreign key checking
SET FOREIGN_KEY_CHECKS = 1;
