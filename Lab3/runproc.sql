select empID, salary from Employee where empID = 45;
CALL increase_salary_proc(4500,125, @errorcode);
select @errorcode;
select empID, salary from Employee where empID = 45;