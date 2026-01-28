SELECT e.firstName,e.lastName, mng.firstname, mng.lastname
FROM employee e
 join employee mng on e.managerid=mng.employeeid 