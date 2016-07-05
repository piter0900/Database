


CREATE PROCEDURE transfer_funds(IN fromProject INT, IN toProject INT, IN amount DOUBLE(10,2), OUT errorCode INT)
BEGIN

 
 declare temp int default null;  
 
 select funds into temp from Project where project.projId=fromProject;
 temp = temp - amount; 
 if(temp < 0) then 
	set errorCode = -2; 
 if(//project doesnt exit) then 
	set errorCode = -1; 
 
 end if; 
 
 UPDATE Project.funds;  
 SET Project.funds = project.funds - temp where project.projId = fromProject; 
 SET Project.funds = project.funds + temp where project.projId = toProject; 
 
	/*(SELECT Employee.salary FROM Employee where Employee.empID = inEmpID)*/
 
END
$
DELIMITER ;

