alter table Employee engine=INNODB;
set autocommit=0;
SELECT salary,empID from Employee where empID = 66;
START TRANSACTION;
UPDATE Employee SET salary = salary + 100000 where empID = 66;
SELECT salary,empID from Employee where empID = 66;
ROLLBACK;
SELECT salary,empID from Employee where empID = 66;

SELECT salary,empID from Employee where empID = 66;
START TRANSACTION;
UPDATE Employee SET salary = salary + 100000 where empID = 66;
SELECT salary,empID from Employee where empID = 66;
COMMIT;
SELECT salary,empID from Employee where empID = 66;