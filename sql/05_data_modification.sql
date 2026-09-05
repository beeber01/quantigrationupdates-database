-- QuantigrationUpdates Database
-- Data modification operations

USE QuantigrationUpdates;


-- Insert new customer records
INSERT INTO Customers
    (CustomerID, FirstName, LastName, StreetAddress, City, State, ZipCode, Telephone)
VALUES
    (100004, 'Luke', 'Skywalker', '15 Maiden Lane', 'New York', 'New York', '10222', '212-555-1234'),
    (100005, 'Winston', 'Smith', '123 Sycamore St', 'Greensboro', 'North Carolina', '27401', '919-555-6623'),
    (100006, 'MaryAnne', 'Jenkins', '1 Coconut Way', 'Jupiter', 'Florida', '33458', '321-555-8907'),
    (100007, 'Janet', 'Williams', '55 Redondo Beach Blvd', 'Torrence', 'California', '90501', '310-555-5678');


-- Insert corresponding order records
INSERT INTO Orders
VALUES
    (1204305, 100004, 'ADV-24-10C',
     'Advanced Switch 10GigE Copper 24 port'),
    (1204306, 100005, 'ADV-48-10F',
     'Advanced Switch 10 GigE Copper/Fiber 44 port copper 4 port fiber'),
    (1204307, 100006, 'ENT-24-10F',
     'Enterprise Switch 10GigE SFP+ 24 Port'),
    (1204308, 100007, 'ENT-48-10F',
     'Enterprise Switch 10GigE SFP+ 48 port');


-- Check current RMA status for OrderID 5175
SELECT Status, Step
FROM RMA
WHERE OrderID = 5175;


-- Update RMA status and processing step
UPDATE RMA
SET
    Step = 'Credit Customer Account',
    Status = 'Complete'
WHERE OrderID = 5175;


-- Verify the update
SELECT Status, Step
FROM RMA
WHERE OrderID = 5175;


-- Delete rejected RMA records
DELETE FROM RMA
WHERE Reason = 'Rejected';


-- Create a Collaborators view based on customer information
CREATE VIEW Collaborators AS
SELECT
    CustomerID AS CollaboratorID,
    FirstName,
    LastName,
    StreetAddress,
    City,
    State,
    ZipCode,
    Telephone
FROM Customers;


-- Review the new view
SELECT *
FROM Collaborators
LIMIT 5;
