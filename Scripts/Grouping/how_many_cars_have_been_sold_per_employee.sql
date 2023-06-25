-- Pull a report that totals the number of cars
-- sold by each employee.
SELECT emp.employeeId, emp.firstName, emp.lastName, count(sls.salesId) CarsSold
FROM employee emp
JOIN sales sls
  ON emp.employeeId = sls.employeeId
GROUP BY 1, 2, 3 order by 4 desc;