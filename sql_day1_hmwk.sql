--Question 1
--How many actors are there with the last name 'Wahlberg'?
--Answer 2

select first_name, last_name
from actor
where last_name = 'Wahlberg';

--Question 2
--How many payments were made between $3.99 and $5.99?
--Answer 4,764

select count(amount)
from payment
where amount between 3.99 and 5.99;

--Question 3
--What film the store have the most of?
--Answer film_id = 200, count = 9

select film_id, count(film_id)
from inventory
group by film_id
order by count desc;

--Question 4
--How many customers have the last name "William"?
--Answer = 0

select count(last_name)
from customer 
where last_name = 'William'; 

--Question 5
--What store employee (get the id) sold the most rentals?
--Answer staff_id = 1, count = 8,040.

select staff_id, count(staff_id)
from rental
group by staff_id
order by staff_id desc;

--Question 6
--How many different district names are there
--Answer 378

select count(distinct district)
from address;

--Question 7
--What film has the most actors in it? (use film_actor table and get film_id)?
--film_id = 508, count = 16
select count(actor_id), film_id
from film_actor
group by film_id
order by count desc;

--Question 8
--From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
--Answer = 13
select count(last_name)
from customer
where store_id = 1 and last_name like '%es';

--Question 9
--How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430?
--(use group by and having > 250)
--Answer 3

select count(customer_id), amount
from payment
where customer_id > 380 and customer_id < 430
group by amount
having COUNT(customer_id) > 250;

--Question 10
--Within the film table, how many raiting categories are there, And what rating has the most movies total?
--Answer 5 different ratings, PG-13 had the most movies.

select count(film_id), rating
from film
group by rating;