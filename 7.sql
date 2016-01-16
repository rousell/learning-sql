SELECT E.FirstName,E.LastName,SQ.* FROM
(SELECT * FROM Customer LEFT JOIN Invoice ON Invoice.CustomerId == Customer.CustomerId) AS SQ
LEFT JOIN Employee as E ON E.EmployeeId == SQ.SupportRepId
