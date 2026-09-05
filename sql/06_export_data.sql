-- Export Orders table to CSV

SELECT *
FROM Orders
INTO OUTFILE '/home/codio/workspace/NewOrders.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';
