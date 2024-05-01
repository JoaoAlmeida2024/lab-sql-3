select *
from sakila.actor;

-- How many different actors last names there is ? Answer 121

select count(distinct(last_name))
from sakila.actor;

-- In how many different languages where the films originally produced? (Use the column language_id from the film table)? answer = 1

select * 
from sakila.film;

select count(distinct(language_id))
from sakila.film;

-- How many movies were released with "PG-13" rating? answer 223

select count(*)
from sakila.film
where rating = 'PG-13';

-- Get 10 the longest movies from 2006.

select *
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- How many days has been the company operating (check DATEDIFF() function)? 266 days

SELECT datediff(max(rental_date), min(rental_date))
FROM sakila.rental;

-- Show rental info with additional columns month and weekday. Get 20.

select *
from sakila.rental;

 select *,
 date_format(CONVERT(rental_date, date), '%M' ) AS MONTH,
 date_format(CONVERT(rental_date, date), '%D' ) as day
 from sakila.rental
 order by rental_date desc
 LIMIT 20;
 
 -- Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
 
 select *,
 case 
 when weekday(rental_date) < 5 then 'workday'
 else 'weekend'
 end as day_type
 from sakila.rental;
 
 -- How many rentals were in the last month of activity? 182
 
 select count(*)
 from sakila.rental
 where year(rental_date) = 2006
 and month(rental_date) = 02;
 
 
 
 
  
 