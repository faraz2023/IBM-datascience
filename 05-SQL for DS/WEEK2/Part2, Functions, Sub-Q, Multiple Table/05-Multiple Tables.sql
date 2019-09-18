## WAYS TO ACCESS MULTIPLE TABLES IN THE SAME QUERY:
##1. Sub-queries -> THIS FILE
##2.Implicit JOIN -> THIS FILE
##3. JOIN operators (INNER JOIN, OUTER JOIN, etc) -> later weeks

---
#1.

## TO retrieve only the emplooyee records that correspond to department in the 
## DEPARTMENTS table:

select * from EMPLOYEE
	where DEEP_ID in
		(SELECT DEPT_ID_DEP from DEPARTMENTS);
        
        
## bringing in the location factor:

select * from employee
	where dep_id in 
		(select dept_id_dep from departments
			where loc_i='L00o2');
            
#Depratment ID's of the departments that pay more than 70K in
#salary to some of their employees:

select dep_id_dep, dep_name from departments
	where dep_id_dep in
		(select dep_id from employees
			where salary >70000);

----

#2. IMPLICIT JOIN

##THis results in a full-join(Cartesian JOIN):
##a.Every row in first table is joined with 
##every row in the second table
##b.the result set will have more rows than in both tables


select * from employee, departments;
            
select * from employees, departments
	where employees.dep_id =
		departments.dep_id_dep;
            
            
##Aliasas for the above
select * from employees E, departments D
	where E.dep_id =
		D.dep_id_dep;
