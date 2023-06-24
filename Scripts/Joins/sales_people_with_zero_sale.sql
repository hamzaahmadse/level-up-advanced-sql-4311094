select e.employeeId, e.firstName, e.lastName, e.title
FROM employee e
LEFT JOIN sales s
  on s.employeeId = e.employeeId
WHERE
  e.title = 'Sales Person'
  AND s.salesId is NULL;