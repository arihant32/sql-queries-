/*


Table: Department

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| revenue       | int     |
| month         | varchar |
+---------------+---------+
(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
 

Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

The query result format is in the following example:

Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+

Result table:
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+

Note that the result table has 13 columns (1 for the department id + 12 for the months).

*/


# Write your MySQL query statement below

SELECT Department.id, 
SUM(CASE WHEN Department.month  ='Jan' THEN Department.revenue END)  AS Jan_Revenue,
SUM(CASE WHEN Department.month  ='Feb' THEN Department.revenue  END) AS Feb_Revenue,
SUM(CASE WHEN Department.month  ='Mar' THEN Department.revenue  END) AS Mar_Revenue,
SUM(CASE WHEN Department.month  ='Apr' THEN Department.revenue  END) AS Apr_Revenue,
SUM(CASE WHEN Department.month  ='May' THEN Department.revenue  END) AS May_Revenue,
SUM(CASE WHEN Department.month  ='Jun' THEN Department.revenue  END) AS Jun_Revenue,
SUM(CASE WHEN Department.month  ='Jul' THEN Department.revenue  END) AS Jul_Revenue,
SUM(CASE WHEN Department.month  ='Aug' THEN Department.revenue  END) AS Aug_Revenue,
SUM(CASE WHEN Department.month  ='Sep' THEN Department.revenue  END) AS Sep_Revenue,
SUM(CASE WHEN Department.month  ='Oct' THEN Department.revenue  END) AS Oct_Revenue,
SUM(CASE WHEN Department.month  ='Nov' THEN Department.revenue  END) AS Nov_Revenue,
Sum(CASE WHEN Department.month  ='Dec' THEN Department.revenue  END) AS Dec_Revenue 
From Department
GROUP BY Department.id;
