-- GET list of employees who have made more than five
-- sales this year
SELECT emp.employeeId, emp.firstName, emp.lastName, count(sls.salesId) as NumberOfCarsSold
FROM employee emp
INNER JOIN sales sls
	ON emp.employeeId = sls.employeeId
WHERE sls.soldDate >= date('now', 'start of year')
GROUP BY 1, 2, 3
HAVING count(sls.salesId) > 5
ORDER BY 4 desc;