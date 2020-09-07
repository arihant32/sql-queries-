/*

Customers Who Never Order

Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.

Table: Customers.

+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Table: Orders.

+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Using the above tables as example, return the following:

+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+

*/

# Write your MySQL query statement below


SELECT name AS Customers FROM Customers
WHERE id NOT IN (SELECT CustomerId FROM Orders);


# or did a left join to find the null values and then filtered to them.

SELECT cus.name AS Customers FROM Customers AS cus LEFT OUTER JOIN Orders AS ord 
ON cus.id = ord.CustomerId
WHERE ord.CustomerId IS NULL;



