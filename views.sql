--VIEWS
--Check which Customers have had a service completed 
--DROP MATERIALIZED VIEW customer_services 

CREATE MATERIALIZED VIEW customer_services AS
SELECT
    CONCAT_WS(' ', customer_fname, customer_mname, customer_lname) AS "Customer Name(s)",
    CONCAT(address_one, COALESCE(', ', NULLIF(address_two, '')), '', city_name, ' ', address_postcode) AS "Customer Address",
    CONCAT_WS(' : ', customer_email1, customer_tel1) AS "Contact Detail(s)",
    boat_mic AS "Boat Identifer",
    manufacture_model AS "Boat Model",
    CAST(service_cost AS MONEY) AS "Service Total",
    history_date AS "Date Completed"
FROM
    city
    JOIN "address" USING (city_id)
    JOIN customer USING (address_id)
    JOIN boat USING (customer_id)
    JOIN manufacture USING (manufacture_id)
    JOIN "service" USING (boat_id)
    JOIN history USING (service_id)
WHERE
    history_type = 'COMPLETE'
    AND history_date BETWEEN '2022-01-01' AND '2022-06-01'
ORDER BY
    service_cost DESC;
    
-- Yard Generated Revenue
-- DROP MATERIALIZED VIEW yard_generated 

CREATE MATERIALIZED VIEW yard_generated AS
SELECT
    UPPER(y.yard_name) AS "Yard Name",
    CONCAT(CONCAT(REPLACE(LOWER(y.yard_name), ' ', ''), '@solent.com'), ' : ', y.yard_tel) AS "Yard Contact Detail(s)",
    (
        SELECT CONCAT(s.staff_fname, ' ', s.staff_lname, ' : ', LOWER(CONCAT(s.staff_fname, '@solent.com')))
        FROM staff_yard sy
        JOIN staff s ON sy.staff_id = s.staff_id
        JOIN staff_role sr ON s.staff_id = sr.staff_id
        JOIN "role" r ON sr.role_id = r.role_id
        WHERE r.role_name = 'MANAGER' AND sy.yard_id = y.yard_id
    ) AS "Manager",
    CONCAT(a.address_one, COALESCE(', ', NULLIF(a.address_two, '')), '', c.city_name, ' ', a.address_postcode) AS "Yard Address",
    COUNT(DISTINCT yf.facilities_id) AS "Facilities",
    COUNT(DISTINCT sy.staff_id) AS "Total of Staff",
    CAST(SUM(DISTINCT service_revenue.service_cost) AS MONEY) AS "Total Revenue"
FROM
    yard y
    JOIN "address" a ON y.address_id = a.address_id
    JOIN city c ON a.city_id = c.city_id
    JOIN yard_facilities yf ON y.yard_id = yf.yard_id
    JOIN staff_yard sy ON y.yard_id = sy.yard_id
    JOIN staff_service ss ON sy.staff_id = ss.staff_id
    JOIN staff s ON sy.staff_id = s.staff_id
    JOIN (
        SELECT s.yard_id, s.service_cost
        FROM "service" s
    ) service_revenue ON y.yard_id = service_revenue.yard_id
GROUP BY
    y.yard_id,
    "Yard Name",
    "Yard Contact Detail(s)",
    "Yard Address"
ORDER BY
    "Yard Name";
    
--Check Staff who are working on services
--Staff should ONLY be assigned during the ONGOING stage 
--DROP MATERIALIZED VIEW staff_services_ongoing 
    
CREATE MATERIALIZED VIEW staff_services_ongoing AS
SELECT
    service_id AS "Service Identifer",
    service_type AS "Service Type",
    boat_mic AS "Boat Identifer",
    STRING_AGG(staff_fname || ' ' || staff_mname || ' ' || staff_lname, ', ' ORDER BY staff_fname, staff_lname) AS "Staff Tasked on Repair"
FROM
    boat
    JOIN "service" USING (boat_id)
    JOIN history USING (service_id)
    JOIN staff_service USING (service_id)
    JOIN staff USING (staff_id)
WHERE
    history_type = 'ONGOING'
GROUP BY
    "Service Identifer",
    "Boat Identifer";

-- Cities Average Spending
-- DROP MATERIALIZED VIEW customers_location

CREATE MATERIALIZED VIEW customers_location AS
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

-- Yards staff are assigned to, and there roles
-- DROP MATERIALIZED VIEW 

CREATE MATERIALIZED VIEW staff_work_yard AS
SELECT 
    CONCAT_WS(' ', staff_fname, staff_mname, staff_lname) AS "Staff Name(s)",
    LOWER(CONCAT(staff_fname, '@solent.com')) AS "Staff Email", 
    STRING_AGG(DISTINCT yard_name, ', ') AS "Yard Assigned",
    STRING_AGG(role_name, ', ') AS "Responsibilitie(s)"
FROM 
    staff
    JOIN staff_role USING (staff_id)
    JOIN "role" USING (role_id)
    JOIN staff_yard USING (staff_id)
    JOIN yard USING (yard_id)
GROUP BY 
    "Staff Name(s)",
    "Staff Email";

-- Refresh the View(s)
REFRESH MATERIALIZED VIEW customer_services;
REFRESH MATERIALIZED VIEW yard_generated;
REFRESH MATERIALIZED VIEW staff_services_ongoing;
REFRESH MATERIALIZED VIEW customers_location;
REFRESH MATERIALIZED VIEW staff_work_yard;