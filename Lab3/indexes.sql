CREATE INDEX workers using hash ON Employee(deptID);
CREATE INDEX deps using hash ON Department(deptID); 
EXPLAIN select deptID, deptName,location, empID,empName,job,salary from Employee natural join Department;