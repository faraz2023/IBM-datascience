SELECT book_id, title from BOOKS
	where book_id = 'B1';
    
    
# now with string patters

# authors with name starting with R
SELECT book_id, title from BOOKS
	where author like 'R%';


#where page numbers is between 290 and 300 [inclusive]
SELECT book_id, title from BOOKS
	where pages between 290 and 300;
SELECT book_id, title from BOOKS
	where pages >= 290 AND pages <= 300;
    

SELECT book_id, title from BOOKS
	where country IN ('CA', 'CH', 'US');
SELECT book_id, title from BOOKS
	where country='CA' or country='CH' or country='US';
    


