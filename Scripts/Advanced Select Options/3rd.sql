
select emp.firstName, emp.lastName,
	case when month(sls.soldDate) = '1' then salesAmount end as januarySale,
    case when month(sls.soldDate) = '2' then salesAmount end as febuarySale,
    case when month(sls.soldDate) = '3' then salesAmount end as marchSale,
    case when month(sls.soldDate) = '4' then salesAmount end as aprilSale,
    case when month(sls.soldDate) = '5' then salesAmount end as maySale,
    case when month(sls.soldDate) = '6' then salesAmount end as juneSale,
    case when month(sls.soldDate) = '7' then salesAmount end as julySale,
    case when month(sls.soldDate) = '8' then salesAmount end as augustSale,
    case when month(sls.soldDate) = '9' then salesAmount end as septemberSale,
    case when month(sls.soldDate) = '10' then salesAmount end as octuberSale,
    case when month(sls.soldDate) = '11' then salesAmount end as novemberSale,
    case when month(sls.soldDate) = '12' then salesAmount end as decemberSale
from sales sls
inner join employee emp
	on emp.employeeId = sls.employeeId
where sls.soldDate >= '2021-01-01' and sls.soldDate < '2022-01-01'
group by 1, 2;