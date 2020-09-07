https://leetcode.com/problems/second-highest-salary/


Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+


Solution
=========


# Write your MySQL query statement below

# solution 1 :

# However, this solution will be judged as 'Wrong Answer' if there is no such second highest salary since there might be only one record in this table. To overcome this issue, we can take this as a temp table.

# select distinct Salary as SecondHighestSalary from Employee order by Salary desc limit 1 offset 1;

select (select distinct Salary from Employee order by Salary desc limit 1 offset 1) as SecondHighestSalary;


# solution 2 : 

SELECT MAX(Salary) AS SecondHighestSalary
FROM Employee 
WHERE Salary < (SELECT MAX(Salary) FROM Employee);



