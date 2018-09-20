--Provide a query that shows the count of customers assigned to each sales agent.
SELECT e.FirstName, count(c.CustomerId) as 'Number of Customers'
from Employee e
join Customer c on e.EmployeeId = c.SupportRepId
group by e.EmployeeId;
