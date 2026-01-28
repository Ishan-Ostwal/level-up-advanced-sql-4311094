SELECT e.employeeId,e.firstName,e.lastName,count(*) as NumOfCarsSold
FROM employee AS e
INNER JOIN sales AS s
ON e.employeeId=s.employeeId
GROUP BY e.employeeid
ORDER BY numofcarssold DESC, e.firstName
