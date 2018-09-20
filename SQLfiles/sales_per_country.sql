--Provide a query that shows the total sales per country.

SELECT i.BillingCountry, sum(i.Total)
FROM Invoice i
group by i.BillingCountry;
