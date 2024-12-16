#Replace Employee ID With The Unique Identifier problem
select ifnull(EmployeeUNI.unique_id,NULL) as unique_id , Employees.name From Employees left join EmployeeUNI
ON Employees.id = EmployeeUNI.id
Group by Employees.name
Order by Employees.name desc , EmployeeUNI.unique_id
