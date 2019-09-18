---q1---
SELECT F_NAME, L_NAME from EMPLOYEES
		where ADDRESS like '%Elgin,IL%';
		
---q2---
SELECT F_NAME, L_NAME from EMPLOYEES
	where B_DATE like '197%';
	
--q3---
SELECT F_NAME, L_NAME from EMPLOYEES
	where (SALARY between  60000 and 70000) and DEP_ID='5';
	
---q4a---
SELECT F_NAME, L_NAME from EMPLOYEES
		order by DEP_ID;
---q4b---
SELECT F_NAME, L_NAME from EMPLOYEES
		order by DEP_ID desc,
		L_NAME desc;
		
---q5a---
SELECT DEP_ID, COUNT(*) from EMPLOYEES
group by DEP_ID;
---q5b---
SELECT DEP_ID, COUNT(1), AVG(SALARY) from EMPLOYEES
	group by DEP_ID;
---q5c---
SELECT DEP_ID, 
COUNT(1) as "NUM_EMPLOYEE" ,
AVG(SALARY) as "AVERAGE_SALARY"
from EMPLOYEES
	group by DEP_ID;
---q5d---
SELECT DEP_ID, 
COUNT(1) as "NUM_EMPLOYEE" ,
AVG(SALARY) as "AVERAGE_SALARY"
from EMPLOYEES
	group by DEP_ID
	order by AVERAGE_SALARY;
---q6e---
SELECT DEP_ID, 
COUNT(1) as "NUM_EMPLOYEE" ,
AVG(SALARY) as "AVERAGE_SALARY"
from EMPLOYEES
	group by DEP_ID
	having count(1) < 4
	order by AVERAGE_SALARY;
-----