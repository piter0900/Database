/* Lab 2 -part 4 - Creating a view */

USE y22lai; 



/* Add some more rows to the Project table(needed for example below) */

INSERT INTO Project(projID, title, budget, funds) VALUES(645, 'Medical Center Construction', 10000000, 2500000);
INSERT INTO Project(projID, title, budget, funds) VALUES(623, '2013 Conference', 6500, 3000);
INSERT INTO Project(projID, title, budget, funds) VALUES(624, '2014 Conference', 7500, 7500);


view v as select deptname,location,empid,empname,job from department left join employee on employee.deptid = department.deptid;	
select * from v; 
select * from v
where deptname = "marketing"; 

create table temp select empid, projid, title from assigned join project on assigned.projID = project.projid; 
create view a as select 

/*
DROP VIEW IF EXISTS
    ProjectLowBudget;

CREATE VIEW ProjectLowBudget AS 
SELECT projID,title, budget  FROM Project WHERE budget <=500000;

select * from ProjectLowBudget;

/* Query using this view 

SELECT * FROM ProjectLowBudget WHERE title like "%Conference%";


*/








