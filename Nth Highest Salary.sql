# Method 1
SELECT MAX(salary)
FROM employee e1
WHERE N-1 = 
  (SELECT DISTINCT(salary)
   FROM employee e2
   WHERE e2.salary > e1.salary);

# Method 2
DECLARE M INT;
SET M=N-1;

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT D,1;
