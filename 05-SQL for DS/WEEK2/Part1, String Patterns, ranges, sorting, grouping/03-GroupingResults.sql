select country from author order by 1;


# eliminating duplicates
select distinct(country) from author
	where author in ('R%', 'B%');
    
# "group by" clause

select country, count(country)
	as count from author group by country;
    
    
#"having" clause only workds with "group by" clause
select country, count(country)
	as count from author group by country
    having count(country) > 4;