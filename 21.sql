SELECT
  Employee.FirstName AS "Sales Agent First Name",
  Employee.LastName AS "Sales Agent Last Name",
  MAX(SQ.OverallTotal) AS "Overall Total"
FROM(SELECT
      ROUND(SUM(I.Total),2) AS "OverallTotal",
      I.InvoiceDate,
      C.CustomerId,
      C.SupportRepId
    FROM Customer AS C JOIN Invoice as I ON I.CustomerId == C.CustomerId GROUP BY C.SupportRepId) AS SQ
JOIN Employee ON SQ.SupportRepId == Employee.EmployeeId
