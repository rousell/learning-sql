SELECT E.FirstName,E.LastName,COUNT(C.CustomerId) AS "Customer Count"
FROM Customer AS C JOIN Employee AS E ON C.SupportRepId == E.EmployeeId
  GROUP BY SupportRepId
