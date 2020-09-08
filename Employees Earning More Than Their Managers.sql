/*

Employees Earning More Than Their Managers

The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.

+----+-------+--------+-----------+
| Id | Name  | Salary | ManagerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | NULL      |
| 4  | Max   | 90000  | NULL      |
+----+-------+--------+-----------+
Given the Employee table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.

+----------+
| Employee |
+----------+
| Joe      |
+----------+

*/


SELECT e1.Name AS Employee FROM Employee AS e1, Employee AS e2 
WHERE e1.ManagerId = e2.id AND e1.Salary > e2.Salary;





/*

Self join table looks like


Id	Name	Salary	ManagerId	Id	Name	Salary	ManagerId
1	Joe	70000	3	1	Joe	70000	3
2	Henry	80000	4	1	Joe	70000	3
3	Sam	60000		1	Joe	70000	3
4	Max	90000		1	Joe	70000	3
1	Joe	70000	3	2	Henry	80000	4
2	Henry	80000	4	2	Henry	80000	4
3	Sam	60000		2	Henry	80000	4
4	Max	90000		2	Henry	80000	4
1	Joe	70000	3	3	Sam	60000	
2	Henry	80000	4	3	Sam	60000	
3	Sam	60000		3	Sam	60000	
4	Max	90000		3	Sam	60000	
1	Joe	70000	3	4	Max	90000	
2	Henry	80000	4	4	Max	90000	
3	Sam	60000		4	Max	90000	
4	Max	90000		4	Max	90000

*/
