-- Method 1
SELECT department, employee, salary
FROM
(SELECT d.Name AS Department,e.Name AS Employee, salary, dense_rank () OVER (PARTITION BY departmentid ORDER BY salary DESC) AS r
FROM employee e
JOIN department d
ON e.departmentid  = d.id) c
WHERE r<=3

-- Method 2
SELECT d.Name AS Department,e.Name AS Employee, salary
FROM employee e
JOIN department d
ON e.departmentid  = d.id
WHERE (SELECT COUNT(distinct salary) FROM employee WHERE departmentID = e.departmentID and salary > e.salary) < 3

