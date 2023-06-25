-- Challenge
-- Produce a report that lists the least and most
-- Expensive car sold by each employee this year

SELECT emp.employeeId, emp.firstName, emp.lastName, MAX(sls.salesAmount) as MostExpensive, MIN(sls.salesAmount) as LeasExpensive
FROM employee emp
INNER JOIN sales sls
	ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= date('now', 'start of year')
GROUP BY 1, 2, 3;