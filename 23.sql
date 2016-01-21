SELECT BillingCountry,ROUND(SUM(Total),2) AS TotalSpend
FROM Invoice
  GROUP BY BillingCountry
  ORDER BY TotalSpend DESC
