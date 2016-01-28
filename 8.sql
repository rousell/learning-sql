SELECT E.FirstName||" "||E.LastName AS 'Sales Rep Name',SQ.FirstName||" "||SQ.LastName AS 'Customer Name',SQ.Country AS 'Country',ROUND(SUM(SQ.Total),2) AS 'Invoice Total'
FROM (SELECT * FROM Customer LEFT JOIN Invoice ON Invoice.CustomerId == Customer.CustomerId) AS SQ
LEFT JOIN Employee as E ON E.EmployeeId == SQ.SupportRepId
  GROUP BY SQ.CustomerId
