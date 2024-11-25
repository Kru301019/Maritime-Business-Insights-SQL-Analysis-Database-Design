--CREATES 

DROP DATABASE IF EXISTS grp21_solent; -- RESET DATABASE

CREATE DATABASE grp21_solent; -- CREATE \c grp21_solent;

-- ENUMS

CREATE TYPE FUEL AS ENUM(
    'PETROL',
    'DIESEL',
    'HYBRID'
);

CREATE TYPE "DESC" AS ENUM(
    'SERVICE',
    'CHECKUP',
    'REPAIR',
    'OTHER'
);

CREATE TYPE HISTORY_TYPE AS ENUM(
    'BOOKED',
    'ONGOING',
    'COMPLETE'
);

CREATE TYPE CATEGORY_TYPE AS ENUM(
    'MINOR',
    'SERIOUS',
    'DANGEROUS'
);

-- TABLES
-- THERE ARE 18 TABLES ENSURE THIS IS CORRECT

-- CREATE THE TABLES, PK, FKS, CONSTRAINTS

CREATE TABLE country(
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(54) UNIQUE NOT NULL
);

CREATE TABLE city(
    city_id SERIAL PRIMARY KEY,
    country_id INT NOT NULL,
    city_name VARCHAR(34) NOT NULL, -- UNIQUE SHOULD NOT BE HERE AMERICA AND UK SHARE CITIES
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE "address"(
    address_id SERIAL PRIMARY KEY,
    city_id INT NOT NULL,
    address_postcode VARCHAR(8) NOT NULL,
    address_one VARCHAR(50) NOT NULL,
    address_two VARCHAR(50),
    FOREIGN KEY (city_id) REFERENCES city(city_id)
);

CREATE TABLE facilities(
    facilities_id SERIAL PRIMARY KEY,
    facilities_name VARCHAR(24)
);

CREATE TABLE yard(
    yard_id SERIAL PRIMARY KEY,
    address_id INT NOT NULL,
    yard_size INT NOT NULL, 
    yard_name VARCHAR(64) NOT NULL,
    yard_tel VARCHAR(20) NOT NULL,
    FOREIGN KEY (address_id) REFERENCES "address"(address_id)
);

CREATE TABLE yard_facilities(
    yard_id INT NOT NULL,
    facilities_id INT NOT NULL,
    PRIMARY KEY (yard_id, facilities_id),
    FOREIGN KEY (yard_id) REFERENCES yard(yard_id),
    FOREIGN KEY (facilities_id) REFERENCES facilities(facilities_id)
);


CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    address_id INT NOT NULL,
    customer_fname VARCHAR(64) NOT NULL,
    customer_mname VARCHAR(64),
    customer_lname VARCHAR(64) NOT NULL,
    customer_tel1 VARCHAR(20) UNIQUE NOT NULL,
    customer_tel2 VARCHAR(20),
    customer_email1 VARCHAR(50) UNIQUE NOT NULL,
    customer_email2 VARCHAR(50),
    customer_priv BOOLEAN DEFAULT 'F',
    customer_represent_company VARCHAR(64), 
    FOREIGN KEY (address_id) REFERENCES "address"(address_id)
);

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    address_id INT NOT NULL,
    staff_fname VARCHAR(64) NOT NULL,
    staff_mname VARCHAR(64),
    staff_lname VARCHAR(64) NOT NULL,
    staff_tel VARCHAR(20) UNIQUE NOT NULL,
    staff_email VARCHAR(50) UNIQUE NOT NULL,
    FOREIGN KEY (address_id) REFERENCES "address"(address_id)
);

CREATE TABLE "role"( 
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(32) NOT NULL
);

