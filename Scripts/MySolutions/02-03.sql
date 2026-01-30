SELECT e.firstname, e.lastname, e.employeeid, count(*) as NumOfCarsSold
FROM employee AS e
INNER JOIN sales s ON e.employeeid=s.employeeid
WHERE soldDate>='2023-01-01'
GROUP BY e.employeeid
HAVING count(*)>5
ORDER BY NumOfCarsSold DESC;