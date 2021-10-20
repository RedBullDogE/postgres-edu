

-- SUBQUERIES
---- General Subqueries
SELECT
	film_id,
	title,
	rental_duration
FROM
	film
WHERE 
	rental_duration > (
		SELECT 
			AVG(rental_duration)
		FROM 
			film
	);

---- EXISTS
SELECT 
	first_name || ' ' || last_name AS customer_name
FROM customer c
WHERE
	EXISTS(
		SELECT TRUE FROM rental r
		WHERE c.customer_id = r.customer_id AND return_date > '2005-09-01'
	);
---- ANY / ALL


-- Modifying Data
---- INSERT

---- UPDATE

---- DELETE

---- TRUNCATE TABLE
