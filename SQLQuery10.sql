--QUERY 1 
--Select all the data of employees that work in department 37.

SELECT * FROM EMPLOYEES WHERE DEPARTMENT = 37

--************




--QUERY 2 
--Select all the data of employees that work in department 14 or department 22.

SELECT * FROM EMPLOYEES WHERE DEPARTMENT = 14 

--*************




--QUERY 3 
--Select all the data of employees whose last name contains "S".

SELECT * FROM EMPLOYEES WHERE LASTNAME LIKE '%S%'

--*************



--QUERY 4 
--Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11.

INSERT INTO DEPARMENTS(Code,Name,Budget )VALUES(11,'Quality Assurance',40000);

--*************



--QUERY 5 
--Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.
INSERT INTO EMPLOYEES (SSN, Name, LastName, Department) VALUES ('847219811','Mary','Moore',11)

--************


--QUERY 6
--Reduce the budget 12% of departments which ids greate than 15.

UPDATE Departments
SET Departments.Budget=Departments.Budget-Departments.Budget*12/100
WHERE Departments.Code>15;

--************



--QUERY 7 
--Delete from the table all employees in the IT department (code 14).

DELETE FROM Employees WHERE Department =14

--************



--QUERY 8 
--Delete from the table all employees who work in departments with a budget greater than or equal to $50,000.

DELETE FROM Employees WHERE Department in (SELECT Code FROM Departments WHERE Budget >=50000);

--************


--QUERY 9 
--Delete from the table all employees.
DELETE FROM Employees




