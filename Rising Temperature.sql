/*

https://leetcode.com/problems/rising-temperature/


SQL Schema
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the primary key for this table.
This table contains information about the temperature in a certain day.
 

Write an SQL query to find all dates' id with higher temperature compared to its previous dates (yesterday).

Return the result table in any order.

The query result format is in the following example:

Weather
+----+------------+-------------+
| id | recordDate | Temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+

Result table:
+----+
| id |
+----+
| 2  |
| 4  |
+----+
In 2015-01-02, temperature was higher than the previous day (10 -> 25).
In 2015-01-04, temperature was higher than the previous day (30 -> 20).

*


# Write your MySQL query statement below

SELECT wt1.id FROM Weather wt1, Weather wt2
WHERE wt1.temperature > wt2.temperature AND TO_DAYS(wt1.recordDate)-TO_DAYS(wt2.recordDate) = 1;

# or

SELECT w2.id AS Id FROM Weather AS w1 JOIN Weather AS w2 
ON w1.recordDate = subdate(w2.recordDate,1) 
WHERE w2.temperature > w1.temperature;

# or

SELECT w2.id AS Id FROM Weather AS w1 JOIN Weather AS w2 
ON  DATEDIFF(w2.recordDate, w1.recordDate) = 1
WHERE w2.temperature > w1.temperature;



