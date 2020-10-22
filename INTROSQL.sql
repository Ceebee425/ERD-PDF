SELECT count(*)last_name
From actor
Where last_name = 'Wahlberg';
--Answer is 2

--How many payments were made between 3.99 and 5.99?
Select count (*)
From payment
Where amount between 3.99 and 5.99;
--Answer 5607

--What film does the store have the most of (search inventory?)
Select film_id, count(*)
From inventory
Group by film_id
Having count (*) > 1
Order by count(*) DESC
Limit 1;

Select title
From film
where film_id =350;
--Garden Island

--How many customers have the last name 'William'
Select last_name
From customer
Where last_name='William';
--0

--How many different district names are there
Select count (Distinct district)
From address;
378

--What film has the most actors in it (use film_actor table and get film_id)
Select *
From film_actor;
Select film_id, count(*) as num_actors
From film_actor
Group by film_id
Order by num_actors DESC;
Select film_id, title
From film
Where film_id = 508;
---Lamb Cicncinnatti

--From store ID1 how many customers have the last name ending in es
Select last_name, store_id
From customer
Where store_id=1 and last_name LIKE '%es';
--13

--Question 9
Select*
From payment;
Select amount, count(*)
From payment
where customer_id between 380 and 430
Group by amount
having count(*)>250;