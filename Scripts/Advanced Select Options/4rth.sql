select * from sales where inventoryId in (
select i.inventoryId from inventory i inner join model m on m.modelId = i.modelId where m.EngineType = 'Electric');

select sls.soldDate, sls.salesAmount, i.colour, i.modelId
from sales sls 
inner join inventory i 
	on i.inventoryId = sls.inventoryId 
where i.modelId in (select modelId from model where EngineType = 'Electric');