CREATE TABLE staff_role(
    staff_id INT NOT NULL,
    role_id INT NOT NULL,
    PRIMARY KEY (staff_id, role_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (role_id) REFERENCES "role"(role_id)
);

CREATE TABLE staff_yard(
    staff_id INT NOT NULL,
    yard_id INT NOT NULL,
    PRIMARY KEY (staff_id, yard_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (yard_id) REFERENCES yard(yard_id)
);

CREATE TABLE manufacture(
    manufacture_id SERIAL PRIMARY KEY,
    manufacture_name VARCHAR(128) UNIQUE NOT NULL,
    manufacture_model VARCHAR(64) NOT NULL,
    manufacture_height DECIMAL(10, 2) NOT NULL,
    manufacture_length DECIMAL(10, 2) NOT NULL,
    manufacture_width DECIMAL(10, 2) NOT NULL,
    manufacture_fuel FUEL NOT NULL,
    manufacture_engine VARCHAR(32) NOT NULL,
    manufacture_bhp SMALLINT NOT NULL,
    manufacture_hull VARCHAR(64) NOT NULL,
    manufacture_capacity SMALLINT NOT NULL,
    manufacture_email VARCHAR(64) UNIQUE NOT NULL,
    manufacture_phone VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE boat(
    boat_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL,
    manufacture_id INT NOT NULL,
    country_id INT NOT NULL,
    boat_mic VARCHAR(50) UNIQUE NOT NULL,
    boat_built DATE NOT NULL,
    boat_oem BOOLEAN NOT NULL,
    boat_registration DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (manufacture_id) REFERENCES manufacture(manufacture_id),
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE "service"(
    service_id SERIAL PRIMARY KEY,
    boat_id INT NOT NULL,
    yard_id INT NOT NULL,
    service_cost DECIMAL(10, 2),
    service_type "DESC" NOT NULL,
    service_note VARCHAR(254),
    FOREIGN KEY (boat_id) REFERENCES boat(boat_id),
    FOREIGN KEY (yard_id) REFERENCES yard(yard_id)
);

CREATE TABLE staff_service(
    staff_id INT NOT NULL,
    service_id INT NOT NULL,
    PRIMARY KEY (staff_id, service_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (service_id) REFERENCES "service"(service_id)
);

CREATE TABLE fault(
    fault_id SERIAL PRIMARY KEY,
    fault_cat CATEGORY_TYPE NOT NULL,
    fault_name VARCHAR(64)
);

CREATE TABLE service_fault(
    service_id INT NOT NULL,
    fault_id INT NOT NULL,
    PRIMARY KEY (service_id, fault_id),
    FOREIGN KEY (service_id) REFERENCES "service"(service_id),
    FOREIGN KEY (fault_id) REFERENCES fault(fault_id)
);

CREATE TABLE history(
    history_id SERIAL PRIMARY KEY,
    service_id INT NOT NULL,
    history_type HISTORY_TYPE NOT NULL,
    history_date DATE NOT NULL,
    FOREIGN KEY (service_id) REFERENCES "service"(service_id)
);

-- Currency
-- SET lc_monetary = 'en_GB'; does not work on VM

-- Indexes
CREATE INDEX address_postcode_idx ON "address" (address_postcode);
CREATE INDEX country_name_idx ON country (country_name);
CREATE INDEX city_name_idx ON city (city_name);
CREATE INDEX customer_id_idx ON boat (customer_id);
CREATE INDEX boat_mic_idx ON boat (boat_mic);
CREATE INDEX service_boat_id_idx ON "service" (boat_id);
CREATE INDEX service_type_idx ON "service" (service_type);
CREATE INDEX yard_name_idx ON yard (yard_name);
CREATE INDEX customer_tel_idx ON customer (customer_tel1);
CREATE INDEX customer_email_idx ON customer (customer_email1);
CREATE INDEX customer_represent_company_idx ON customer (customer_represent_company);
CREATE INDEX staff_tel_idx ON staff (staff_tel);
CREATE INDEX staff_email_idx ON staff (staff_email);
CREATE INDEX history_type_idx ON history (history_type) WHERE history_type = 'COMPLETE';
CREATE INDEX manufacture_name_idx ON manufacture (manufacture_name);
CREATE INDEX manufacture_email_idx ON manufacture (manufacture_email);
CREATE INDEX manufacture_phone_idx ON manufacture (manufacture_phone);


-- \d
-- \d