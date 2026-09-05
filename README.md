# quantigrationupdates-database
MySQL relational database project demonstrating database design, SQL queries, data manipulation, and relational database analysis.
# QuantigrationUpdates Database Project

## Overview

QuantigrationUpdates is a relational database project developed using MySQL. The project demonstrates database design, data importing, SQL querying, table relationships, data manipulation, and exporting query results.

The database was designed to manage customer, order, and return merchandise authorization (RMA) information.

## Technologies Used

* MySQL
* SQL
* Relational Database Design
* CSV Data
* Database Analysis

## Project Objectives

The primary objectives of this project were to:

* Create a relational database schema
* Design tables using primary and foreign keys
* Import data from CSV files
* Query and analyze relational data
* Retrieve information using SQL joins and filtering
* Insert, update, and delete database records
* Modify database structures as requirements changed
* Export query results to a CSV file

## Database Structure

The database contains three primary tables:

### Customers

Stores customer information and uses `CustomerID` as the primary key.

### Orders

Stores order information and uses `OrderID` as the primary key. `CustomerID` functions as a foreign key connecting orders to customers.

### RMA

Stores return merchandise authorization information and uses `RMAID` as the primary key. `OrderID` functions as a foreign key connecting RMA records to orders.

## Database Relationships

The tables demonstrate relational database concepts through primary and foreign keys.

```text
Customers
    |
    | CustomerID
    |
    v
Orders
    |
    | OrderID
    |
    v
RMA
```

These relationships allow information from multiple tables to be connected and analyzed using SQL queries.

## SQL Skills Demonstrated

This project demonstrates experience with:

* CREATE DATABASE
* CREATE TABLE
* PRIMARY KEY
* FOREIGN KEY
* INSERT
* SELECT
* WHERE
* INNER JOIN
* COUNT
* UPDATE
* DELETE
* Data importing
* CSV data extraction
* Relational database analysis

## Example Query

One of the queries used in the project joins customer and order information to identify orders associated with customers in a specific location.

```sql
SELECT *
FROM Customers
INNER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.City = 'Framingham'
  AND Customers.State = 'MA';
```

## Data Analysis

The project included queries designed to identify customer and order patterns. For example, the database was queried to determine the number of orders associated with customers located in Framingham, Massachusetts. The query returned 505 order results.

Additional analysis included identifying customers in Massachusetts and determining the number of customers located in Woonsocket, Rhode Island.

## Data Manipulation

The project also demonstrates the ability to modify existing database information through SQL.

Examples include:

* Adding new customer and order records
* Updating RMA information
* Deleting RMA records based on a specified condition
* Renaming database-related fields to reflect changing requirements

The project included deleting RMA records with a reason of "Rejected," resulting in 595 records being removed.

## Data Export

Query results from the Orders table were exported to a CSV file, demonstrating the ability to extract relational database information into a flat-file format.

## What I Learned

This project strengthened my understanding of relational databases and SQL. I gained practical experience creating database structures, establishing relationships between tables, querying related information, manipulating records, and analyzing structured data.

The project also helped me understand how database design affects the way information can be retrieved and analyzed.

## Future Improvements

Potential improvements to this project include:

* Adding additional data validation
* Creating more advanced SQL queries
* Adding database indexes
* Connecting the database to a Python application
* Automating data analysis with Python
* Creating visualizations from query results
