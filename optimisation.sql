-- JOINS WITH USING
EXPLAIN ANALYZE
SELECT
    city_name AS "City",
    COUNT(customer_id) AS "Customer Total",
    CAST(AVG(service_cost) AS MONEY) AS "Average Cost"
FROM
    city
    JOIN "address" USING (city_id)
    JOIN customer USING (address_id)
    JOIN boat USING (customer_id)
    JOIN "service" USING (boat_id)
GROUP BY
    "City";


-- JOINS IN LONG FORMAT 
EXPLAIN ANALYZE
SELECT
    city.city_name AS "City",
    COUNT(customer.customer_id) AS "Customer Total",
    CAST(AVG(service.service_cost) AS MONEY) AS "Average Cost"
FROM city
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
JOIN boat ON customer.customer_id = boat.customer_id
JOIN service ON boat.boat_id = service.boat_id
GROUP BY city.city_name;