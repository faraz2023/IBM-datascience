# select COLUMN1, COLUMN2, ... from TABLE1 ;

select ID, NAME from COUNTRY ;
select * from COUNTRY ;
select * from COUNTRY where ID < 5 ;
select * from COUNTRY where CCODE = 'CA';

select COUNT(COUNTARY) from MEDALS
	where COUNTRY='CANADA';
    
select DISTINCT COUNTRY from MEDALS
	where MEDALTYPE='GOLD';
    

select * from MEDALS LIMIT 10;
select * from MEDALS
	where year=2018 LIMIT 5;
    
    

    