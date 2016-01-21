SELECT
  Employee.FirstName AS "Sales Agent First Name",
  Employee.LastName AS "Sales Agent Last Name",
  MAX(SQ.YearlyTotal) AS "Yearly Total",
  SQ.InvoiceYear
FROM(SELECT
      ROUND(SUM(I.Total),2) AS "YearlyTotal",
      I.InvoiceDate,
      C.CustomerId,
      C.SupportRepId,
      SUBSTR(I.InvoiceDate,1,4) AS "InvoiceYear"
    FROM Customer AS C JOIN Invoice as I ON I.CustomerId == C.CustomerId GROUP BY SUBSTR(I.InvoiceDate,1,4), C.SupportRepId) AS SQ
JOIN Employee ON SQ.SupportRepId == Employee.EmployeeId
WHERE InvoiceYear =="2010"
