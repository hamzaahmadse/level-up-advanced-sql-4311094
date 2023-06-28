-- Summarize sales per year using CTE
with yearly_sales_amount_cte as
	(select year(soldDate) as soldYear, salesAmount
	from sales
    )
select soldYear, sum(salesAmount)
from yearly_sales_amount_cte group by 1 order by 1;