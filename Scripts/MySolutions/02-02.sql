SELECT e.firstname, e.lastname, e.employeeid, min(s.salesAmount) AS LeastExpensive, max(s.salesamount) AS MostExpensive
FROM employee e
INNER JOIN sales AS s ON s.employeeid=e.employeeid
WHERE s.soldDate>='2023-01-01'
GROUP BY e.employeeid

ORDER BY e.firstname, e.lastname
