select 
  e.firstName, e.lastName,
  m.firstName as managerFirstName,
  m.lastName as managerLastName
from 
  employee e 
join 
  employee m on (e.employeeId = m.managerId);