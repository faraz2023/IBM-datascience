## you cannot evaluate aggregate functions 
## such as AVG() in WHERE caluse,
##therefore:
##	Use a sub-select expression
select EMPI_ID, F_NAME, L_NAME, SALARY
	from EMPLOYEEE
	where SALARY >
		(SELECT AVG(SALARY) from EMPLOYEE);
        
----

## YOU can substitute column name with a sub-quer. Called
##	Coloumn Expression

##this does NOT work!!!!
select EMP_ID, AVGE(SALARY) as AVG_SALARY
	from EMPLOYEE;
    
#INSTEAD:
SELECT EMP_ID, SALARY, 
	(SELECT AVG(SALARY) from EMPLOYEE)
		as AVG_SALARY
	from EMPLOYEE;
    
---

## Substitute the TABLE name with a sub-query
##	Derived Tables or Table Expression

select * from 
	(select EMP_ID, F_NAME, L_NAME, DEP_ID
		from EMPLOYEE) as EMP4ALL;
    
