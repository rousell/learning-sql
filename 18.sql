SELECT
  SQ.FirstName AS "Sales Agent First Name",
  SQ.LastName AS "Sales Agent Last Name",
  COUNT(Invoice.Total) AS "Total Sales"
FROM(SELECT
      E.*,
      C.CustomerId
    FROM Employee AS E JOIN Customer AS C ON E.EmployeeId == C.SupportRepId) AS SQ
JOIN Invoice ON SQ.CustomerId == Invoice.CustomerId GROUP BY SQ.EmployeeId
