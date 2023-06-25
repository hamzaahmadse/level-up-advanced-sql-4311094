-- The issue due to storage issue there might be a need to remove
-- sales records or customer records but we have to list all the records
-- of these two tables
-- The plan is to first fetch all matching rows
-- Then fetch with left join and right join and get a union of ALL
SELECT cus.firstName, cus.lastName, cus.email, sl.salesAmount, sl.soldDate
FROM customer cus
INNER JOIN sales sl
  ON cus.customerId = sl.customerId
UNION
SELECT cus.firstName, cus.lastName, cus.email, sl.salesAmount, sl.soldDate
FROM customer cus
LEFT JOIN sales sl
  ON cus.customerId = sl.customerId
WHERE sl.salesId is NULL
UNION
SELECT cus.firstName, cus.lastName, cus.email, sl.salesAmount, sl.soldDate
FROM customer cus
RIGHT JOIN sales sl
  ON cus.customerId = sl.customerId
WHERE cus.customerId is NULL;