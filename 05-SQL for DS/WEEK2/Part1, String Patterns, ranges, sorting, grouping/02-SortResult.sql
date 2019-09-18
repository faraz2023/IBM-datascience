#sorting the result sets
#ascending, descending, column selection


SELECT book_id, title from BOOKS
	order by title; #defualt is ascending 
    
SELECT book_id, title from BOOKS
	order by title desc; # order by descending order
    
    
SELECT book_id, title, pages from BOOKS
	order by 3; # order by pages [third entery]