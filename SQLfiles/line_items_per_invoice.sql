--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
Select il.InvoiceId, Count(il.InvoiceLineId) as 'Items in Invoice'
FROM InvoiceLine il
group by il.InvoiceId;
