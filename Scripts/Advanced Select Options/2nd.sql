-- Display number of sales for each employee by month
-- for year 2021

with monthly_sales_amount_per_employee_cte as
	(select sls.employeeId, e.firstName, e.lastName, month(sls.soldDate) as saleMonth, sls.salesAmount
	from sales sls 
	inner join employee e
		on e.employeeId = sls.employeeId
	)
select employeeId, firstName, lastName, saleMonth, sum(salesAmount) 
from monthly_sales_amount_per_employee_cte group by 1, 3 order by 1, 3;