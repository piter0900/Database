USE y22lai;

/*select * from Employee;*/

DROP PROCEDURE IF EXISTS increase_salary_proc;


DELIMITER $


CREATE PROCEDURE increase_salary_proc(IN inEmpID INT, IN inPercentage DOUBLE, OUT errorCode INT)
BEGIN

 
 declare temp int default null;  
 
 select MAX(empID) into temp from Employee where employee.Empid=inEmpID; 
 
 if (temp is null) then 
	set errorCode = -2;
 elseif (inPercentage > 100 or inPercentage < 0 ) then
	set errorCode = -1;
 else 
	set errorCode = 0;
 end if;
 
 UPDATE Employee 
 SET Employee.salary = (inPercentage/100 + 1)*Employee.salary
	/*(SELECT Employee.salary FROM Employee where Employee.empID = inEmpID)*/
 WHERE Employee.empID = inEmpID; 
 
END
$
DELIMITER ;



call increase_salary_proc(44, 12.50, @error );
select @error;
select * from Employee;

